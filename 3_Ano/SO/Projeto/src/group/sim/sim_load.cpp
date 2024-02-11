/*
 *  \author Guilherme Alves
 */

#include "somm23.h"
#include "string.h"

namespace group
{

// ================================================================================== //

    void simLoad(const char *fname)
    {
        soProbe(104, "%s(\"%s\")\n", __func__, fname);

        require(fname != NULL, "fname can not be a NULL pointer");
        require(forthcomingTable.count == 0, "Forthcoming table should be empty");

        //open file
        FILE *fin = fopen(fname, "r");
        
        if (!fin) {
            throw Exception(errno, __func__); 
        }

        //store content
        char line[1024];

        while(fgets(line, 100, fin)) {
            
            //remove Spaces And Tabs
            char* str = line;
            uint32_t count = 0;
            for (int i = 0; str[i]; i++)
                if (str[i] != ' ' && str[i] != '\t')
                    str[count++] = str[i];
            str[count] = '\0';

            //if starts with %, its a comment
            if(line[0] == '%'){
                continue;
            }

            char *token = strtok(line, ";");
            count = 0;
            while (token != NULL) {
                ForthcomingProcess &process = forthcomingTable.process[forthcomingTable.count];
                //try to convert to int
                int value = atoi(token);
                //if it is a number, it is a process
                if(count == 0){ //pid
                    //value cannot exist in the table
                    if(value < 0 || value > 65535){
                        throw Exception(EINVAL, __func__);
                    }
                    //checks if pid already exists
                    for(uint32_t i = 0; i < forthcomingTable.count; i++){
                        if(forthcomingTable.process[i].pid == (uint32_t)value){
                            throw Exception(EINVAL, __func__);
                        }
                        
                    }

                    process.pid = value;
                }
                else if(count == 1){ //arrival time
                    
                    for(uint32_t i = 0; i < forthcomingTable.count; i++){
                        if(forthcomingTable.process[i].arrivalTime > (uint32_t)value){
                            throw Exception(EINVAL, __func__);
                        }   
                    }

                    process.arrivalTime = (uint32_t)value;

                    feqInsert(ARRIVAL, process.arrivalTime, process.pid);
                }
                else if(count == 2){ //lifetime
                    //value must be greater than zero
                    
                    if(value < 0){
                        throw Exception(EINVAL, __func__);
                    }

                    process.lifetime = value;
                }
                else if (count == 3) { //address space profile
                    //tokenize the address space profile
                    char *token2 = strtok(token, ",");
                    uint32_t count2 = 0;
                    while (token2 != NULL) {
                        int value2 = atoi(token2);
                        //set address space sizes
                        process.addressSpace.size[count2] = (uint32_t)value2;
                        count2++;
                        token2 = strtok(NULL, ",");
                        if(count2 > MAX_SEGMENTS){
                            throw Exception(EINVAL, __func__);
                        }
                    }
                    memset(process.addressSpace.size + count2, 0, sizeof(uint32_t) * (MAX_SEGMENTS - count2));

                    //set address Space segment count
                    process.addressSpace.segmentCount = count2;
                    //Set table count
                    forthcomingTable.count++;
                    
                    if(forthcomingTable.count > MAX_PROCESSES){
                        throw Exception(EINVAL, __func__);
                    }
                    
                }else {
                    //raise error if there are more than 4 segments
                    throw Exception(EINVAL, __func__);
                }
                count++;
                
                token = strtok(NULL, ";");
            }

        }
        fclose(fin);
    }

// ================================================================================== //

} // end of namespace group

