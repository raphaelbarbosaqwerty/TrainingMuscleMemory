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
    printf("\nData insert sucess!\n");
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
    int option;

    printf("Hello world!\n");

    Lista *newList;
    newList=start();

    printf("###########################\n");
    printf("Welcome user to Menu!\n");
    printf("1 - Insert information!\n");
    printf("2 - Print information!\n");
    printf("3 - Search information!\n");
    printf("4 - Remove information!\n");
    printf("5 - Exit\n");
    printf("###########################\n");

    MENU:printf("\nChoose your option: ");
    scanf("%d", &option);

    while(option != 5){
        if(option == 1){
            printf("\nInsert information into list: ");
            scanf("%f", &insertInformation);
            newList=into(newList, insertInformation);
            printf("Information inserted!\n");
            
            goto MENU;
        }else if(option == 2){
            printf("\nPrint information!\n");
            print(newList);

            goto MENU;
        }else if(option == 3){
            printf("\nSearch information: ");
            scanf("%f", &insertValue);
            newList=search(newList, insertValue);

            goto MENU;
        }else if(option == 4){
            printf("\nRemove information: ");
            scanf("%f", &insertValue);
            newList=removeInfo(newList, insertValue);

            goto MENU;
        }else if(option == 5){
            printf("\nExit program! Bye!");
        }
    }
}