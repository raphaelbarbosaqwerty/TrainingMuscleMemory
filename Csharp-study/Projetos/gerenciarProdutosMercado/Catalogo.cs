using System;
using System.Text;
using System.Linq;
using System.IO;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace GerenciarProdutosMercado
{
    class Catalogo
    {
        //Conexão DB
        public MySqlConnection connection = new MySqlConnection("datasource=localhost;port=3306;username=root;password=toor");

        //Método consultar
        public void Consultar()
        {
        //Capturar
            Console.WriteLine("Qual categoria deseja visualizar? ");
            string concategoria = Console.ReadLine();

        //MySql inicio 
            MySqlCommand command = connection.CreateCommand();
            command.CommandText = "Select id, nome, empresa, categoria, preco from magodb.produtos WHERE categoria = '"+concategoria+"'";
            
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
                Console.WriteLine("Nome: " + reader["nome"].ToString());
                Console.WriteLine("Empresa: " + reader["empresa"].ToString());
                Console.WriteLine("Categoria: " + reader["categoria"].ToString());
                Console.WriteLine("Preço: " + reader["preco"].ToString());
                Console.WriteLine("");

            }

            System.Threading.Thread.Sleep(2000);
            Console.WriteLine("Inserir opção do menu!");
            
            connection.Close();
        }

    }
}