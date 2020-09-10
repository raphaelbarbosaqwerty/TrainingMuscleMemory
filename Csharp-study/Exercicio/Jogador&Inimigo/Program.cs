using System;

namespace Jogador_Inimigo
{
    class Program
    {
        static void Main(string[] args)
        {
            /* Apenas estudo C# - Exercicio 1 - raphaelbarbosaqwerty;
                Linux Sylvia 18.3
                Visual Studio Code;
                Framework: netcoreapp2.1;

                        Exercicio:
                    
                    Jogadores && Inimigos;
                Média de força entre J e I;
                Média de ataque entre J e I;
                Média de velocidade entre J e I;
                Soma total de dinheiro entre J e I;
             */
            Console.WriteLine("Exercicio, Jogadores && Inimigos\n");

        //Instanciando objetos jogadores

            //Instanciando objeto Leonidas
            Jogador jogadorLeonidas = new Jogador("Leonidas", 100, 100, 100, 100, 1000);
                //Chamando métodos
                jogadorLeonidas.Atacar();
                jogadorLeonidas.Defesa();

            
            //Instanciando objeto Legolas
            Jogador jogadorLegolas = new Jogador("Legodas", 100, 100, 100, 100, 2000);
                //Chamando métodos
                jogadorLegolas.Atacar();
                jogadorLegolas.Defesa();

            //Instanciando objeto Link
            Jogador jogadorLink = new Jogador("Link", 90, 90, 90, 90, 500);
                //Chamando métodos
                jogadorLink.Atacar();
                jogadorLink.Defesa();

        //Instanciando objetos inimigos

            //Instanciando objeto Agripa
            Inimigo inimigoAgripa = new Inimigo("Agripa", 80, 80, 80, 80, 800);
                //Chamando métodos
                inimigoAgripa.Atacar();
                inimigoAgripa.Defesa();
            
            //Instanciando objeto Mago
            Inimigo inimigoMago = new Inimigo("Mago", 70, 70, 70, 70, 700);
                //Métodos
                inimigoMago.Atacar();
                inimigoMago.Defesa();
            
            //Instanciando objeto Lamp
            Inimigo inimigoLamp = new Inimigo("Lmap", 60, 60, 60, 60, 60);
                //Métodos
                inimigoLamp.Atacar();
                inimigoLamp.Defesa();

        //Fazendo as somas e medias
            //Jogadores
            float mediaForJog = (jogadorLeonidas.forca + jogadorLegolas.forca + jogadorLink.forca) / 3;
            float mediaAtqJog = (jogadorLeonidas.ataque + jogadorLegolas.ataque + jogadorLink.ataque) / 3;
            float mediaVelJog = (jogadorLeonidas.velocidade + jogadorLegolas.velocidade + jogadorLink.velocidade) / 3;
            float mediaDinJog = (jogadorLeonidas.dinheiro + jogadorLegolas.dinheiro + jogadorLink.dinheiro);

            //Inimigos
            float mediaForIni = (inimigoAgripa.forca + inimigoLamp.forca + inimigoMago.forca) / 3;
            float mediaAtqIni = (inimigoAgripa.ataque + inimigoLamp.ataque + inimigoMago.ataque) / 3;
            float mediaVelIni = (inimigoAgripa.velocidade + inimigoLamp.velocidade + inimigoMago.velocidade) / 3;
            float mediaDinIni = (inimigoAgripa.dinheiro + inimigoLamp.dinheiro + inimigoMago.dinheiro);
            float somaDinheiro = (jogadorLeonidas.dinheiro + jogadorLegolas.dinheiro + jogadorLink.dinheiro + inimigoAgripa.dinheiro + inimigoLamp.dinheiro + inimigoMago.dinheiro);
        
        //Estrutura de seleção
            //Média de força
            if(mediaForJog > mediaForIni)
            {
                Console.WriteLine("A força dos jogadores é maior!");
                }else if(mediaForJog < mediaForIni)
                {
                Console.WriteLine("A força dos inimigos é maior!");
                }

            //Média de ataque
            if(mediaAtqJog > mediaAtqIni)
            {
                Console.WriteLine("O ataque dos jogadores é maior!");
                }else if(mediaAtqJog < mediaAtqIni)
                {
                    Console.WriteLine("O ataque dos inimigos é maior!");
                }

            //Média de velocidade
            if(mediaVelJog > mediaVelIni)
            {
                Console.WriteLine("O jogador possui mais velocidade!");
                }else if(mediaVelJog < mediaVelIni)
                {
                    Console.WriteLine("O inimigo possui mais velocidade!");
                }

            //Impriir total de dinheiro
                Console.WriteLine("\nTotal de dinheiro: " + somaDinheiro);
            
                Console.ReadLine();
        }
    }
}
