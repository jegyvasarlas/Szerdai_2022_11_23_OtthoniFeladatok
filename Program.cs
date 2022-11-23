using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mikulas
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Vehicle[] jarmuvek = new Vehicle[4];

            jarmuvek[0] = new HuskySledge();
            jarmuvek[1] = new ReindeerSleigh();
            jarmuvek[2] = new HorseSledge();
            jarmuvek[3] = new HuskySledge();

            for(int i = 0; i < jarmuvek.Length; i++)
            {
                Console.WriteLine(jarmuvek[i].getId() + ".: " + jarmuvek[i].GetType());
                Console.WriteLine(jarmuvek[i].getPrice());
                Console.WriteLine();
            }

            Console.ReadKey();
        }
    }
}
