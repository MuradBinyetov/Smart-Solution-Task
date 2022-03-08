using MailKit.Net.Smtp; 
using MimeKit;
using MimeKit.Text; 

namespace SmartSolutionTask.Services
{ 
    public class EmailService : IEmailService
    { 
        public void Send(string to, string subject, string html)
        {
            // create message
            var email = new MimeMessage();
            email.From.Add(MailboxAddress.Parse("ilhamcode053@gmail.com"));
            email.To.Add(MailboxAddress.Parse(to));
            email.Subject = subject;
            email.Body = new TextPart(TextFormat.Html) { Text = html };

            // send email
            SmtpClient smtp = new SmtpClient();
            smtp.Connect("smtp.gmail.com", 587, false); 
           
            smtp.Authenticate("ilhamcode053@gmail.com", "123456Test");
            smtp.Send(email);
            smtp.Disconnect(true);
        } 
    }

    public interface IEmailService
    {
        void Send(string to, string subject, string html);
    }
} 