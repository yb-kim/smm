def getManagementOverhead(filename, keyword):
	intervals = []
	with open(filename, "r") as f:
		line = f.readline()
		while(line != ""):
			start_time = -1
			end_time = -1
			# Skip lines until we find the function of interest or if we hit the end of file
			while(line!="" and line.find(keyword)==-1):  
				line = f.readline()
				continue
			if line=="":
			 	break;
			# If we have not reach the end of the file, then we have found the start time of the function of interest
			start_time = line.split(':')[0]
			# Skip lines until we find the first line after the function of interest or if we hit the end of the file
			while(line!="" and line.find(keyword)!=-1):
				line=f.readline()
				continue;
			if line=="":
			 	break;
			# If we have not reach the end of the file, then we have found the end time of the function of interest
			end_time = line.split(':')[0]
			intervals.append(int(end_time) - int(start_time))
	return sum(intervals)


def getDmaOverhead(filename):
	intervals = []
	with open(filename, "r") as f:
		line = f.readline()
		while (line != ""):
			start_time = -1
			end_time = -1
			# Skip lines until we find the a sstore or sload function
			while(line!="" and (line.find("@_sstore")==-1 and line.find("@_ssload")==-1)):  
				line = f.readline()
				continue
			if line=="":
			 	break;
			# If we find one such function, then head to the syscall instruction
			while(line.find("syscall")==-1):
				 line = f.readline()
				 continue
			# Record the start time
			start_time = line.split(':')[0]
			# The next instruction
			line=f.readline()
			# 
			end_time = line.split(':')[0]
			intervals.append(int(end_time) - int(start_time))
			# Skip the rest lines until of current sstore or sload function
			while (line!="" and (line.find("@_sstore")!=-1 or line.find("@_ssload")!=-1)):
				line = f.readline()
				continue
			if line=="":
			 	break;
	return sum(intervals)

def getMemoryAccessCateory(filename):
	spm_begin=0x190
	spm_end=0x100190
	num_spm_access = 0
	num_mem_access = 0
	with open(filename, "r") as f:
		line = f.readline()
		while (line!="" and line.find("ReadReq")==-1 and line.find("WriteReq")==-1):
			line = f.readline()
			continue
		while (line != ""):
			if (line.find("ReadReq")!=-1 or line.find("WriteReq")!=-1):
				mem_addr = int(line.split(":")[3].strip().split(" ")[1],16)
				if mem_addr >= spm_begin and mem_addr < spm_end:
					num_spm_access = num_spm_access+1
				else:
					num_mem_access = num_mem_access+1
			line = f.readline()

	return num_spm_access, num_mem_access

if __name__ == "__main__":
	exec_log= "m5out/simout_exec"
	mem_log="m5out/simout_dram"
	ticks = getDmaOverhead(exec_log)
	print "DMA overhead (ticks) : " + str(ticks)
	ticks = getManagementOverhead(exec_log, "@_sstore")
	print "sstore overhead (ticks) :" + str(ticks)
	ticks = getManagementOverhead(exec_log, "@_sload")
	print "sload overhead (ticks) : " + str(ticks)
	ticks = getManagementOverhead(exec_log, "@_l2g")
	print "l2g overhead (ticks) : " + str(ticks)
	ticks = getManagementOverhead(exec_log, "@_g2l")
	print "g2l overhead (ticks) : " + str(ticks)
	num_spm_access, num_mem_access = getMemoryAccessCateory(mem_log)
	print "number of SPM accesses: " + str(num_spm_access)
	print "number of Memory accesses: " + str(num_mem_access)

