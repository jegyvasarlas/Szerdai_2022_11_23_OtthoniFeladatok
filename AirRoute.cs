using System;

namespace Utazasi_Iroda
{
    class AirRoute : Route
    {
        const int averageAirRoute = 900;
        public override int getPrice()
        {
            return base.getPrice() * averageAirRoute;
        }
        public override string GetType()
        {
            return "averageAirRoute";
        }
    }
}