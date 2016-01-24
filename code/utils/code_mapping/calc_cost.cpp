#include <cassert>
#include <iostream>
#include <fstream>
#include <list>
#include <map>
#include <stack>
#include <string>
#include <sstream>
#include <stdlib.h>

#include "calc_cost.h"

Node::Node(std::string name, unsigned long w, double p) { 
    this->name = name;
    weight = w; 
    probability = p;
    prev = NULL;
    next = NULL;
}

Node::~Node() {
    //print();
    // Handle the incoming back edges
    for (std::list<Edge *>::iterator ii = incomingEdges.begin(), ie = incomingEdges.end(); ii != ie;) {
	std::list<Edge *>::iterator it = ii++;
	Edge *oldEdge = *it;
	// If this node is not the only node in a loop, make its successor the target of the incoming back edge
	if(oldEdge->src != this) {
	    Edge *newEdge = new Edge(oldEdge->src, next, oldEdge->num);
	    oldEdge->src->swapOutgoingEdge(oldEdge, newEdge);
	    next->swapIncomingEdge(oldEdge, newEdge);
	}
	else {
	    // If the node is the only loop in the loop, remove the corresponding outgoing edge as well
	    eraseOutgoingEdge(oldEdge);
	}
	delete oldEdge;
    }
    // Handle the outgoing back edges
    for (std::list<Edge *>::iterator ii = outgoingEdges.begin(), ie = outgoingEdges.end(); ii != ie;) {
	std::list<Edge *>::iterator it = ii++;
	Edge *oldEdge = *it;
	// If this node is not the only node in a loop, make its predecessor the source of the outgoing back edge
	if (oldEdge->dest != this) {
	    Edge *newEdge = new Edge(prev, oldEdge->dest, oldEdge->num);
	    prev->swapOutgoingEdge(oldEdge, newEdge);
	    oldEdge->dest->swapIncomingEdge(oldEdge, newEdge);
	}
	delete oldEdge;
    }
    // Connect its predecessor to its successor
    if (prev)
	prev->setSuccessor(next);
    if (next)
	next->setPredecessor(prev);
}

Node *Node::getPredecessor() {
    return prev;
}

void Node::setPredecessor(Node *edge) {
    prev = edge;
}

Node *Node::getSuccessor() {
    return next;
}

void Node::setSuccessor(Node *edge) {
    next = edge;
}

void Node::insertIncomingEdge(Edge *edge) {
    incomingEdges.push_back(edge);
}

void Node::eraseIncomingEdge(Edge *edge) {
    for (std::list <Edge *>::iterator ii = incomingEdges.begin(), ie = incomingEdges.end(); ii != ie; ++ii) {
	if (*ii == edge) {
	    incomingEdges.erase(ii);
	    break;
	}
    }
    return;
}

void Node::swapIncomingEdge(Edge *oldEdge, Edge *newEdge) {
    eraseIncomingEdge(oldEdge);
    incomingEdges.push_back(newEdge);
}

void Node::insertOutgoingEdge(Edge *edge) {
    outgoingEdges.push_back(edge);
}

void Node::eraseOutgoingEdge(Edge *edge) {
    for (std::list <Edge *>::iterator ii = outgoingEdges.begin(), ie = outgoingEdges.end(); ii != ie; ++ii) {
	if (*ii == edge) {
	    outgoingEdges.erase(ii);
	    break;
	}
    }
    return;
}

void Node::swapOutgoingEdge(Edge *oldEdge, Edge *newEdge) {
    eraseOutgoingEdge(oldEdge);
    outgoingEdges.push_back(newEdge);
}


