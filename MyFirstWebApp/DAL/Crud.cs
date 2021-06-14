using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MyFirstWebApp.DAL
{
    public class Crud
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());

        public string InsertPatient(Patient pt)
        {

            string message = "Succesfull Insertion of message";

            SqlCommand cmd = new SqlCommand("insert into patients (firstName, LastName, ssn, adress, zipCode,aptNum,phone) values ('" + pt.firstName +
                "','" + pt.LastName + "','" + pt.ssn + "','" + pt.adress + "','" + pt.zipCode + "','" + pt.aptNum + "','" + pt.phone + "')", con);
            try
            {


                con.Open();
                cmd.ExecuteNonQuery();
                return message;

            }

            catch (Exception ex)
            {
                message = "Some error encountered Please report the following " + ex.Message;
                return message;

            }

            finally
            {
                con.Close();
            }

        }




        public DataTable GetPatient()
        {
            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter("select * from patients", con);

            da.Fill(dt);
            return dt;
        }

        public string DeletePatient(int id)
        {
            string message = "Deletion Successfull";
            SqlCommand cmd = new SqlCommand("Delete from Patients where id = '" + id + "'", con);
            try
            {


                con.Open();
                cmd.ExecuteNonQuery();
                return message;

            }

            catch (Exception ex)
            {
                message = "Server error is  " + ex.Message;
                return message;

            }

            finally
            {
                con.Close();
            }
        }
        public string UpdatePatientRec(Patient pt)
        {
            string message = "Updation Successfull";
            SqlCommand cmd = new SqlCommand("update patients set firstName = '" + pt.firstName+ "',LastName='" + pt.LastName + "',ssn='" + pt.ssn + "',adress='" + pt.adress + "',zipCode='" + 
                pt.zipCode + "',aptNum='" + pt.aptNum + "',phone='" + pt.phone + "'", con);
            try
            {


                con.Open();
                cmd.ExecuteNonQuery();
                return message;

            }

            catch (Exception ex)
            {
                message = "Server error is  " + ex.InnerException;
                return message;

            }

            finally
            {
                con.Close();
            }
        }

        public DataTable fetchPatient()
        {

            SqlDataAdapter da = new SqlDataAdapter("select * from patients", con);
            DataTable dt = new DataTable();
            Patient pt = new Patient();
           // pt.id = id;

            da.Fill(dt);
            return dt;

        }
    }
}
    

    
