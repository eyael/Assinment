using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyFirstWebApp
{
    public class Patient
    {
        public int id { get; set; }
        public string firstName { get; set; }
        public string LastName { get; set; }
        public string ssn { get; set; } 
        public string adress { get; set; } 
        public string zipCode { get; set; } 
        public string aptNum { get; set; }

        public string phone { get; set; }

        public string sex { get; set; }

        public string previousConditions { get; set; }

    }
}