void Node::print() {
    std::cout << name << " " <<  this << " " << " weight:" << weight << "\n";
    if (prev) {
	if (prev->function)
	    std::cout << "\tpredecessor: " << prev->function->name <<  " " << prev << "\n";
	else
	    std::cout << "\tpredecessor: NULL " << prev << "\n";
    }
    if (next)
	std::cout << "\tsuccessor: " << next->function->name << " " << next << "\n";

    if(!incomingEdges.empty()) {
	std::cout << "\tincoming back edges:\n";
	for(std::list <Edge *>::iterator ii = incomingEdges.begin(), ie = incomingEdges.end(); ii != ie; ++ii) {
	    Edge *edge = *ii;
	    std::cout << "\t\t" << edge << " " <<edge->src->function->name << " " <<  edge->src << " -> " << edge->dest->function->name << " " << edge->dest << "\n";
	}
    }

    if(!outgoingEdges.empty() > 0) {
	std::cout << "\toutgoing back edges:\n";
	for(std::list <Edge *>::iterator ii = outgoingEdges.begin(), ie = outgoingEdges.end(); ii != ie; ++ii) {
	    Edge *edge = *ii;
	    std::cout << "\t\t" << edge << " " <<edge->src->function->name << " " <<  edge->src << " -> " << edge->dest->function->name << " " << edge->dest << "\n";
	}
    }
}

void CostCalculator::parse(std::string path) {
    unsigned codeSize, num;
    std::string token, functionName;
    std::ifstream inFile;
    std::stack<Node *> loopParents;
    std::stack<std::string> loopHeaders;
    Function *function = NULL;
    Node *current = NULL;
    Node *head;
    inFile.open(path.c_str());
    while(inFile.good()) {
	inFile >> token;
	if (token == "#")
	    break;
	functionName = token;
	inFile >> codeSize;
	functions.insert(new Function(functionName, codeSize));
    }
    while(inFile.good()) {
	token.clear();
	inFile >> token;
	if (token.empty())
	    continue;
	// Found the starting of a loop
	if(token[0] == '{') {
	    loopParents.push(current);
	    loopHeaders.push(token.substr(1));
	    inFile >> token;
	}
	// Found the end of a loop
	//else if(!loopHeaders.empty() && token == loopHeaders.top()) {
	else if(token[0] == '}') {
	    assert (!loopHeaders.empty() && token.substr(1) == loopHeaders.top());
	    inFile >> token;
	    unsigned long loopNest = strtol(token.c_str(), NULL, 10);
	    //std::cout << "\t" << loopNest << "\n";
	    unsigned long loopWeight = getLoopWeight(loopNest);
	    Node *loopParent = loopParents.top();
	    Edge *edge = new Edge(current, loopParent, loopWeight);
	    current->insertOutgoingEdge(edge);
	    loopParent->insertIncomingEdge(edge);
	    loopParents.pop();
	    loopHeaders.pop();
	}
	// Found a cost graph node
	else {
	    inFile >> num;
	    // Create a new node
	    Node *node = new Node(token, num, 1);
	    // If the node found is head node
	    if(head == NULL) {
		head = node;
	    }
	    // If the node found is not head node
	    else {
		current->setSuccessor(node);
		node->setPredecessor(current);
	    }
	    // Set the new node as the current node
	    current = node;
	    // Relate the new node with the function it corresponds to
	    for(std::set<Function *>::iterator ii = functions.begin(), ie = functions.end(); ii != ie; ii++) {
		function = *ii;
		if(function->name == token) {
		    break;
		}
	    }
	    current->function = function;
	}
    }
    this->head = head;
    inFile.close();
}

void CostCalculator::printGraph(Node *start) {
    Node *current = start;
    if(current == NULL) return;
    while(current) {
	current->print();
	current = current->getSuccessor();
    }
    std::cout << std::endl;
}

Node* CostCalculator::getHead() {
    return head;
}

void CostCalculator::calculateCost(unsigned long spmSize) {
    Region *src, *dest;
    // Initially place each function in a seperate region
    for(std::set<Function *>::iterator ii = functions.begin(), ie = functions.end(); ii != ie; ++ii) {
	Function *function = *ii;
	Region *region = new Region();
	region->functions.insert(function);
	regions.insert(region);
	std::cout << function->name << "\n";
    }


    // Try to merge regions until the overall size of regions can fit in the SPM
    while(getRegionSize() > spmSize) {
	std::cout << "region size: " << getRegionSize() << ", spm size: " << spmSize << std::endl;
	findMerge(src, dest);
	std::cout << "merge " << src->getDescription() << " and " << dest->getDescription() << std::endl;
	dest->functions.insert(src->functions.begin(), src->functions.end());
	regions.erase(src);
    }
    std::cout << "calculation finished" << std::endl;
    std::cout << "region size: " << getRegionSize() << ", spm size: " << spmSize << std::endl;
    std::cout << "final regions: ";
    for(std::set<Region *>::iterator i = regions.begin(); i != regions.end(); i++) {
	Region *region = *i;
	std::cout << region->getDescription() << " ";
    }
    printMapping();
    std::cout << std::endl;
    return;
}


