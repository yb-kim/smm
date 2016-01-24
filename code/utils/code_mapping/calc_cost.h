#include <cmath>
#include <list>
#include <set>
#include <string>

//using namespace std;

class Edge;
class Node;
class Function;

class CostCalculator {
public:
    Node* getHead();
    void parse(std::string path);
    void calculateCost(unsigned long spmSize);

    static void printGraph(Node *start = NULL);

    class Region {
    public:
	std::set<Function *> functions;
        unsigned long getSize();
        bool hasFunction(Function *function) { return functions.find(function) != functions.end(); }
	std::string getDescription();
    };

private:
    static unsigned long getLoopWeight(unsigned long loopNested) { return pow(10, loopNested); }
    unsigned long getRegionSize();
    void findMerge(Region* &src, Region* &dest);
    unsigned long mergeCost(Region *r1, Region *r2);
    Node* duplicateCostGraph();
    void printMapping();

    Node *head;
    std::set<Function *> functions;
    std::set<Region *> regions;
};


class Function {
public:
    Function(std::string name) : name(name), size(0) { }
    Function(std::string name, unsigned long size) : name(name), size(size) { }
    std::string name;
    unsigned long size;
};


class Edge {
public:
    Node *src;
    Node *dest;
    // Number this edge is executed
    unsigned long num;
    
    Edge(Node *src, Node *dest, unsigned long num) : 
        src(src), dest(dest), num(num) {}
};

class Node { 
public:
    Node(std::string name, unsigned long w, double p); 
    ~Node();
    void setPredecessor(Node *edge);
    Node *getPredecessor();
    void setSuccessor(Node *edge);
    Node *getSuccessor();
    void insertIncomingEdge(Edge *edge);
    void eraseIncomingEdge(Edge *edge);
    void swapIncomingEdge(Edge *oldEdge, Edge *newEdge);
    void insertOutgoingEdge(Edge *edge);
    void eraseOutgoingEdge(Edge *edge);
    void swapOutgoingEdge(Edge *oldEdge, Edge *newEdge);
    void print();

//private:
    double probability;
    unsigned long weight;
    Node *prev;
    Node *next;
    Function *function;
    std::string name;
    std::list <Edge *> incomingEdges;
    std::list <Edge *> outgoingEdges;

};
