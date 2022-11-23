using System;

namespace Utazasi_Iroda
{
    abstract class Route
    {
        public virtual int getPrice() { return 1; }
        public new virtual string GetType()
        {
            return "";
        }
    }
}
