using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using TypeLibrary.Interface;
using TypeLibrary.Models;
using TypeLibrary.ViewModels;
namespace DAL
{
   public class DBAccess: IWhipService
    {
        public uspCheckUsername CheckUsername(string UserName)
        {
            uspCheckUsername user = null;
            SqlParameter[] pars = new SqlParameter[]
            {
                new SqlParameter("@UserName", UserName)
            };

            using (DataTable table = SqlDBHelper.ParamSelect("uspCheckUsername",
            CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];
                    user = new uspCheckUsername
                    {
                        UserName = Convert.ToString(row["UserName"])
                        
                    };

                }
            }
            return user;
        }//Login verification
        public uspCustomerID GetCustomerID(int UserID)
        {
            uspCustomerID user = null;
            SqlParameter[] pars = new SqlParameter[]
            {
                new SqlParameter("@UserID", UserID)
            };

            using (DataTable table = SqlDBHelper.ParamSelect("uspCustomerID",
            CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];
                    user = new uspCustomerID
                    {
                        CustomerID = Convert.ToInt32(row["CustomerID"])
                        
                    };

                }
            }
            return user;
        }//Login verification
        public uspCustomerID InsertUser(User user)
        {
            uspCustomerID cust = null;
            SqlParameter[] pars = new SqlParameter[]
            {
                new SqlParameter("@UserName", user.UserName),
                new SqlParameter("@Password", user.Password),
                new SqlParameter("@UserRole", user.UserRole)
            };

            using (DataTable table = SqlDBHelper.ParamSelect("uspInsertUser",
            CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];
                    cust = new uspCustomerID
                    {
                        CustomerID = Convert.ToInt32(row["UserID"])

                    };

                }
            }
            return cust;
        }//Insert User Details

        public bool InsertCustomer(Customer customer)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var prop in customer.GetType().GetProperties())
            {
                if (prop.GetValue(customer) != null)
                {
                    parameters.Add(new SqlParameter("@" + prop.Name.ToString(), prop.GetValue(customer)));
                }
            }
            
            return SqlDBHelper.NonQuery("uspInsertCustomer", CommandType.StoredProcedure,
                parameters.ToArray());
        }//Add Customer

        public bool AddService(Service service)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var prop in service.GetType().GetProperties())
            {
                if (prop.GetValue(service) != null)
                {
                    parameters.Add(new SqlParameter("@" + prop.Name.ToString(), prop.GetValue(service)));
                }
            }

            return SqlDBHelper.NonQuery("uspAddService", CommandType.StoredProcedure,
                parameters.ToArray());
        }//Add Service

        public bool InsertStuff(Stuff stuff)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var prop in stuff.GetType().GetProperties())
            {
                if (prop.GetValue(stuff) != null)
                {
                    parameters.Add(new SqlParameter("@" + prop.Name.ToString(), prop.GetValue(stuff)));
                }
            }

            return SqlDBHelper.NonQuery("uspInsertStuff", CommandType.StoredProcedure,
                parameters.ToArray());
        }//Add Stuff

        public uspUserRole Login(string UserName, string Password)
        {
            uspUserRole ur = null;
            SqlParameter[] pars = new SqlParameter[]
            {
                new SqlParameter("@UserName", UserName),
                new SqlParameter("@Password", Password)
            };

            using (DataTable table = SqlDBHelper.ParamSelect("uspLoginCheck",
            CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];
                    ur = new uspUserRole
                    {
                        UserID = Convert.ToInt32(row["UserID"]),
                        UserName = Convert.ToString(row["UserName"]),
                        Password = Convert.ToString(row["Password"]),
                        UserRole = Convert.ToString(row["UserRole"])/*,
                        eRole = Convert.ToString(row["eRole"])*/
                    };

                }
            }
            return ur;
        }//Login verification

        public uspEmpRole EmpRole(string UserName, string Password)
        {
            uspEmpRole ur = null;
            SqlParameter[] pars = new SqlParameter[]
            {
                new SqlParameter("@UserName", UserName),
                new SqlParameter("@Password", Password)
            };

            using (DataTable table = SqlDBHelper.ParamSelect("uspGetEmpRole",
            CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];
                    ur = new uspEmpRole
                    {
                        
                        eRole = Convert.ToString(row["eRole"])
                    };

                }
            }
            return ur;
        }//Login verification

        public uspUserProfile GetProfile(string UserName)
        {
            uspUserProfile prof = null;
            SqlParameter[] pars = new SqlParameter[]
            {
                new SqlParameter("@UserName", UserName)
            };

            using (DataTable table = SqlDBHelper.ParamSelect("uspUserProfile",
            CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count == 1)
                {
                    DataRow row = table.Rows[0];
                    prof = new uspUserProfile
                    {
                        Title = Convert.ToString(row["Title"]),
                        FirstName = Convert.ToString(row["FirstName"]),
                        Surname = Convert.ToString(row["Surname"]),
                        Email = Convert.ToString(row["Email"]),
                        StreetAddress = Convert.ToString(row["StreetAddress"]),
                        Suburb = Convert.ToString(row["Suburb"]),
                        City = Convert.ToString(row["City"]),
                        Province = Convert.ToString(row["Province"]),
                        ZipCode = Convert.ToString(row["ZipCode"]),
                        PhoneNumber = Convert.ToString(row["PhoneNumber"]),
                        DOB = Convert.ToString(row["DOB"])
                    };
                }
            }
            return prof;
        }//Get User Profile

        public bool UpdateProfile(UpdateProfile update)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var prop in update.GetType().GetProperties())
            {
                if (prop.GetValue(update) != null)
                {
                    parameters.Add(new SqlParameter("@"+prop.Name.ToString(), prop.GetValue(update)));
                }
            }
            return SqlDBHelper.NonQuery("uspUpdateProfile", CommandType.StoredProcedure,
                parameters.ToArray());
        }//Update profile

        public List<uspBusiness> GetBusiness()
        {
            List<uspBusiness> data = new List<uspBusiness>();

            using (DataTable table = SqlDBHelper.Select("uspGetBusiness",
                CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspBusiness bdata = new uspBusiness
                        {
                           Tel  = Convert.ToString(row["Name"]),
                        };
                        data.Add(bdata);
                    };
                }
            }
            return data
