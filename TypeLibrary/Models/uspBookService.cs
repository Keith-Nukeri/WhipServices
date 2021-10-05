using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TypeLibrary.Models
{
    public class uspBookService
    {
        public int CustomerID { get; set; }
        public DateTime BookDate { get; set; }
        public int ServiceID { get; set; }
        public int VehicleID { get; set; }
        public string Description { get; set; }
        public int MechanicId { get; set; }

    }
}
