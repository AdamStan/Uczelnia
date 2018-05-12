using System;

namespace EncjeUczelnii
{
    public class Tutor
    {
        public int id { get; set; }
        public String name { get; set; }
        public String surname { get; set; }
        public String postCode { get; set; }
        public String street { get; set; }
        public String number { get; set; }
        //fields need to login:
        //string are immutables, we have to.
        public String username{ get; set; }
        public String password{ get; set; }

        public Tutor()
        {
            this.name = "xyz";
            this.surname = "abc";
        }
    }
}