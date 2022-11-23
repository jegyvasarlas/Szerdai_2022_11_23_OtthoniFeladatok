using System;

namespace Utazasi_Iroda
{    
    class ShipRoute : Route
    {
        const int averageShipRoute = 60;
        public override int getPrice()
        {
            return base.getPrice() * averageShipRoute;
        }
        public override string GetType() 
        {
            return "averageShipRoute";
        }
    }
}