;
        }//Get Business Date

        public List<uspModelDrop> GetMakeDrops()
        {
            List<uspModelDrop> make = new List<uspModelDrop>();

            using (DataTable table = SqlDBHelper.Select("uspMakeDrop",
                CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspModelDrop drop = new uspModelDrop
                        {
                            MakeID = Convert.ToInt32(row["MakeID"]),
                            MakeName = Convert.ToString(row["MakeName"])
                        };
                        make.Add(drop);
                    };
                }
            }
            return make
;
        }  //drop down list for car make 
        
        public List<uspModels> GetModels(int makeID)
        {
            List<uspModels> model = new List<uspModels>();
            SqlParameter[] pars = new SqlParameter[]
           {
                new SqlParameter("@MakeID", makeID)
           };

            using (DataTable table = SqlDBHelper.ParamSelect("uspGetModels",
                CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspModels mod = new uspModels
                        {
                            ModelID = Convert.ToInt32(row["ModelID"]),
                            ModelName = Convert.ToString(row["ModelName"])
                        };
                        model.Add(mod);
                    };
                }
            }
            return model
;
        } //drop down list for models

        public List<uspServices> GetServices()
        {
            List<uspServices> list = new List<uspServices>();
            

            using (DataTable table = SqlDBHelper.Select("uspGetServices",
                CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspServices services = new uspServices
                        {
                            Name = Convert.ToString(row["Name"]),
                            Description = Convert.ToString(row["Description"]),
                            Price = Convert.ToDouble(row["Price"])
                        };
                        list.Add(services);
                    };
                }
            }
            return list
