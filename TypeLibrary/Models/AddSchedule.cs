using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TypeLibrary.Models
{
   public class AddSchedule
    {
        public int BookingNo { get; set; }
        public int MechanicID { get; set; }
        public DateTime BookDate { get; set; }
        public DateTime Time { get; set; }
    }
}
