using System;
using System.Text;
using System.Linq;
using System.IO;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace SistemadeEventos
{
    class Eventos
    {
        //Conexão BD
        public MySqlConnection connection = new MySqlConnection("datasource=localhost;port=3306;username=root;password=toor");

        //Definindo variaveis 
        public string nomev, enderecov, categoria, descricao, horario;

        public void Capturar()
        {
            //Fazer a captura das informações
            Console.WriteLine("\nEntrar com informações do evento!\n");
            Console.WriteLine("Nome do evento:");
                nomev = Console.ReadLine();
            Console.WriteLine("Endereço do evento:");
                enderecov = Console.ReadLine();
            Console.WriteLine("Categoria do evento:");
                categoria = Console.ReadLine();
            Console.WriteLine("Descrição do evento:");
                descricao = Console.ReadLine();
            Console.WriteLine("Horário do evento:"); /* FAZER O FIX IT DO HORÁRIO DO EVENTO DO EVENTO */
                horario = Console.ReadLine();
            Console.WriteLine("\n");
            
        }

        //Método para enviar para o banco de dados
        public void Cadastrar()
        {
            //Inserção da Query
            string insertQuery = "INSERT INTO eventsdb.eventos(nomev, enderecov, categoria, descricao, horario) VALUES('"+nomev+"','"+enderecov+"','"+categoria+"','"+descricao+"','"+horario+"')";            
            
            //Conexão aberta
            connection.Open();

            //Inserção de query && Acesso ao banco de dados
            MySqlCommand command = new MySqlCommand(insertQuery, connection);

            //Verificar se foi gravado
            if(command.ExecuteNonQuery()==1)
                {
                    Console.WriteLine("Evento gravado!!\n");
                        System.Threading.Thread.Sleep(2000);                
                
                }else
                {
                    Console.WriteLine("Erro! Verificar código!");
                }

            //Fechar conexão
            connection.Close();
            
            //Jogar informaçãos para dentro do MySql            
        }

        //Método para consultar
        public void Consultar()
        {
            MySqlCommand command = connection.CreateCommand();
            command.CommandText = "Select * from eventsdb.eventos";
            
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
                Console.WriteLine("Nome: " + reader["nomev"].ToString());
                Console.WriteLine("Endereço: " + reader["enderecov"].ToString());
                Console.WriteLine("Categoria: " + reader["categoria"].ToString());
                Console.WriteLine("Descricoa: " + reader["descricao"].ToString());
                Console.WriteLine("Horario: " + reader["horario"].ToString());
                Console.WriteLine("");

            }

            Console.WriteLine("Inserir opção do menu!");
            
            connection.Close();

        }

        //Método para deletar evento

        public void Deletar()
        {

            Console.WriteLine("Entrar com id do evento a ser deletado:");
            int idvent = int.Parse(Console.ReadLine());

            try
            {
                
            //Apagar evento por ID
            string deleteQuery = "DELETE FROM eventsdb.eventos WHERE id="+idvent;
            
            connection.Open();
            MySqlCommand command = new MySqlCommand(deleteQuery, connection);

                if(command.ExecuteNonQuery()==1)
                {
                    Console.WriteLine("\nEvento deletado!");
                        System.Threading.Thread.Sleep(2000);                
                }
                else
                {
                    Console.WriteLine("\nEvento não encontrado ou não deletado!");
                        System.Threading.Thread.Sleep(2000);                
                
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            connection.Close();

        }

        //Método salvar dentro de events.data
        public void Savevent()
        {
                using (StreamWriter sw = new StreamWriter("events.data", true)){

                        //Escrevendo em .data
                        sw.WriteLine("Nome do evento: " + nomev);
                        sw.WriteLine("Endereço do evento: " + enderecov);
                        sw.WriteLine("Categoria do evento: " + categoria);
                        sw.WriteLine("Descrição do evento: " + descricao);
                        sw.WriteLine("Horário de inicio: " + horario);
                        sw.WriteLine("Evento cadastrado ás: " + DateTime.Now.Hour + ":" + DateTime.Now.Minute);
                        
                        sw.Close();
                }            
        }

        //Método acessar o events.data
        public void Openvent()
        {
            string arquivo1 = System.IO.File.ReadAllText("events.data");
                System.Console.WriteLine("\n" + arquivo1);
                                
            Console.WriteLine("Inserir opção do menu!");
        }
        

    }
}