using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TypeLibrary.Models
{
    public class uspAddReport
    {
        public int EmployeeID { get; set; }
        public int ScheduleID { get; set; }
        public string Report { get; set; }
        public string Solution { get; set; }
        public DateTime Date { get; set; }
    }
}
