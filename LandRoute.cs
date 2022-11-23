using System;

namespace Utazasi_Iroda
{
    class LandRoute : Route
    {
        const int averageLandRoute = 75;
        public override int getPrice()
        {
            return base.getPrice() * averageLandRoute;
        }
        public override string GetType() 
        { 
            return "averageLandRoute";
        }
    }
}