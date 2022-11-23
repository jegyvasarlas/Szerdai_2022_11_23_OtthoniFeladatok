using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mikulas
{
    class ReindeerSleigh: Vehicle
    {
        const int reindeerFactor = 1000;
        public ReindeerSleigh()
        {
           idNovel();
        }
        public override int getPrice()
        {
            return base.getPrice() * reindeerFactor;
        }
        public override string GetType()
        {
            return "Renszarvas" + base.GetType();
        }
    }
}
