﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace TaxiSystem
{
    public class EmailHandler
    {

        public static void PasswordMail(string password, string email )
        {

            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress("uffe.frandsen123@gmail.com");
            mail.To.Add(email);
            mail.Subject = "Din nye login kode til Taxi System";
            mail.Body = "Din personlige kode er: " + password;

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("uffe.frandsen123@gmail.com", "ThinkPad");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);

        }
    }
}