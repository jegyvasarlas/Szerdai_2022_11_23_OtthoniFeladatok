using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mikulas
{
    class HuskySledge : Vehicle
    {
        const int huskyFactor = 50;
        public HuskySledge()
        {
            idNovel();
        }
        public override int getPrice()
        {
            return base.getPrice() * huskyFactor;
        }
        public override string GetType()
        {
            return "Husky" + base.GetType();
        }
    }
}
