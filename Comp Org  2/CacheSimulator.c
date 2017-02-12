//Eric Adams
//ea11c

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

struct Cache {
	int Valid;
	int LRU;
	int Dirty;
	int Tag;
};

int main( int argc, char *argv[] ) {

char Type;
int i, j, x, y;
int Block, Sets, Assoc;
unsigned int Offset, Index, Tag, temp, tempI, tempO, tempT;
int HitsWA = 0, MissesWA = 0, MemRefWA = 0;
int HitsNWA = 0, MissesNWA = 0, MemRefNWA = 0;
int testWA = 0, testNWA = 0, RefTotal = 0;
if( argc == 7 ){
	if(strcmp(argv[1],"-b") == 0)
	{
		Block = atoi(argv[2]);
		if(strcmp(argv[3],"-s") == 0)
		{
			Sets = atoi(argv[4]);
			if(strcmp(argv[5],"-n") == 0)
			{
				Assoc = atoi(argv[6]);
			}
			else //error, expected -n as an arg
			{
				printf("-n not entered as an arg\n");
				return 0;				
			}
		}
		else if(strcmp(argv[5],"-s") == 0)
		{
			Sets = atoi(argv[6]);
			if(strcmp(argv[3],"-n") == 0)
			{
				Assoc = atoi(argv[4]);
			}
			else //error, expected -n as an arg
			{
				printf("-n not entered as an arg\n");
				return 0;
			}
		}
		else //error expected -s as an arg
		{
			printf("-s not entered as an arg\n");
			return 0;
		}
	}
	else if(strcmp(argv[3],"-b") == 0)
	{
		Block = atoi(argv[4]);
                if(strcmp(argv[1],"-s") == 0)
                {
			Sets = atoi(argv[2]);
                        if(strcmp(argv[5],"-n") == 0)
                        {
				Assoc = atoi(argv[6]);
                        }
                        else //error, expected -n as an arg
                        {
				printf("-n not entered as an arg\n");
        			return 0;                        
                        }
                }
                else if(strcmp(argv[5],"-s") == 0)
                {
			Sets = atoi(argv[6]);
                        if(strcmp(argv[1],"-n") == 0)
                        {
				Assoc = atoi(argv[2]);
                        }
                        else //error, expected -n as an arg
                        {
				printf("-n not entered as an arg\n");
				return 0;
                        }
                }
		else // error, expected -s as an arg
		{
			printf("-s not entered as an arg\n");
			return 0;
		}
	}
	else if(strcmp(argv[5],"-b") == 0)
	{
		Block = atoi(argv[6]);
                if(strcmp(argv[3],"-s") == 0)
                {
			Sets = atoi(argv[4]);
                        if(strcmp(argv[1],"-n") == 0)
                        {
				Assoc = atoi(argv[2]);
                        }
                        else //error, expected -n as an arg
                        {
				printf("-n not entered as an arg\n");
        			return 0;                        
                        }
                }
                else if(strcmp(argv[1],"-s") == 0)
                {
			Sets = atoi(argv[2]);
                        if(strcmp(argv[3],"-n") == 0)
                        {
				Assoc = atoi(argv[4]);
                        }
                        else //error, expected -n as an arg
                        {
				printf("-n not entered as an arg\n");
				return 0;
                        }
                }
		else //error, expected -s as an arg
		{
			printf("-s not entered as an arg\n");
			return 0;
		}
	}
	else //error, expected -b as an arg
	{
		printf("-b not entered as an arg\n");
		return 0;
	}
}
else
{
	printf("Wrong number of command line arguments.\n");
	return 0;
}
printf("Block size: %d\n", Block);
printf("Number of sets: %d\n", Sets);
printf("Associativity: %d\n", Assoc);

Offset = ceil(log(Block)/log(2));
Index = ceil(log(Sets)/log(2));
Tag = 32 - (Index + Offset);

printf("Number of offset bits: %d\n", Offset);
printf("Number of index bits: %d\n", Index);
printf("Number of tag bits: %d\n\n", Tag);

struct Cache CacheWA[Sets][Assoc];
struct Cache CacheNWA[Sets][Assoc];
for(i = 0; i < Sets; i++)
{
	for(j=0; j < Assoc; j++)
	{
		CacheNWA[i][j].Valid = 0;
		CacheWA[i][j].Valid = 0;
		CacheWA[i][j].Dirty = 0;
		CacheWA[i][j].Tag = 0;
		CacheNWA[i][j].Tag = 0;
		CacheNWA[i][j].LRU = 0;
		CacheWA[i][j].LRU = 0;
	}
}

unsigned int OffsetMask = (1 << Offset) - 1;

while(scanf("%c %u", &Type, &temp) != EOF) //loop to go through input file and check cache
{
	if((Type != 'W') && (Type != 'R'))
		continue;
	//use temp to find index #, then check cache for that index
	tempO = temp & OffsetMask;
	tempI = (temp << Tag) >> (Tag + Offset);
	tempT = temp >> (Index + Offset);
	RefTotal++;
	testNWA = 0;
	testWA = 0;
	for(i=0; i < Assoc; i++)
	{
		x = 0;
		if(Type == 'R')
		{
			if((CacheNWA[tempI][i].Valid == 0) && (CacheNWA[tempI][i].Tag != tempT))
				testNWA = 0;
			else if((CacheNWA[tempI][i].Valid == 1) && (CacheNWA[tempI][i].Tag != tempT))
				testNWA = 0;
			else if((CacheNWA[tempI][i].Valid == 0) && (CacheNWA[tempI][i].Tag == tempT))
			{
				MissesNWA++;
				MemRefNWA++;
				CacheNWA[tempI][i].Valid = 1;
				testNWA = 1;
				CacheNWA[tempI][i].LRU = 0;
			}
			else if((CacheNWA[tempI][i].Valid == 1) && (CacheNWA[tempI][i].Tag == tempT))
			{
				HitsNWA++;
				CacheNWA[tempI][i].LRU = 0;
				testNWA = 1;
			}
			
			if((CacheWA[tempI][i].Valid == 0) && (CacheWA[tempI][i].Tag != tempT))
				testWA = 0;
			else if(CacheWA[tempI][i].Tag != tempT)
				testWA = 0;
			else if((CacheWA[tempI][i].Valid == 0) && (CacheWA[tempI][i].Tag == tempT))
			{
				MissesWA++;
				MemRefWA++;
				CacheWA[tempI][i].Valid = 1;
				CacheWA[tempI][i].LRU = 0;
				testWA = 1;
			}
			else if((CacheWA[tempI][i].Valid == 1) && (CacheWA[tempI][i].Tag == tempT))
			{
				HitsWA++;
				CacheWA[tempI][i].LRU = 0;
				testWA = 1;
			}
			if(testNWA == 0)
			{
				for(j=0; j<Assoc; j++)
				{
					if(CacheNWA[tempI][j].LRU > x)
					{
						x = CacheNWA[tempI][j].LRU;
						y = j;
					}
				}
				CacheNWA[tempI][y].Valid = 1;
				CacheNWA[tempI][y].Tag = tempT;
				CacheNWA[tempI][y].LRU = 0;
				MemRefNWA++;
				MissesNWA++;
				testNWA = 1;
			}
			if(testWA == 0)
			{
				 for(j=0; j<Assoc; j++)
                                {
                                        if(CacheWA[tempI][j].LRU > x)
                                        {
                                                x = CacheWA[tempI][j].LRU;
                                                y = j;
                                        }
                                }
                                CacheWA[tempI][y].Valid = 1;
                                CacheWA[tempI][y].Tag = tempT;
                                CacheWA[tempI][y].LRU = 0;
				MemRefWA++;
				MissesWA++;
				if(CacheWA[tempI][y].Dirty == 1)
				{
					MemRefWA++;
					CacheWA[tempI][y].Dirty = 0;
				}
				testWA = 1;
			}
		}
		else if(Type == 'W')
		{
			if((CacheNWA[tempI][i].Valid == 0) && (CacheNWA[tempI][i].Tag != tempT))
				testNWA = 0;
			else if(CacheNWA[tempI][i].Tag != tempT)
				testNWA = 0;
			else if((CacheNWA[tempI][i].Valid == 0) && (CacheNWA[tempI][i].Tag == tempT))
			{
				testNWA = 0;
			}
			else if((CacheNWA[tempI][i].Valid == 1) && (CacheNWA[tempI][i].Tag == tempT))
			{
				HitsNWA++;
				MemRefNWA++;
				testNWA = 1;
			}

			if((CacheWA[tempI][i].Valid == 0) && (CacheWA[tempI][i].Tag != tempT))
                                testWA = 0;
                        else if(CacheWA[tempI][i].Tag != tempT)
                                testWA = 0;
                        else if((CacheWA[tempI][i].Valid == 0) && (CacheWA[tempI][i].Tag == tempT))
                 		testWA = 0;
			else if((CacheWA[tempI][i].Valid == 1) && (CacheWA[tempI][i].Tag == tempT))
                        {
                                HitsWA++;
				CacheWA[tempI][i].Dirty = 1;
                                MemRefWA++;
				testWA = 1;
                        }

			 if(testNWA == 0)
                        {
                                for(j=0; j<Assoc; j++)
                                {
                                        if(CacheNWA[tempI][j].LRU > x)
                                        {
                                                x = CacheNWA[tempI][j].LRU;
                                                y = j;
                                        }
                                }
                                CacheNWA[tempI][y].Valid = 1;
                                CacheNWA[tempI][y].Tag = tempT;
                                CacheNWA[tempI][y].LRU = 0;
                                MemRefNWA++;
                                MissesNWA++;
                                testNWA = 1;
                        }
			if(testWA == 0)
                        {
                                 for(j=0; j<Assoc; j++)
                                {
                                        if(CacheWA[tempI][j].LRU > x)
                                        {
                                                x = CacheWA[tempI][j].LRU;
                                                y = j;
                                        }
                                }
                                CacheWA[tempI][y].Valid = 1;
                                CacheWA[tempI][y].Tag = tempT;
                                CacheWA[tempI][y].LRU = 0;
                                MemRefWA++; 
                                MissesWA++;
                                if(CacheWA[tempI][y].Dirty == 1)
                                {
                                        CacheWA[tempI][y].Dirty = 0;
                                }
                                testWA = 1;
                        }

		}
		if((testNWA == 1) && (testWA == 1))
			break;
	}
	for(i=0; i<Sets; i++)
	{
		for(j=0; j<Assoc; j++)
		{
			CacheWA[i][j].LRU++;
			CacheNWA[i][j].LRU++;
		}
	}
}

printf("****************************************\n");
printf("Write-through with No Write Allocate\n");
printf("****************************************\n");
printf("Total number of references: %d\n", RefTotal);
printf("Hits: %d\n", HitsNWA);
printf("MissesNWA: %d\n", MissesNWA);
printf("Memory References: %d\n\n", MemRefNWA);

printf("****************************************\n");
printf("Write-back with Write Allocate\n");
printf("****************************************\n");
printf("Total number of references: %d\n", RefTotal);
printf("Hits: %d\n", HitsWA);
printf("MissesNWA: %d\n", MissesWA);
printf("Memory References: %d\n", MemRefWA);

return 0;
}
