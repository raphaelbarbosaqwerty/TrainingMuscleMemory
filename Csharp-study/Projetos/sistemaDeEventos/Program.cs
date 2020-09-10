using System;
using System.Text;
using System.Linq;
using System.IO;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace SistemadeEventos
{
    class Program
    {
        static void Main(string[] args)
        {
                /* Apenas estudo C# - Sistema de Eventos - raphaelbarbosaqwerty;
                    Linux Sylvia 18.3
                    Visual Studio Code;
                    Framework: netcoreapp2.1;            
                */
                
                //Fazer verificação do arquivo events.data
                if (File.Exists("events.data")){
                            Console.WriteLine("");
                    }else{
                            FileStream fx = new FileStream("events.data", FileMode.CreateNew);
                    }
                

                Console.WriteLine("Sistema de eventos!\n");
                int opcao = 99;

                //Menu
                Menu:
                    Console.WriteLine("Entrar com opção desejada!");
                    Console.WriteLine("1 - Cadastrar usuário");
                    Console.WriteLine("2 - Cadastrar evento");
                    Console.WriteLine("3 - Consultar eventos");
                    Console.WriteLine("4 - Registrar usuários");
                    Console.WriteLine("5 - Deletar evento");
                    Console.WriteLine("6 - Deletar participante");
                    Console.WriteLine("7 - Visualizar participantes em eventos");
                    Console.WriteLine("8 - Acessar o events.data");
                    Console.WriteLine("0 - Para sair do sistema");
                
                //Entrar com opção desejada
                    Console.WriteLine("\nDigitar opção: ");
            
            //while para opção correta                        
            while(opcao != 0)
            {

                opcao = int.Parse(Console.ReadLine());
                switch(opcao)
                {
                    case 1:
                /* Instanciando objetos */
                    Usuarios novouser = new Usuarios();
                        novouser.Capturar(); //Fazer a captura
                        novouser.Cadastrar(); //Fazer o envio para Mysql
                        goto Menu;
                    case 2:
                    Eventos novoevento = new Eventos();
                        novoevento.Capturar(); 
                        novoevento.Cadastrar(); 
                        novoevento.Savevent();
                        goto Menu;
                    case 3:
                    Eventos novaconsulta = new Eventos();
                        novaconsulta.Consultar();
                        break;
                    case 4:
                    Usuarios registrar = new Usuarios();
                        registrar.Participante();
                        break;
                    case 5:
                    Eventos apagarevento = new Eventos();
                        apagarevento.Deletar();
                        break;
                    case 6:
                    Usuarios deletarparticipante = new Usuarios();
                        deletarparticipante.Deletarpar();
                        break;
                    case 7:
                    Usuarios consultarparticipante = new Usuarios();
                        consultarparticipante.Consultarparti();
                        break;
                    case 8:
                    Eventos eventsdata = new Eventos();
                        eventsdata.Openvent();
                        break;
                    case 0: //Sair do programa
                        return; 
                    default:
                        Console.WriteLine("\nOpção incorreta! Inserir opção:");
                        break;
                }
            }
            
        }
    }
}
