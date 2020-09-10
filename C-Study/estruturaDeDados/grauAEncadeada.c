#include <stdio.h>
#include <stdlib.h>

struct lista {
    float info;
    struct lista *prox;
};

typedef struct lista Lista;

Lista *start(void){
    return NULL;
}

Lista *into(Lista *newList, float newInformation){
    Lista *new = (Lista*) malloc(sizeof(Lista));
    new->info = newInformation;
    new->prox = newList;
    return new;
}

void print(Lista *newList){
    Lista* printList;
    for(printList=newList; printList!=NULL; printList=printList->prox){
        printf("Information = %f\n", printList->info);
    }
printf("\n");
}

int empty(Lista *newList){
    if(newList == NULL){
        printf("Empty!");
        return 1;
    }else{
        printf("Full!");
        return 0;
    }
}

Lista *search(Lista *newList, float valueList){
    Lista *printList;
    for(printList=newList; printList!=NULL; printList=printList->prox){
        return printList;
    }

printf("Empty!");
return NULL;
}

Lista *removeInfo(Lista *newList, float valueList){
    Lista *previous = NULL;
    Lista *printList = newList;

    while(printList != NULL && printList->info != valueList){
        previous = printList;
        printList = printList->prox;
    }

    if(previous == NULL){
        newList = printList->prox;
    }else{
        previous->prox = printList->prox;
    }

free(printList);
return newList;
}

void libera(Lista* newList){
Lista *printList = newList;
    while(printList != NULL){
        Lista *temp = printList->prox;
        free(printList);
        printList = temp;
    }
}

int main(void){
    float insertInformation, insertValue;

    Lista *newList;
    newList=start();
    
    if(1){
        printf("\nInsert 8 elements!\n");
            for(insertInformation=1; insertInformation<=8; insertInformation++){
                newList=into(newList, insertInformation);
            }
        print(newList);

        printf("\nRemove 3 elements!\n");
            for(insertValue=1; insertValue<=3; insertValue++){
                newList=removeInfo(newList, insertValue);
            }
        print(newList);

        printf("\nInsert 5 elements!\n");
            for(insertInformation=1; insertInformation<=5; insertInformation++){
                newList=into(newList, insertInformation);
            }
        print(newList);
        }

        printf("\nSearch information: ");
            scanf("%f", &insertValue);
            newList=search(newList, insertValue);
        
        printf("\nClean list!\n");
            libera(newList);
            print(newList);

}