using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mikulas
{
    internal class HorseSledge : Vehicle
    {
        const int horseFactor = 60;
        public HorseSledge()
        {
            idNovel();
        }
        public override int getPrice()
        {
            return base.getPrice() * horseFactor;
        }
        public override string GetType()
        {
            return "Lovas" + base.GetType();
        }
    }
}
