using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;
using System.Net.NetworkInformation;
using System.Management;
using System.Net.Mail;
using System.Web.Mail;


namespace Tabbouk
{

    public class Commons
    {
        public Commons()
        {

        }

        public static string returnTabboukConnectionString()
        {
            string userid = ""; string password = ""; string initialcatalog = ""; string datasource = "";
            string finalConstring = "";
            string constring = ConfigurationManager.AppSettings["TabboukConnectionString"].ToString();
            bool OracleDriver = false;
            if (constring.IndexOf("OraOLEDB.Oracle.1") != -1) { OracleDriver = true; } else { OracleDriver = false; }

            SqlConnection SQLCon = new SqlConnection();
            if (OracleDriver)
            {
                finalConstring += "Unicode=True;";
            }
            else
            {
                finalConstring += "Persist Security Info=False;";
            }
            string[] constringArr = constring.Split(';');
            foreach (string s in constringArr)
            {
                if (s.Length > 0)
                {
                    string[] constringArr2 = s.Split('=');
                    if (constringArr2[0].Length > 0)
                    {
                        if (constringArr2[0].ToLower().Equals("User ID".ToLower()))
                        {
                            userid = constringArr2[1];
                        }
                        else if (constringArr2[0].ToLower().Equals("Password".ToLower()))
                        {
                            password = constringArr2[1];
                        }
                        else if (constringArr2[0].ToLower().Equals("Data Source".ToLower()))
                        {
                            datasource = constringArr2[1];
                        }
                        else if (constringArr2[0].ToLower().Equals("Initial Catalog".ToLower()))
                        {
                            initialcatalog = constringArr2[1];
                        }
                    }
                }
            }
            if (OracleDriver)
            {
                finalConstring += "Data Source=" + datasource + ";" + "User ID=" + userid + ";" + "Password=" + password + ";";
            }
            else
            {
                finalConstring += "Data Source=" + datasource + ";" + "User ID=" + userid + ";" + "Password=" + password + ";" + "Initial Catalog=" + initialcatalog + ";";
            }
            return finalConstring;
        }

        public static DataTable returnDS_AccordingToDB_Driver(string sql)
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            string _constring = ConfigurationManager.ConnectionStrings["TabboukConnectionString"].ToString();
            //string _constring = returnTabboukConnectionString();
            SqlConnection con = new SqlConnection(_constring);
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataAdapter ad = new SqlDataAdapter(com);
            try
            {
                ad.Fill(ds);
            }
            catch (Exception ex) { Console.Write(ex.Message); }

            if (ds.Tables.Count > 0)
                dt = ds.Tables[0];

            return dt;
        }

