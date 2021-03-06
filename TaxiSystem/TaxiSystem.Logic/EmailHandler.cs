﻿using System.Net.Mail;

namespace TaxiSystem
{
    public class EmailHandler
    {
        //Send a mail with password using Gmail settings
        public static bool PasswordMail(string password, string email )
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress("taxisystemdk@gmail.com");
            mail.To.Add(email);
            mail.Subject = "Dine loginoplysninger til TaxiSystem";
            mail.Body = "Adgangskode: " + password;

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("taxisystemdk@gmail.com", "ThinkPad");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);

            return true;
        }
    }
}