using System;

namespace Utazasi_Iroda
{
    class Program
    {
        static void Main(string[] args)
        {
            Route[] routes = new Route[3];
            routes[0] = new AirRoute();
            routes[1] = new LandRoute();
            routes[2] = new ShipRoute();

            for (int i = 0; i < routes.Length; i++)
            {
                Console.WriteLine(routes[i].GetType() + " = " + routes[i].getPrice() + " km/h");
                Console.WriteLine();
            }

            Console.ReadKey();
        }
    }
}
