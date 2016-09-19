using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        public static string conString = "Data Source=localhost;Initial Catalog=TaxiSystem;Integrated Security=True;MultipleActiveResultSets=True";
        static void Main(string[] args)
        {

            DataTable table = new DataTable();

            using (SqlConnection con = new SqlConnection(conString))
            {

                using (SqlCommand cmd = new SqlCommand("spGetUser", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        con.Open();

                        cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = "uffe.frandsen@gmail.com";

                        da.Fill(table);

                        if (table.Rows.Count == 1)
                        {
                            DataRow row = table.Rows[0];
                            Console.WriteLine(row["fName"]);

                        }
                    }
                }
            }

        }
    }
    }
