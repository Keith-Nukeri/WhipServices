using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TypeLibrary;
using TypeLibrary.Models;
using TypeLibrary.ViewModels;
using TypeLibrary.Interface;

namespace BLL
{
    public class DBHandler
    {
        private readonly IWhipService dbaccess;
        public DBHandler(IWhipService db)
        {
            this.dbaccess = db;
        }
        public uspCheckUsername CheckUsername(string UserName)
        {
            return dbaccess.CheckUsername(UserName);
        }
        public uspCustomerID GetCustomerID(int UserID)
        {
            return dbaccess.GetCustomerID(UserID);
        }
        public bool InsertCustomer(Customer customer)
        {
            return dbaccess.InsertCustomer(customer);
        }
        public bool AddService(Service service)
        {
            return dbaccess.AddService(service);
        }
        public bool InsertStuff(Stuff stuff)
        {
            return dbaccess.InsertStuff(stuff);
        }
        public uspCustomerID InsertUser(User user)
        {
            return dbaccess.InsertUser(user);
        }

        public bool InsertVehicle(Vehicle vehicle)
        {
            return dbaccess.InsertVehicle(vehicle);
        }
        public bool InsertModel(Model model)
        {
            return dbaccess.InsertModel(model);
        }
        public bool InsertMake(Make make)
        {
            return dbaccess.InsertMake(make);
        }
        public uspUserRole Login(string userName, string password)
        {
            return dbaccess.Login(userName, password);
        }
        public List<CustBooking> GetCustBooking(int CustId)
        {
            return dbaccess.GetCustBooking(CustId);
        }
        public uspEmpRole EmpRole(string userName, string password)
        {
            return dbaccess.EmpRole(userName, password);
        }

        public uspUserProfile GetProfile(string user)
        {
            return dbaccess.GetProfile(user);
        }

        public bool UpdateProfile(UpdateProfile update)
        {
            return dbaccess.UpdateProfile(update);
        }

       
        public List<uspModelDrop> GetMakeDrops()
        {
            return dbaccess.GetMakeDrops();
        }

        public List<uspModels> GetModels(int makeID)
        {
            return dbaccess.GetModels(makeID);
        }

        public List<uspServices> GetServices()
        {
            return dbaccess.GetServices();
        }

       
        public bool BookService(uspBookService book)
        {
            return dbaccess.BookService(book);
        }
       
        public List<uspDropListBooking> GetDropVehicle(int customerID)
        {
            return dbaccess.GetDropVehicle(customerID);
        }

        public List<uspDropListBooking> GetDropService()
        {
            return dbaccess.GetDropService();
        }
        public List<uspDropListBooking> GetDropMechanic()
        {
            return dbaccess.GetDropMechanic();
        }
        public List<DropMechanics> DropMechanic()
        {
            return dbaccess.DropMechanic();
        }
        public List<uspDropBookings> GetDropBookings()
        {
            return dbaccess.GetDropBookings();
        }
        public List<CheckedIn> GetCheckedInVehicles()
        {
            return dbaccess.GetCheckedInVehicles();
        }
        List<uspGetCustomerSchedule> GetCustSchedule(int customerID)
        {
            return dbaccess.GetCustSchedule(customerID);
        }

        public bool DeleteVehicle(int vehilceID)
        {
            return dbaccess.DeleteVehicle(vehilceID);
        }
        public bool CheckIn(int bookID,int customerID)
        {
            return dbaccess.CheckIn(bookID, customerID);
        }

        public bool DeleteBooking(int bookId)
        {
            return dbaccess.DeleteBooking(bookId);
        }

        public bool AddSchedule(AddSchedule schedule)
        {
            return dbaccess.AddSchedule(schedule);
        }

        public bool AddVehicleReport(uspAddReport report)
        {
            return dbaccess.AddVehicleReport(report);
        }

    }
}