void CostCalculator::printMapping() {
    unsigned long regionId = 0;
    std::ofstream ofs;
    ofs.open ("_mapping", std::ofstream::out | std::ofstream::trunc | std::ofstream::binary);
    ofs << regions.size() << "\n";
    for(std::set<Region *>::iterator ii = regions.begin(), ie = regions.end(); ii != ie; ++ii) {
	Region *region = *ii;
	for (std::set<Function*>::iterator ji = region->functions.begin(), je = region->functions.end(); ji != je; ++ji) {
	    Function *function = *ji;
	    ofs << function->name << " " << regionId << "\n";
	}
	++regionId;
    }
}

void CostCalculator::findMerge(Region* &src, Region* &dest) {
    unsigned long minCost = ~0;
    //for all possible region combinations
    for(std::set<Region *>::iterator ii = regions.begin(), ie = regions.end(); ii != ie; ++ii) {
	std::set<Region *>::iterator in = ii;
	++in;
	if(in == ie) break;
	Region *r1 = *ii;
	while(in != ie) {
	    Region *r2 = *in;
	    unsigned long cost = mergeCost(r1, r2);
	    if(cost < minCost) {
		src = r1; 
		dest = r2; 
		minCost = cost;
	    }
	    ++in;
	}
    }
}

unsigned long CostCalculator::mergeCost(Region *r1, Region *r2) {
    unsigned long cost = 0;
    Node *dumbNode;
    Node *current;
    Node *next;

    // Create a dumb node 
    dumbNode = new Node("dumbNode", 1, 1);
    // Create a duplicate of the cost graph
    Node *newHead = duplicateCostGraph();
    // Insert dumb node before the head node of the duplicated cost graph
    dumbNode->setSuccessor(newHead);
    newHead->setPredecessor(dumbNode);

    std::cout << "calculate cost for merging " << r1->getDescription() << " and " << r2->getDescription() << "\n";


    // Step 2: Remove irrevelant nodes
    current = dumbNode;
    while(current->next) {
	next = current->next;
	//std::cout << "\t" << next->name << " " << next << "\n";
	// Found a node that is irrevelant
	if(!r1->hasFunction(next->function) && !r2->hasFunction(next->function)) {
	    delete next;
	} 
	// Found a node that is of interest
	else {
	    current = current->next;
	} 
    }

    /*
    // Step 3: 
    current = dumbNode;
    while(current->next) {
	next = current->next;
	for(std::list<Edge *>::iterator ii = next->backEdges.begin(), ie = next->backEdges.end(); ii != ie;) {
	    std::list<Edge *>::iterator it = ii++;
	    Edge *edge = *it;
	    // TODO 
	    if(edge->src->function == edge->dest->function) {
		edge->src = current;
		Edge *newEdge = current->addBackEdge(edge->dest, edge->num);
		next->backEdges.erase(it);
		//edges.erase(edge);
		//edges.insert(newEdge);
	    }
	}
	current = current->next;
    }
    */

    // Step 4: Remove redundant adjacent functions calls
    current = dumbNode->getSuccessor();
    next = current->getSuccessor();
    while(next) {
	if(current->function == next->function) 
	    delete next;
	else 
	    current = next;
	next = current->getSuccessor();
    }

    //CostCalculator::printGraph(dumbNode->next);
    // Remove self-recursive back edges 
    current = dumbNode;
    next = current->getSuccessor();
    while(next) {
	bool changed = false;
	for (std::list<Edge *>::iterator ii = next->incomingEdges.begin(), ie = next->incomingEdges.end(); ii != ie; ) {
	    std::list<Edge *>::iterator it = ii++;
	    Edge *edge = *it;
	    // Found a self-recursive back edge
	    if(edge->src == next) {
		changed = true;
		next->eraseIncomingEdge(edge);
		next->eraseOutgoingEdge(edge);
	    }
	}

	// Adjust the weight of the nodes with self-recursive back edges
	if (changed) {
	    if (!next->incomingEdges.empty()) {
		unsigned long max = 0;
		for (std::list<Edge *>::iterator ii = next->incomingEdges.begin(), ie = next->incomingEdges.end(); ii != ie; ++ii) {
		    Edge *edge = *ii;
		    if (edge->src->weight > max)
			max = edge->src->weight;
		}
		next->weight = max;
	    }
	    else  {
		next->weight = current->weight;
	    }
	}

	current = next;
	next = current->getSuccessor();
    }
    
    //CostCalculator::printGraph(dumbNode->next);
    //Step 5: Calculate the cost

    current = dumbNode;
    while(current->next) {
	next = current->next;
	Function *function = next->function;
	cost += function->size * next->weight * next->probability;
	current = current->next;
    }
    std::cout << cost << std::endl;
    //exit(-1);
    return cost;
}


