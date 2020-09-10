#include <stdio.h>
#include <stdlib.h>

void main(){

    /* Código desenvolvido por: Raphaelecb
                    Visual Studio Code
            Github:https://github.com/raphaelecb
        
            Jogo de azar Red-Black com números
    */

    int bolas, vermelhas, pretas, b, i, rodada;
    float dinheiro, dinheirototal, dobro, perdeu, metade;
    float dobrototal, perdatotal, metadetotal;

    //Valor inicial de bolas equivale a 0
    bolas = 0;

    //Tela de boas-vindas
    printf("####################################\n");
    printf("#                                  #\n");
    printf("#      Red-Black com números       #\n");
    printf("#                                  #\n");
    printf("####################################\n\n");

    //Quantidade de bolas inseridas no globo
    printf("Quantas bolas devem ser inseridas no globo? [Entre 10 e 100]: ");
    scanf("%d", &bolas);

    //Verificar primeiro se está entre 10 e 100
    if(bolas >= 10 && bolas <= 100){
        printf("\n");

            //Verificar se são pares
            if(bolas % 2 == 0){
                
            }else{
                printf("\nPermitido somente números pares!\n");

                //Se não for par então entrar no laço, enquanto
                while(bolas % 2 != 0){
                    printf("\nDigitar um valor par para bolas inseridas no globo:\n");
                    scanf("%d", &bolas);
                }
            }
    }else{
        
        printf("\nEntrada incorreta! Entre 10 e 100!\n");

            //Caso a entrada entre 10 e 100 estiver incorreta entrar no laço
            while(bolas < 10 || bolas > 100){
                printf("\nDigitar um valor entre 10 e 100:\n");
                scanf("%d", &bolas);
            }
    }

    printf("\n");

    //Dinheiro do apostador equivale a 0
    dinheiro = 0;
    dinheirototal = 0;

    //Verifica se o dinheiro é maior ou igual a 0
    if(dinheiro <= 0){
        printf("Informar o valor da sua aposta: ");
        scanf("%f", &dinheiro);
            //Caso for menor que 0 vai entrar no laço
            while(dinheiro <= 0){
                printf("Valor incorretor! Informe um valor maior que 0: ");
                scanf("%f", &dinheiro);
            }
    }else{
        printf("Bem-vindo a mesa de apostas! Voce está apostando: %f", dinheiro);
    }
    printf("#####################################\n");
    //50% vermelhas e pretas
    vermelhas = (bolas * 0.5);
    pretas = (bolas * 0.5);

    //Vetor globo com total de bolas
    int globo[rand()%bolas];
  
    //incrementador
    int counter = 0;

    //Laço While para poder fazer a cotagem de vezes jogadas
    while(counter < 10){
        
        //counter para contar o laço
        counter++;
        
        //laço de for para as bolas vermelhas
        //vermelho == 0;
        for(b=0; b<1; b++){
        dinheiro;
            
            //Variáveis para possibilitar a randomização
            int metadev = globo[rand()%vermelhas]%2;
            int metadep = globo[rand()%pretas]%2;
            printf("%d", metadev);
                
                //laço de for para as bolas pretas
                //pretas == 1;
                for(i=0; i < 1; i++){
                    printf("\n");
                    printf("%d", metadep);
                    printf("\n");
                
                //Verificação do dinheiro ganho ou perdido com ifs
                if(metadev == 0 && metadep == 0){
                    dobro = (dinheiro * 2);
                    printf("\nSeu dinheiro dobrou! R$%f", dobro);
                        }else if(metadev == 1 && metadep == 1){
                            perdeu = (dinheiro - dinheiro);
                            printf("\nPerdeu tudo! R$%f", perdeu);
                        }else if(metadev == 0 && metadep == 1){
                            printf("\nRecebeu mesmo valor apostado! R$%f", dinheiro);
                        }else if(metadev == 1 && metadep == 0){
                            metade = (dinheiro / 2);
                            printf("\nRecebe metade do valor apostado! R$%f", metade);   
                             
                }else{
                    printf("\nErro!");
                }

                //Variáveis de dinheiro
                dobrototal += dobro;
                perdatotal += perdeu;
                metadetotal += metade;
                dinheirototal = dobrototal + perdatotal + metadetotal;


                //Verificar se ainda tem dinheiro
                if(dinheiro == 0){
                    printf("Você não tem dinheiro suficiente! Digita a nova quantia: ");
                        scanf("%f", &dinheiro);
                }

            }
        }

        //Fala quanto de dinheiro tem e se deseja sair        
        printf("\n");
        printf("\nLucro total: R$%f\n", dinheirototal);
        printf("\nVocê pode jogar 10 rodadas!");
        printf("\nJogar mais uma vez, 1 = Sim e 0 = Não? ");
        scanf("%d", &rodada);
        if(rodada == 0){
            break;
        }
    }

    //Agradecimentos por usar o estabelecimento
    printf("\n\n\n#####################################\n");
    printf("Obrigado por apostar no Red-Black!\n");
    printf("Seu saldo atual é de: R$%f", dinheirototal);
    printf("#####################################\n");
    printf("\n");
}
