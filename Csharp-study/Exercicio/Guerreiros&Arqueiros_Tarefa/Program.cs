using System;

namespace Guerreiros_Arqueiros_Tarefa
{
    class Program
    {
        static void Main(string[] args)
        {
            /* C# - Classes && Objetos - Tarefa;
                Linux Sylvia 18.3
                Visual Studio Code;
                Framework: netcoreapp2.1;

                        Tarefa:
                Criar classe guerreiros e arqueiros;
                3 objetos para cada classe;
             */

            Console.WriteLine("Tarefa: Guerreiros e Arqueiros\n");

        //Instanciando Classe Arqueiros

            //Instanciando objeto Robin Hood
            Arqueiros arqueirosRobinHood = new Arqueiros("Robin Hood", "Floresta", 100, 80, 30, 50, 20);
                //Chamando métodos
                arqueirosRobinHood.Atacar();
                arqueirosRobinHood.Esquivar();
                arqueirosRobinHood.Curar();

            //Instanciando objeto Legolas
            Arqueiros arqueirosLegolas = new Arqueiros("Legolas", "Castelo", 120, 120, 50, 80, 50);
                //Chamando métodos
                arqueirosLegolas.Atacar();
                arqueirosLegolas.Esquivar();
                arqueirosLegolas.Curar();

            //Instanciando objeto Link
            Arqueiros arqueirosLink = new Arqueiros("Link", "Mundo de Zelda", 110, 110, 20, 30, 10);
                //Chamando métodos
                arqueirosLink.Atacar();
                arqueirosLink.Esquivar();
                arqueirosLink.Curar();
            
        //Instanciando Classe Guerreiros

            //Instanciando objeto Leonidas
            Guerreiros guerreirosLeonidas = new Guerreiros("Leonidas", "Esparta", 150, 20, 80, 60);
                //Chamando métodos
                guerreirosLeonidas.Atacar();
                guerreirosLeonidas.Defender();
                guerreirosLeonidas.Agilidade();

            //Instanciando objeto Rei Artur
            Guerreiros guerreirosReiArtur = new Guerreiros("Rei Arthur", "Grã-Bretanha", 120, 10, 70, 80);
                //Chamando métodos
                guerreirosReiArtur.Atacar();
                guerreirosReiArtur.Defender();
                guerreirosReiArtur.Agilidade();
            
            //Instanciando objeto Agripa
            Guerreiros guerreirosAgripa = new Guerreiros("Agripa", "Roma", 100, 60, 50, 30);
                //Chamando métodos
                guerreirosAgripa.Atacar();
                guerreirosAgripa.Defender();
                guerreirosAgripa.Agilidade();

        }
    }
}
