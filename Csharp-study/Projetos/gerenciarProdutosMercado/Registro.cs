using System;
using System.Text;
using System.Linq;
using System.IO;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace GerenciarProdutosMercado
{
    class Registro
    {
        //Conexão DB
        public MySqlConnection connection = new MySqlConnection("datasource=localhost;port=3306;username=root;password=toor");

        //Strings

        public void Atualizar()
        {
            Console.WriteLine("Nome do produto vendido?");
            string updatenome = Console.ReadLine();
            
            
            
            string updateQuery = "UPDATE magodb.pvendas SET vendas = "+1+" WHERE produto = '"+updatenome+"' ";
            connection.Open();

            try
            {
                MySqlCommand command = new MySqlCommand(updateQuery, connection);
                if(command.ExecuteNonQuery() == 1)
                {
                    Console.WriteLine("\nValor atualizado!");
                            System.Threading.Thread.Sleep(2000);                

                }
                else
                {
                    Console.WriteLine("Erro! Verificar código!");
                            System.Threading.Thread.Sleep(2000);                

                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            connection.Close();
            
        }
    }
}