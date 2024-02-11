# Test code
## This file contains code blocks that can be use to test the modules 

### To test the pct module the following code was added to the main
```C

fprintf(fout, "\n\e[31;1m=================================================================\e[0m\n");
    fprintf(fout, "\e[34;1mTesting pct\e[0m\n");
    fprintf(fout, "\e[31;1m=================================================================\e[0m\n\n");
    
    pctInit();
    pctInsert(111, 0, 100, new AddressSpaceProfile{3, {512, 1024, 512}});
    //222;100;300;1024,512
    pctInsert(222, 100, 300, new AddressSpaceProfile{2, {1024, 512}});
    pctPrint(fout);
    pctUpdateState(111, FINISHED, 1000);
    pctUpdateState(222, DISCARDED, -1);
    pctPrint(fout);
    pctTerm();

```