;
        } // Get Services

        public bool BookService(uspBookService book)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var prop in book.GetType().GetProperties())
            {
                if (prop.GetValue(book) != null)
                {
                    parameters.Add(new SqlParameter("@" + prop.Name.ToString(), prop.GetValue(book)));
                }
            }
            
            return SqlDBHelper.NonQuery("uspBookService", CommandType.StoredProcedure,
                parameters.ToArray());
        }//Book Service

        public List<uspDropListBooking> GetDropMechanic()
        {
            List<uspDropListBooking>  list = new List<uspDropListBooking>();

            using (DataTable table = SqlDBHelper.Select("uspDropMechanic",
                CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspDropListBooking drop = new uspDropListBooking
                        {
                            MechanicID = Convert.ToInt32(row["EmployeeID"]),
                            MechanicName = Convert.ToString(row["EmployeeName"])
                        };
                        list.Add(drop);
                    };
                }
            }
            return list
;
        }  //drop down list for booking car screen

        public List<uspDropListBooking> GetDropService()
        {
            List<uspDropListBooking> list = new List<uspDropListBooking>();

            using (DataTable table = SqlDBHelper.Select("uspDropService",
                CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspDropListBooking drop = new uspDropListBooking
                        {
                            ServiceID = Convert.ToInt32(row["ServiceID"]),
                            ServiceName = Convert.ToString(row["ServiceName"])
                        };
                        list.Add(drop);
                    };
                }
            }
            return list
;
        }

        public List<uspDropListBooking> GetDropVehicle(int customerID)
        {
            List<uspDropListBooking> list = new List<uspDropListBooking>();
            SqlParameter[] pars = new SqlParameter[]
          {
                new SqlParameter("@CustomerID", customerID)
          };
            using (DataTable table = SqlDBHelper.ParamSelect("uspDropVehicle",
                CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspDropListBooking drop = new uspDropListBooking
                        {
                            VehicleID = Convert.ToInt32(row["VehicleID"]),
                            RegistrationNo = Convert.ToString(row["RegistrationNo"])
                        };
                        list.Add(drop);
                    };
                }
            }
            return list
;
        }  //drop down list for customer vehicles

        public bool InsertVehicle(Vehicle vehicle)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var prop in vehicle.GetType().GetProperties())
            {
                if (prop.GetValue(vehicle) != null)
                {
                    parameters.Add(new SqlParameter("@" + prop.Name.ToString(), prop.GetValue(vehicle)));
                }
            }
            
            return SqlDBHelper.NonQuery("uspAddVehicle", CommandType.StoredProcedure,
                parameters.ToArray());
        }//Add Vehicle
        public bool InsertModel(Model model)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var prop in model.GetType().GetProperties())
            {
                if (prop.GetValue(model) != null)
                {
                    parameters.Add(new SqlParameter("@" + prop.Name.ToString(), prop.GetValue(model)));
                }
            }

            return SqlDBHelper.NonQuery("uspAddModel", CommandType.StoredProcedure,
                parameters.ToArray());
        }//Add Model

        public bool InsertMake(Make make)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var prop in make.GetType().GetProperties())
            {
                if (prop.GetValue(make) != null)
                {
                    parameters.Add(new SqlParameter("@" + prop.Name.ToString(), prop.GetValue(make)));
                }
            }

            return SqlDBHelper.NonQuery("uspAddMake", CommandType.StoredProcedure,
                parameters.ToArray());
        }//Add Model

        public List<uspGetCustomerSchedule> GetCustSchedule(int customerID)
        {
            List<uspGetCustomerSchedule> booking = new List<uspGetCustomerSchedule>();
            SqlParameter[] pars = new SqlParameter[]
           {
                new SqlParameter("@CustomerID", customerID)
           };

            using (DataTable table = SqlDBHelper.ParamSelect("uspGetUserBooking",
                CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspGetCustomerSchedule list = new uspGetCustomerSchedule
                        {
                            CustomerName = Convert.ToString(row["CustomerName"]),
                            ServiceName = Convert.ToString(row["ServiceName"]),
                            Date = Convert.ToDateTime(row["Date"]), 
                            Mechanic = Convert.ToString(row["EmployeeName"])
                        };
                        booking.Add(list);
                    };
                }
            }
            return booking;
        }// get customers bookings

        public bool DeleteVehicle(int vehicleID)
        {

            SqlParameter[] pars = new SqlParameter[]
            {
                   new SqlParameter("VehicleID", vehicleID)
            };
            
            return SqlDBHelper.NonQuery("uspDeleteVehicle", CommandType.StoredProcedure,
                pars.ToArray());
        }

        public List<uspDropBookings> GetDropBookings()
        {
            List<uspDropBookings> list = new List<uspDropBookings>();

            using (DataTable table = SqlDBHelper.Select("uspDropBookings",
                CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        uspDropBookings drop = new uspDropBookings
                        {
                            BookingNo = Convert.ToInt32(row["BookingNo"])
                        };
                        list.Add(drop);
                    };
                }
            }
            return list
