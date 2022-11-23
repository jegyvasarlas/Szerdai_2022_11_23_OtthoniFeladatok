using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mikulas
{
    abstract class Vehicle
    {
        const int basePrice = 50;
        static uint idCounter = 0;
        protected uint id;
        protected void idNovel() { id = ++idCounter; }
        public uint getId() { return id; }
        public virtual int getPrice() { return basePrice; }
        public new virtual string GetType()
        {
            return " szan fenntartasi koltsege: ";
        }
    }
}