        public static DataTable returnDT(string sql)
        {
            DataTable dt = new DataTable();
            string _constring = ConfigurationManager.ConnectionStrings["TabboukConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(_constring))
            {
                if (sql != "")
                {
                    try
                    {
                        using (SqlCommand com = new SqlCommand(sql, con))
                        {
                            com.CommandType = CommandType.StoredProcedure;
                            using (SqlDataAdapter ad = new SqlDataAdapter(com))
                            {
                                ad.Fill(dt);
                            }
                        }
                    }
                    catch (Exception ex) { Console.Write(ex.Message); }
                }
            }
            return dt;
        }

        public static DataTable returnDTWithParameter(string sql, string param, string value)
        {
            DataTable dt = new DataTable();
            string _constring = ConfigurationManager.ConnectionStrings["TabboukConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(_constring))
            {
                if (sql != "")
                {
                    try
                    {
                        using (SqlCommand com = new SqlCommand(sql, con))
                        {
                            com.CommandType = CommandType.StoredProcedure;
                            com.Parameters.Add(param, SqlDbType.Int).Value = value;
                            using (SqlDataAdapter ad = new SqlDataAdapter(com))
                            {
                                ad.Fill(dt);
                            }
                        }
                    }
                    catch (Exception ex) { Console.Write(ex.Message); }
                }
            }
            return dt;
        }


        public static DataTable returnDTWithshearchParameter(string sql, string param, string value)
        {
            DataTable dt = new DataTable();
            string _constring = ConfigurationManager.ConnectionStrings["TabboukConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(_constring))
            {
                if (sql != "")
                {
                    try
                    {
                        using (SqlCommand com = new SqlCommand(sql, con))
                        {
                            com.CommandType = CommandType.StoredProcedure;
                            com.Parameters.Add(param, SqlDbType.VarChar, 500).Value = value;
                            using (SqlDataAdapter ad = new SqlDataAdapter(com))
                            {
                                ad.Fill(dt);

                            }
                        }
                    }
                    catch (Exception ex) { Console.Write(ex.Message); }
                }
            }
            Console.Write(dt.Columns.Count);
            return dt;
        }
        public static DataTable returnDTWith2Parameter(string sql, string param, int value, string param2, int value2)
        {
            DataTable dt = new DataTable();
            string _constring = ConfigurationManager.ConnectionStrings["TabboukConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(_constring))
            {
                if (sql != "")
                {
                    try
                    {
                        using (SqlCommand com = new SqlCommand(sql, con))
                        {
                            com.CommandType = CommandType.StoredProcedure;
                            com.Parameters.Add(param, SqlDbType.Int).Value = value;
                            com.Parameters.Add(param2, SqlDbType.Int).Value = value2;
                            using (SqlDataAdapter ad = new SqlDataAdapter(com))
                            {
                                ad.Fill(dt);
                            }
                        }
                    }
                    catch (Exception ex) { Console.Write(ex.Message); }
                }
            }
            return dt;
        }
        public static DataTable returnDTWithParameterdaterange(string sql, string param, int value, string param2, string ResDate)
        {
            DataTable dt = new DataTable();
            string _constring = ConfigurationManager.ConnectionStrings["TabboukConnectionString"].ToString();
            using (SqlConnection con = new SqlConnection(_constring))
            {
                if (sql != "")
                {
                    try
                    {
                        using (SqlCommand com = new SqlCommand(sql, con))
                        {
                            com.CommandType = CommandType.StoredProcedure;
                            com.Parameters.Add(param, SqlDbType.Int).Value = value;
                            com.Parameters.Add(param2, SqlDbType.Date).Value = ResDate;
                            using (SqlDataAdapter ad = new SqlDataAdapter(com))
                            {
                                ad.Fill(dt);
                            }
                        }
                    }
                    catch (Exception ex) { Console.Write(ex.Message); }
                }
            }
            return dt;
        }

        public static DataTable ExecuteQueryUsingOleDbCommand(OleDbCommand comm)
        {
            DataTable dt = new DataTable();
            string conString = ConfigurationManager.AppSettings["TabboukConnectionString"].ToString();
            OleDbConnection con = new OleDbConnection(conString);
            comm.Connection = con;
            try
            {
                con.Open();
                using (OleDbDataAdapter ad = new OleDbDataAdapter(comm))
                {
                    ad.Fill(dt);
                }
            }
            catch (Exception ex) { Console.Write(ex.Message); }
            finally { if (con.State == System.Data.ConnectionState.Open) { con.Close(); } }

            return dt;
        }

        public static DataTable ExecuteQueryUsingOleDbCommand(string Query)
        {
            OleDbCommand comm = new OleDbCommand();
            comm.CommandText = Query;

            DataTable dt = new DataTable();
            string conString = ConfigurationManager.AppSettings["TabboukConnectionString"].ToString();
            OleDbConnection con = new OleDbConnection(conString);
            comm.Connection = con;
            try
            {
                con.Open();
                using (OleDbDataAdapter ad = new OleDbDataAdapter(comm))
                {
                    ad.Fill(dt);
                }
            }
            catch (Exception ex) { Console.Write(ex.Message); }
            finally { if (con.State == System.Data.ConnectionState.Open) { con.Close(); } }

            return dt;
        }

        public static bool SaveToDB(string sql)
        {
            bool saved = false;

            string _constring = returnTabboukConnectionString();

            using (SqlConnection con = new SqlConnection(_constring))
            {
                try
                {
                    using (SqlCommand com = new SqlCommand(sql, con))
                    {
                        // com.CommandType = CommandType.StoredProcedure;//added by bakry
                        if (con.State == ConnectionState.Closed)
                            con.Open();

                        int x = com.ExecuteNonQuery();
                        if (x > 0)
                        {
                            saved = true;
                        }
                        con.Close();
                    }
                }
                catch (Exception ex) { Console.Write(ex.Message); }
            }
            return saved;
        }

        public static bool SaveToDB(OleDbCommand sqlCommand)
        {
            bool saved = false;

            var connStr = ConfigurationManager.AppSettings["TabboukConnectionString"];
            var conn = new OleDbConnection(connStr);

            sqlCommand.Connection = conn;

            try
            {
                if (conn.State == ConnectionState.Closed)
                    conn.Open();

                int x = sqlCommand.ExecuteNonQuery();

                if (x > 0)
                {
                    saved = true;
                }

                conn.Close();
            }
            catch (Exception ex) { Console.Write(ex.Message); }

            return saved;
        }

        public static bool ExecuteQuery(string sqlQuery)
        {
            bool saved = false;
            string _constring = ConfigurationManager.AppSettings["TabboukConnectionString"].ToString();

            OleDbTransaction trans = null;

            using (OleDbConnection con = new OleDbConnection(_constring))
            {
                con.Open();
                trans = con.BeginTransaction();
                try
                {
                    using (OleDbCommand com = new OleDbCommand(sqlQuery, con))
                    {
                        com.Transaction = trans;
                        try
                        {
                            int x = com.ExecuteNonQuery();
                            if (x > 0)
                            {
                                saved = true;
                            }
                        }
                        catch { saved = false; }
                    }
                }
                catch (Exception ex) { Console.Write(ex.Message); }

                if (saved) { trans.Commit(); }
                else { trans.Rollback(); }

            }

            return saved;
        }

        public static bool SaveToDB(List<string> sqlLst)
        {
            bool saved = false;

            string _constring = returnTabboukConnectionString();
            SqlTransaction trans = null;
            using (SqlConnection con = new SqlConnection(_constring))
            {
                con.Open();
                trans = con.BeginTransaction();
                foreach (string sql in sqlLst)
                {
                    try
                    {
                        using (SqlCommand com = new SqlCommand(sql, con))
                        {
                            com.Transaction = trans;
                            try
                            {
                                int x = com.ExecuteNonQuery();
                                if (x > 0)
                                {
                                    saved = true;
                                }
                            }
                            catch { saved = false; break; }
                        }
                    }
                    catch (Exception ex) { Console.Write(ex.Message); }
                }
                if (saved) { trans.Commit(); }
                else { trans.Rollback(); }
            }
            return saved;
        }

        public static string DateFormat(DateTime Date)
        {
            string dateFormatted = "";
            string conString = ConfigurationManager.AppSettings["TabboukConnectionString"].ToString();
            if (conString.IndexOf("OraOLEDB.Oracle.1") != -1)
            {
                dateFormatted = Date.ToString("dd/MM/yyyy H:mm:ss");
            }
            else if (conString.IndexOf("SQLOLEDB.1") != -1)
            {
                dateFormatted = Date.ToString("yyyy/MM/dd H:mm:ss");
            }
            return dateFormatted;
        }

        public static string SQLDateSyntax(string Date)
        {
            string syntax = "";
            string conString = ConfigurationManager.AppSettings["TabboukConnectionString"].ToString();
            if (conString.IndexOf("OraOLEDB.Oracle.1") != -1)
            {
                syntax = " TO_DATE('" + Date + "','DD/MM/YYYY HH24:mi:ss') ";
            }
            else if (conString.IndexOf("SQLOLEDB.1") != -1)
            {
                syntax = " CONVERT(VARCHAR(25),'" + Date + "',103) ";
            }
            return syntax;
        }

        public static string DateNow()
        {
            string datenow = "";
            string conString = ConfigurationManager.AppSettings["TabboukConnectionString"].ToString();
            if (conString.IndexOf("OraOLEDB.Oracle.1") != -1)
            {
                datenow = "SYSDATE";
            }
            else if (conString.IndexOf("SQLOLEDB.1") != -1)
            {
                datenow = "GETDATE()";
            }
            return datenow;
        }

        public static bool TryToConnectToDB(string _TabboukConnectionString)
        {
            bool succeeded = false;
            OleDbConnection con = new OleDbConnection(_TabboukConnectionString);
            con.Open();
            con.Close();
            succeeded = true;
            return succeeded;
        }

        public static string GetMaxKey(string FieldName, string TableName)
        {
            string Max = "";

            DataTable dtMax = returnDS_AccordingToDB_Driver(string.Format("Select ISNULL(Max({0}),0) from {1}", FieldName, TableName));

            if (dtMax.Rows != null && dtMax.Rows.Count > 0)
            {
                Max = dtMax.Rows[0][0].ToString();
            }

            return Max;
        }
        public static string GetMinKey(string FieldName, string TableName)
        {
            string Min = "";

            DataTable dtMin = returnDS_AccordingToDB_Driver(string.Format("Select ISNULL(Min({0}),0) from {1}", FieldName, TableName));

            if (dtMin.Rows != null && dtMin.Rows.Count > 0)
            {
                Min = dtMin.Rows[0][0].ToString();
            }

            return Min;
        }

        public static string GetMACAddress()
        {
            NetworkInterface[] nics = NetworkInterface.GetAllNetworkInterfaces();
            String sMacAddress = string.Empty;
            foreach (NetworkInterface adapter in nics)
            {
                if (sMacAddress == String.Empty)// only return MAC Address from first card  
                {
                    IPInterfaceProperties properties = adapter.GetIPProperties();
                    sMacAddress = adapter.GetPhysicalAddress().ToString();
                }
            } return sMacAddress;
        }

        public static bool vote(string mac, int qid, int answerid)
        {
            return true;
        }
        public static void SendEmail(string from, string bcc, string cc, string subject, string body, string To = "")
        {
            string to = "";
            if (String.IsNullOrEmpty(To))
                to = "qalaeed@qalaeed.com";
            else
                to = To;
            const string SERVER = "relay-hosting.secureserver.net";
            System.Web.Mail.MailMessage oMail = new System.Web.Mail.MailMessage();
            oMail.From = from;
            oMail.To = to;
            oMail.Subject = subject;
            oMail.Body = body;
            oMail.BodyFormat = System.Web.Mail.MailFormat.Html; // enumeration
            oMail.Priority = System.Web.Mail.MailPriority.High; // enumeration
            oMail.Body += "Sent at: " + DateTime.Now;
            SmtpMail.SmtpServer = SERVER;
            SmtpMail.Send(oMail);
            oMail = null; // free up resources
        }
        /// <summary>
        /// Sends an mail message
        /// </summary>
        /// <param name="from">Sender address</param>
        /// <param name="to">Recepient address</param>
        /// <param name="bcc">Bcc recepient</param>
        /// <param name="cc">Cc recepient</param>
        /// <param name="subject">Subject of mail message</param>
        /// <param name="body">Body of mail message</param>
        public static void SendMailMessage(string from, string bcc, string cc, string subject, string body, string To = "")
        {

            try
            {
                string to = "";
                if (String.IsNullOrEmpty(To))
                    to = "qalaeed@qalaeed.com";
                else
                    to = To;
                // Instantiate a new instance of MailMessage
                System.Net.Mail.MailMessage mMailMessage = new System.Net.Mail.MailMessage();

                // Set the sender address of the mail message
                mMailMessage.From = new MailAddress(from);
                // Set the recepient address of the mail message
                mMailMessage.To.Add(new MailAddress(to));

                // Check if the bcc value is null or an empty string
                if ((bcc != null) && (bcc != string.Empty))
                {
                    // Set the Bcc address of the mail message
                    mMailMessage.Bcc.Add(new MailAddress(bcc));
                }      // Check if the cc value is null or an empty value
                if ((cc != null) && (cc != string.Empty))
                {
                    // Set the CC address of the mail message
                    mMailMessage.CC.Add(new MailAddress(cc));
                }       // Set the subject of the mail message
                mMailMessage.Subject = subject;
                // Set the body of the mail message
                mMailMessage.Body = body;

                // Set the format of the mail message body as HTML
                mMailMessage.IsBodyHtml = true;
                // Set the priority of the mail message to normal
                mMailMessage.Priority = System.Net.Mail.MailPriority.Normal;

                // Instantiate a new instance of SmtpClient
                SmtpClient mSmtpClient = new SmtpClient();
                //mSmtpClient.Host = "smtpout.secureserver.net";
                //int port = 465; // it’s 465 if using SSL, otherwise 25 or 587
                // SmtpClient smtpServer = new SmtpClient(mSmtpClient.Host, port);
                //smtpServer.Credentials = new NetworkCredential("qalaeed@qalaeed.com", "123456789");
                // smtpServer.EnableSsl = true;
                mSmtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                // Send the mail message
                mSmtpClient.Send(mMailMessage);
            }
            catch { }
        }
    }
}