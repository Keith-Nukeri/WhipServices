using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TypeLibrary.ViewModels
{
    public class uspGetCustomerSchedule
    {
        public string CustomerName { get; set; }
        public string ServiceName { get; set; }
        public DateTime Date { get; set; }
        public string Mechanic { get; set; }
    }
}