;
        }  //drop down list for bookings pending

        public bool AddSchedule(AddSchedule schedule)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var prop in schedule.GetType().GetProperties())
            {
                if (prop.GetValue(schedule) != null)
                {
                    parameters.Add(new SqlParameter("@" + prop.Name.ToString(), prop.GetValue(schedule)));
                }
            }

            return SqlDBHelper.NonQuery("uspAddSchedule", CommandType.StoredProcedure,
                parameters.ToArray());
        }//Add Schedule

        public List<CustBooking> GetCustBooking(int customerID)
        {
            List<CustBooking> list = new List<CustBooking>();
            SqlParameter[] pars = new SqlParameter[]
          {
                new SqlParameter("@CustId", customerID)
          };
            using (DataTable table = SqlDBHelper.ParamSelect("uspGetCustBooking",
                CommandType.StoredProcedure, pars))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        CustBooking drop = new CustBooking
                        {
                            BookNo = Convert.ToInt32(row["BookNo"])
                        };
                        list.Add(drop);
                    };
                }
            }
            return list
;
        }  //Get customer bookings DropDown List verification

        public bool DeleteBooking(int bookId)
        {

            SqlParameter[] pars = new SqlParameter[]
            {
                   new SqlParameter("@BookId", bookId)
            };

            return SqlDBHelper.NonQuery("uspDeleteBooking", CommandType.StoredProcedure,
                pars.ToArray());
        }

        public bool CheckIn( int bookID, int customerID)
        {
            SqlParameter[] pars = new SqlParameter[]
            {
                   new SqlParameter("@BookId", bookID), 
                   new SqlParameter("@CustomerID", customerID)
            };
            return SqlDBHelper.NonQuery("uspCheckIn", CommandType.StoredProcedure,
               pars.ToArray());
        }

        
        public List<CheckedIn> GetCheckedInVehicles()
        {
            List<CheckedIn> list = new List<CheckedIn>();

            using (DataTable table = SqlDBHelper.Select("uspCheckedIn",
                CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        CheckedIn drop = new CheckedIn
                        {
                            RegistrationNo = Convert.ToString(row["RegistrationNo"]),
                            ScheduleID = Convert.ToInt32(row["ScheduleID"])
                        };
                        list.Add(drop);
                    };
                }
            }
            return list
;
        } //drop down list for checked in vehicles

        public bool AddVehicleReport(uspAddReport report)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            foreach (var prop in report.GetType().GetProperties())
            {
                if (prop.GetValue(report) != null)
                {
                    parameters.Add(new SqlParameter("@" + prop.Name.ToString(), prop.GetValue(report)));
                }
            }

            return SqlDBHelper.NonQuery("uspAddReport", CommandType.StoredProcedure,
                parameters.ToArray());
        }//Add vehicle service report 

        public List<DropMechanics> DropMechanic()
        {
            List<DropMechanics> list = new List<DropMechanics>();

            using (DataTable table = SqlDBHelper.Select("uspDropMechanic",
                CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    foreach (DataRow row in table.Rows)
                    {
                        DropMechanics drop = new DropMechanics
                        {
                            MechanicID = Convert.ToInt32(row["EmployeeID"]),
                            MechanicName = Convert.ToString(row["EmployeeName"])
                        };
                        list.Add(drop);
                    };
                }
            }
            return list
;
        }  //drop down list for booking car screen

    }//End DBAccess
}//End Namespace
