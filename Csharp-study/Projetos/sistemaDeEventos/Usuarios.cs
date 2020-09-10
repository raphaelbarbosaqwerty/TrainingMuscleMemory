using System;
using System.Text;
using System.Linq;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace SistemadeEventos
{
    class Usuarios
    {
        public int cpf;
        public string nome, senha, cidade, nomevent;

        /* MySql connect, vai fazer o login com o banco de dados */
        public MySqlConnection connection = new MySqlConnection("datasource=localhost;port=3306;username=root;password=toor");
        
        //Método Capturar
        public void Capturar()
        {
            //Fazer a captura das informações
            Console.WriteLine("\nEntrar com informações do usuário!\n");
            Console.WriteLine("CPF do usuário:");
                cpf = int.Parse(Console.ReadLine());
            Console.WriteLine("Nome do usuário:");
                nome = Console.ReadLine();
            Console.WriteLine("Senha do usuário:");
                senha = Console.ReadLine();
            Console.WriteLine("Cidade do usuário:");
                cidade = Console.ReadLine();
            Console.WriteLine("\n");
        }
        
        //Método Cadastrar
        public void Cadastrar()
        {
            //Inserção da Query
            string insertQuery = "INSERT INTO eventsdb.users(cpf, nome, senha, cidade) VALUES("+cpf+",'"+nome+"','"+senha+"','"+cidade+"')";            
            
            //Conexão aberta
            connection.Open();
            
            //Inserção de query && Acesso ao banco de dados
            MySqlCommand command = new MySqlCommand(insertQuery, connection);

            //Verificar se foi gravado
            if(command.ExecuteNonQuery()==1)
                {
                    Console.WriteLine("Usuário gravado!!\n");
                        System.Threading.Thread.Sleep(2000);                
                
                }else
                {
                    Console.WriteLine("Erro! Verificar código!");
                }

            //Fechar conexão
            connection.Close();
        }

        public void Participante()
        {
            //Entrar com nome de usuário
            Console.WriteLine("Entrar com o nome do usuário: ");
            nome = Console.ReadLine();
            Console.WriteLine("Entrar com o nome do evento: ");
            nomevent = Console.ReadLine();
            
            //String do particapante para enviar para o command
            string participante = "INSERT INTO eventsdb.participar(evento, participante) VALUES('"+nomevent+"', '"+nome+"')";
            
            //Abrir conexão
            connection.Open();

            //Verificar conexão e enviar para DB
            MySqlCommand command = new MySqlCommand(participante, connection);
            
            //Verificação se commando foi executado
            if(command.ExecuteNonQuery()==1)
            {
                Console.WriteLine("\nUsuário cadastrado em evento!");
                    System.Threading.Thread.Sleep(2000);                

            }else
            {
                Console.WriteLine("Erro! Verificar código!");
            }

            //Fechar conexão
            connection.Close();
        }

        //Método deletar participante

        public void Deletarpar()
        {
            Console.WriteLine("Entrar com id do participante:");
            int idparticipante = int.Parse(Console.ReadLine());

            try
            {
                
            //Apagar participante por ID
            string deleteQuery = "DELETE FROM eventsdb.participar WHERE id="+idparticipante;
            
            connection.Open();
            MySqlCommand command = new MySqlCommand(deleteQuery, connection);

                if(command.ExecuteNonQuery()==1)
                {
                    Console.WriteLine("\nParticipante deletado!");
                        System.Threading.Thread.Sleep(2000);                
                
                }
                else
                {
                    Console.WriteLine("\nParticipante não encontrado ou não deletado!");
                        System.Threading.Thread.Sleep(2000);                

                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            connection.Close();
        }

        //Método visualizar participantes

        public void Consultarparti()
        {
            MySqlCommand command = connection.CreateCommand();
            command.CommandText = "Select * from eventsdb.participar";
            
            try
            {
                connection.Open();                
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            
            MySqlDataReader reader = command.ExecuteReader();
            
            while(reader.Read())
            {
                Console.WriteLine("");
                Console.WriteLine("ID: " + reader["id"].ToString());
                Console.WriteLine("Evento: " + reader["evento"].ToString());
                Console.WriteLine("Participante: " + reader["participante"].ToString());
                Console.WriteLine("");

            }

            Console.WriteLine("Inserir opção do menu!");
            
            connection.Close();

        }

    }
}