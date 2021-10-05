using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TypeLibrary.Models;
using TypeLibrary.ViewModels;
namespace TypeLibrary.Interface
{
   public interface IWhipService
    {
        uspCheckUsername CheckUsername(string UserName);
        uspCustomerID GetCustomerID(int UserID);
        bool InsertCustomer(Customer customer);
        bool InsertStuff(Stuff stuff);
        bool InsertModel(Model model);
        bool InsertMake(Make make);
        bool AddService(Service service);
        bool AddSchedule(AddSchedule schedule);
        uspCustomerID InsertUser(User user); 
        uspUserRole Login(string userName, string password);
        List <CustBooking> GetCustBooking(int CustId);
        uspEmpRole EmpRole(string userName, string password);
        uspUserProfile GetProfile(string user);

        bool UpdateProfile(UpdateProfile update);

      //  List<uspModelDrop> GetModelDrops();
        List<uspModelDrop> GetMakeDrops();
        List<uspModels> GetModels(int modelID);
        List<uspServices> GetServices();
        bool BookService(uspBookService book);
        //List<uspDropListBooking> GetDropBooking();

        List<uspDropListBooking> GetDropVehicle(int customerID);
        List<uspDropListBooking> GetDropService();
        List<uspDropListBooking> GetDropMechanic();
        List<DropMechanics> DropMechanic();
        List<uspDropBookings> GetDropBookings();
        bool InsertVehicle(Vehicle vehicle);
        List<CheckedIn> GetCheckedInVehicles();
        List<uspGetCustomerSchedule> GetCustSchedule(int customerID);

        bool DeleteVehicle(int vehicleID);
        bool DeleteBooking(int bookId);
        bool CheckIn(int bookId, int customerID);

        bool AddVehicleReport(uspAddReport report);

    }
}
