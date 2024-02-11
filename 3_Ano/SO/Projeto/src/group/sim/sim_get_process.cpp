/*
 *  \author Guilherme Alves
 */

#include "somm23.h"

namespace group
{

// ================================================================================== //

    ForthcomingProcess *simGetProcess(uint32_t pid)
    {
        soProbe(106, "%s(%u)\n", __func__, pid);

        require(pid > 0, "a valid process ID must be greater than zero");

        /* 
        Get data of a forthcoming process, given its PID. 
        The following must be considered:
            The EINVAL exception should be thrown, if an entry for the given pid does not exists
            All exceptions must be of the type defined in this project (Exception)

        */

        //get process from pid
        ForthcomingProcess *process = forthcomingTable.process;
        for(uint32_t i = 0; i < forthcomingTable.count; i++){
            if(process[i].pid == pid){
                return &process[i];
            }
        }

        //if pid not found
        throw Exception(EINVAL, __func__);
    }

// ================================================================================== //

} // end of namespace group

