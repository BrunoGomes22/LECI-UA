#define SIZE 10
#define TRUE 1
#define FALSE 0
void main(void)
{
    static int lista[SIZE];
    int houveTroca, i, aux;
    int *p;
    // inserir aqui o código para leitura de valores e
    // preenchimento do array
    /*
    for(int i=0; i<SIZE; i++) // por índice
    {
        printf("Digite um valor: ");
        scanf("%d", &lista[i]);
    }
    */
   for(p=lista; p<lista+SIZE; p++) // por ponteiro
    {
         printf("Digite um valor: ");
         scanf("%d", p);
    }

    do
    {
        houveTroca = FALSE;
        for (i=0; i < SIZE-1; i++)
        {
            if (lista[i] > lista[i+1])
            {
                aux = lista[i];
                lista[i] = lista[i+1];
                lista[i+1] = aux;
                houveTroca = TRUE;
            }
        }
    } while (houveTroca==TRUE);
    // inserir aqui o código de impressão do conteúdo do array
    for(int i=0; i<SIZE; i++)
    {
        printf("%d", lista[i]);
    }
} 