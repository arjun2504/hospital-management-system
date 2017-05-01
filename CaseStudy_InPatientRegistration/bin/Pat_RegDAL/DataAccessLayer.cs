    
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Pat_RegDAL
{
  public class DataAccessLayer
  {
    public string GetConnectionString()
    {
      return ConfigurationManager.ConnectionStrings["PACON"].ConnectionString.ToString();
    }

    public string InsertPatient(string firstName, string lastName, string mobile, string address, string email, string occupation, string organisationWorking, DateTime joiningDate, string gender, string reason, string userName, string password, string Caretakername)
    {
      SqlConnection connection = new SqlConnection(this.GetConnectionString());
      connection.Open();
      SqlCommand sqlCommand = new SqlCommand("uspPatientRegister", connection);
      sqlCommand.CommandType = CommandType.StoredProcedure;
      sqlCommand.Parameters.AddWithValue("@firstName", (object) firstName);
      sqlCommand.Parameters.AddWithValue("@lastName", (object) lastName);
      sqlCommand.Parameters.AddWithValue("@mobile", (object) mobile);
      sqlCommand.Parameters.AddWithValue("@address", (object) address);
      sqlCommand.Parameters.AddWithValue("@email", (object) email);
      sqlCommand.Parameters.AddWithValue("@occupation", (object) occupation);
      sqlCommand.Parameters.AddWithValue("@organisationWorking", (object) organisationWorking);
      sqlCommand.Parameters.AddWithValue("@joiningDate", (object) joiningDate);
      sqlCommand.Parameters.AddWithValue("@gender", (object) gender);
      sqlCommand.Parameters.AddWithValue("@reason", (object) reason);
      sqlCommand.Parameters.AddWithValue("@userName", (object) userName);
      sqlCommand.Parameters.AddWithValue("@password", (object) password);
      sqlCommand.Parameters.AddWithValue("@caretakername", (object) Caretakername);
      SqlParameter sqlParameter = new SqlParameter("@patientid", SqlDbType.VarChar, 10);
      sqlParameter.Direction = ParameterDirection.Output;
      sqlCommand.Parameters.Add(sqlParameter);
      sqlCommand.ExecuteNonQuery();
      return Convert.ToString(sqlParameter.Value);
    }

    public string InsertDoctor(string docName, string qualification, string specialazation, string mobile, string gender, string userName, string password)
    {
      string empty = string.Empty;
      SqlConnection connection = new SqlConnection(this.GetConnectionString());
      connection.Open();
      SqlCommand sqlCommand = new SqlCommand("uspAddDoctor", connection);
      sqlCommand.CommandType = CommandType.StoredProcedure;
      sqlCommand.Parameters.AddWithValue("@doctorName", (object) docName);
      sqlCommand.Parameters.AddWithValue("@qualification", (object) qualification);
      sqlCommand.Parameters.AddWithValue("@specialization", (object) specialazation);
      sqlCommand.Parameters.AddWithValue("@MobileNumber", (object) mobile);
      sqlCommand.Parameters.AddWithValue("@gender", (object) gender);
      sqlCommand.Parameters.AddWithValue("@userName", (object) userName);
      sqlCommand.Parameters.AddWithValue("@password", (object) password);
      SqlParameter sqlParameter = new SqlParameter("@doctorid", SqlDbType.VarChar, 10);
      sqlParameter.Direction = ParameterDirection.Output;
      sqlCommand.Parameters.Add(sqlParameter);
      sqlCommand.ExecuteNonQuery();
      return Convert.ToString(sqlParameter.Value);
    }

    public int CheckUser(string userName, string password)
    {
      SqlConnection connection = new SqlConnection(this.GetConnectionString());
      connection.Open();
      SqlCommand sqlCommand = new SqlCommand("uspPatientLoginCredentails", connection);
      sqlCommand.CommandType = CommandType.StoredProcedure;
      sqlCommand.Parameters.AddWithValue("@UserName", (object) userName);
      sqlCommand.Parameters.AddWithValue("@Password", (object) password);
      SqlParameter sqlParameter = new SqlParameter("@exists", SqlDbType.Int);
      sqlParameter.Direction = ParameterDirection.Output;
      sqlCommand.Parameters.Add(sqlParameter);
      sqlCommand.ExecuteNonQuery();
      return (int) sqlParameter.Value;
    }

    public int CheckDocUser(string userName, string password)
    {
      SqlConnection connection = new SqlConnection(this.GetConnectionString());
      connection.Open();
      SqlCommand sqlCommand = new SqlCommand("uspDoctorLoginCredentails", connection);
      sqlCommand.CommandType = CommandType.StoredProcedure;
      sqlCommand.Parameters.AddWithValue("@UserName", (object) userName);
      sqlCommand.Parameters.AddWithValue("@Password", (object) password);
      SqlParameter sqlParameter = new SqlParameter("@res", SqlDbType.Int);
      sqlParameter.Direction = ParameterDirection.Output;
      sqlCommand.Parameters.Add(sqlParameter);
      sqlCommand.ExecuteNonQuery();
      return (int) sqlParameter.Value;
    }

    public int Remove_Doctor(string doctorId)
    {
      SqlConnection connection = new SqlConnection(this.GetConnectionString());
      connection.Open();
      SqlCommand sqlCommand = new SqlCommand("uspremovedoctor", connection);
      sqlCommand.CommandType = CommandType.StoredProcedure;
      sqlCommand.Parameters.AddWithValue("@DID", (object) doctorId);
      SqlParameter sqlParameter = new SqlParameter("@status", SqlDbType.Int);
      sqlParameter.Direction = ParameterDirection.Output;
      sqlCommand.Parameters.Add(sqlParameter);
      sqlCommand.ExecuteNonQuery();
      return Convert.ToInt32(sqlParameter.Value);
    }

    public string CheckAvailabilty()
    {
      SqlConnection connection = new SqlConnection(this.GetConnectionString());
      connection.Open();
      SqlCommand sqlCommand = new SqlCommand("uspAvailabilty", connection);
      sqlCommand.CommandType = CommandType.StoredProcedure;
      SqlParameter sqlParameter = new SqlParameter("@availabilty", SqlDbType.VarChar, 100);
      sqlParameter.Direction = ParameterDirection.Output;
      sqlCommand.Parameters.Add(sqlParameter);
      sqlCommand.ExecuteNonQuery();
      return Convert.ToString(sqlParameter.Value);
    }

    public void Allocate(string patientId, string roomType, string roomNum, string bedNum, string equipment)
    {
      SqlConnection connection = new SqlConnection(this.GetConnectionString());
      connection.Open();
      SqlCommand sqlCommand = new SqlCommand("uspAllocate", connection);
      sqlCommand.CommandType = CommandType.StoredProcedure;
      sqlCommand.Parameters.AddWithValue("@patientId", (object) patientId);
      sqlCommand.Parameters.AddWithValue("@RoomType", (object) roomType);
      sqlCommand.Parameters.AddWithValue("@RoomNum", (object) roomNum);
      sqlCommand.Parameters.AddWithValue("@BedNum", (object) bedNum);
      sqlCommand.Parameters.AddWithValue("@equipment", (object) equipment);
      sqlCommand.ExecuteNonQuery();
    }

    public int GetNursingStation(string patientId, int RoomType, int Equipment)
    {
      SqlConnection connection = new SqlConnection(this.GetConnectionString());
      connection.Open();
      SqlCommand sqlCommand = new SqlCommand("uspNurseStation", connection);
      sqlCommand.CommandType = CommandType.StoredProcedure;
      sqlCommand.Parameters.AddWithValue("@patientId", (object) patientId);
      sqlCommand.Parameters.AddWithValue("@RoomType", (object) RoomType);
      sqlCommand.Parameters.AddWithValue("@Equipment", (object) Equipment);
      SqlParameter sqlParameter = new SqlParameter("@res", SqlDbType.Int);
      sqlParameter.Direction = ParameterDirection.Output;
      sqlCommand.Parameters.Add(sqlParameter);
      sqlCommand.ExecuteNonQuery();
      return Convert.ToInt32(sqlParameter.Value);
    }

    public void InsertNusringStation(string patientId, int roomType, int Equipment, int Total)
    {
      SqlConnection connection = new SqlConnection(this.GetConnectionString());
      connection.Open();
      SqlCommand sqlCommand = new SqlCommand("uspInsertNurseStation", connection);
      sqlCommand.CommandType = CommandType.StoredProcedure;
      sqlCommand.Parameters.AddWithValue("@patientId", (object) patientId);
      sqlCommand.Parameters.AddWithValue("@RoomType", (object) roomType);
      sqlCommand.Parameters.AddWithValue("@Equipment", (object) Equipment);
      sqlCommand.Parameters.AddWithValue("@Total", (object) Total);
      SqlParameter sqlParameter = new SqlParameter("@res", SqlDbType.Int);
      sqlParameter.Direction = ParameterDirection.Output;
      sqlCommand.Parameters.Add(sqlParameter);
      sqlCommand.ExecuteNonQuery();
    }

    public DataSet ViewProfile()
    {
      DataSet dataSet = new DataSet();
      SqlDataAdapter adapter = new SqlDataAdapter("select * from tblPatientRegistration ", new SqlConnection(this.GetConnectionString()));
      SqlCommandBuilder sqlCommandBuilder = new SqlCommandBuilder(adapter);
      adapter.Fill(dataSet);
      return dataSet;
    }

    public DataSet ViewDocProfile()
    {
      DataSet dataSet = new DataSet();
      SqlDataAdapter adapter = new SqlDataAdapter("select * from tbladdDoctor ", new SqlConnection(this.GetConnectionString()));
      SqlCommandBuilder sqlCommandBuilder = new SqlCommandBuilder(adapter);
      adapter.Fill(dataSet);
      return dataSet;
    }

    public DataSet ViewOneDocProfile(string doctorId)
    {
      DataSet dataSet = new DataSet();
      SqlConnection connection = new SqlConnection(this.GetConnectionString());
      connection.Open();
      SqlCommand selectCommand = new SqlCommand("uspViewOneDoctor", connection);
      selectCommand.CommandType = CommandType.StoredProcedure;
      selectCommand.Parameters.AddWithValue("@doctorId", (object) doctorId);
      new SqlDataAdapter(selectCommand)
      {
        SelectCommand = selectCommand
      }.Fill(dataSet);
      selectCommand.ExecuteReader();
      return dataSet;
    }

    public void ForgotPwd(string uid, string password)
    {
      SqlConnection connection = new SqlConnection(this.GetConnectionString());
      connection.Open();
      SqlCommand sqlCommand = new SqlCommand("uspForgotPwd", connection);
      sqlCommand.CommandType = CommandType.StoredProcedure;
      sqlCommand.Parameters.AddWithValue("@uId", (object) uid);
      sqlCommand.Parameters.AddWithValue("@newPwd", (object) password);
      sqlCommand.ExecuteNonQuery();
    }
  }
}