Node* CostCalculator::duplicateCostGraph() {
    unsigned long num;
    Edge *oldEdge, *newEdge;
    Node *newHead, *oldCurrent, *newCurrent, *oldSrc, *newSrc, *oldDest, *newDest, *oldPredecessor, *newPredecessor, *oldSuccessor, *newSuccessor;
    std::map<Node *, Node *> nodeMap;
    // Copy nodes
    newHead = new Node(head->name, head->weight, head->probability);
    newHead->function = head->function;
    nodeMap[head] = newHead;
    oldCurrent = head->getSuccessor();
    // Create new nodes and their mappings with old nodes
    while(oldCurrent) {
	newCurrent = new Node(oldCurrent->name, oldCurrent->weight, oldCurrent->probability);
	newCurrent->function = oldCurrent->function;
	nodeMap[oldCurrent] = newCurrent;
	oldCurrent = oldCurrent->getSuccessor();
    }

    // Copy predecessors and successors
    oldCurrent = head;
    newCurrent = newHead;
    while(oldCurrent) {
	oldPredecessor = oldCurrent->getPredecessor();
	oldSuccessor = oldCurrent->getSuccessor();
	newPredecessor = nodeMap[oldPredecessor];
	newSuccessor = nodeMap[oldSuccessor];
	newCurrent->setPredecessor(newPredecessor);
	newCurrent->setSuccessor(newSuccessor);
	oldCurrent = oldCurrent->getSuccessor();
    	newCurrent = newCurrent->getSuccessor();
    }

    // Copy back edges
    oldCurrent = head;
    newCurrent = newHead;
    while(oldCurrent) {
	for(std::list<Edge *>::iterator ii = oldCurrent->outgoingEdges.begin(), ie = oldCurrent->outgoingEdges.end(); ii != ie; ++ii) {
	    oldEdge = *ii;
	    oldDest = oldEdge->dest;
	    newDest = nodeMap[oldDest];
	    num = oldEdge->num;
	    newEdge = new Edge(newCurrent, newDest, num);
	    newCurrent->insertOutgoingEdge(newEdge);
	    newDest->insertIncomingEdge(newEdge);
	}
	oldCurrent = oldCurrent->next;
    	newCurrent = newCurrent->next;
    }
    return newHead;
}



unsigned long CostCalculator::getRegionSize() {
    unsigned long size = 0;
    for(std::set<Region *>::iterator ii = regions.begin(), ie = regions.end(); ii != ie; ++ii) {
	Region *region = *ii;
	size += region->getSize();
    }
    return size;
}


unsigned long CostCalculator::Region::getSize() {
    if(functions.empty()) return 0;
    unsigned long maxFunctionSize = 0;
    for(std::set<Function *>::iterator i = functions.begin(); i != functions.end(); i++) {
	Function *function = *i;
	if(function->size > maxFunctionSize) maxFunctionSize = function->size;
    }
    return maxFunctionSize;
}




std::string CostCalculator::Region::getDescription() {
    std::string r = "[ ";
    for(std::set<Function *>::iterator ii = functions.begin(), ie = functions.end(); ii != ie; ++ii) {
	Function *function = *ii;
	r += function->name;
	r += " ";
    }
    r += "]";
    return r;
}
