/*
 *  \author Guilherme Alves
 */

#include "somm23.h"
#include <unistd.h>

namespace group
{

// ================================================================================== //

    void simRandomFill(uint32_t n, uint32_t seed)
    {
        soProbe(105, "%s(%u, %u)\n", __func__, n, seed);

        require(n >= 2 || n == 0, "At least 2 processes are required");
        require(n <= MAX_PROCESSES, "Too many processes");
        
        
        /*
        Randomly fills the forthcoming table.


        The following must be considered:

            If argument n is zero, the number of processes should be randomly selected between 2 and MAX_PROCESSES.
            If argument seed is zero, the seed of the ramdom number generator should be getpid().
            PIDs should be generator in the range [1, 65535] and should all be different.
            Arrival times should be randomly generated in ascending order, with distances between successive arrivals in the range [0,100]
            Lifetimes should be randomly generated in the range [10,1000]
            The number of address space segments per process should be randomly generated between 1 and MAX_SEGMENTS
            The size of each address space segment should be randomly generated in the range [0x100, 0x800]        
        */

        if(seed == 0)
            seed = getpid();
            
        srand(seed);
    

        if(n == 0){
            //randomly select a number between 2 and MAX_PROCESSES
            n = 2 + rand()%(MAX_PROCESSES - 1);
        }

        
        for(uint32_t i = 0; i < n; i++){

            //generate pid
            uint32_t pid = 1 + rand()%65535;
            //check if pid is already in use
            ForthcomingProcess *process = forthcomingTable.process;
            for(uint32_t j = 0; j < forthcomingTable.count; j++){
            
                if(process[j].pid == pid){
                    //if pid is already in use, generate another one
                    pid = 1 + rand()%65535;
                    //reset j
                    j = 0;
                }
            }
            //get the highest arrival time
            uint32_t highestArrivalTime = forthcomingTable.process[forthcomingTable.count - 1].arrivalTime;

            //generate arrival time
            uint32_t arrivalTime = highestArrivalTime + rand()%101;
            
            //generate lifetime
            uint32_t lifetime = 10 + rand()%991;
            //generate number of segments
            uint32_t numSegments = 1 + rand()%(MAX_SEGMENTS);
            //generate size of each segment
            uint32_t segmentSize[numSegments];
            for(uint32_t j = 0; j < numSegments; j++){
             segmentSize[j] = 0x100 + rand()%(0x800 - 0x100);
            }


            //add process to table
            forthcomingTable.process[forthcomingTable.count].pid = pid;
            forthcomingTable.process[forthcomingTable.count].arrivalTime = arrivalTime;
            forthcomingTable.process[forthcomingTable.count].lifetime = lifetime;
            //create segments
            forthcomingTable.process[forthcomingTable.count].addressSpace.segmentCount = numSegments;
            //add segments to process
            for(uint32_t j = 0; j < numSegments; j++){
                forthcomingTable.process[forthcomingTable.count].addressSpace.size[j] = segmentSize[j];
            }


            forthcomingTable.count++;
        }
    
        


    }

// ================================================================================== //

} // end of namespace group

