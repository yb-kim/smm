#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char spm_code[0x1000];

#define UNLIMIT
#define MAXARRAY 60000 /* this number, if too large, will cause a seg. fault!! */

struct myStringStruct {
  char qstring[128];
};

int compare(const void *elem1, const void *elem2)
{
  int result;
  
  result = strcmp((*((struct myStringStruct *)elem1)).qstring, (*((struct myStringStruct *)elem2)).qstring);

  return (result < 0) ? 1 : ((result == 0) ? 0 : -1);
}


int c_main(int argc, char *argv[]) {
  struct myStringStruct array[MAXARRAY];
  FILE *fp;
  int i,count=0;
  
  if (argc<2) {
    fprintf(stderr,"Usage: qsort_small <file>\n");
    exit(-1);
  }
  else {
    fp = fopen(argv[1],"r");
    
    while((fscanf(fp, "%s", &array[count].qstring) == 1) && (count < MAXARRAY)) {
	 count++;
    }
  }
  printf("\nSorting %d elements.\n\n",count);
  qsort(array,count,sizeof(struct myStringStruct),compare);
  
  for(i=0;i<count;i++)
    printf("%s\n", array[i].qstring);
  return 0;
}

int main(int argc, char* argv[]) {
	// Initialize region table
	c_init_reg(1, NULL);
	region *r = &_region_table[0];
	// Initialize mapping table
	c_init_map(3,
			"compare", (char *)compare, (char *)spm_code, 0x70, r,
			"c_main", (char *)c_main, (char *)spm_code, 0x2b0, r,
			"main", (char *)c_main, NULL, 0x0, NULL
		  );
	// Call the real main function
	return c_main(argc, argv);
}
