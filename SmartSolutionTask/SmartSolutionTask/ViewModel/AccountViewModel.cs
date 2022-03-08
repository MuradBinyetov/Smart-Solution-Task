using SmartSolutionTask.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SmartSolutionTask.ViewModel
{
    public class AccountViewModel
    { 
        [DataType(DataType.Text)]
        public string Username { get; set; }
         
        public string Password { get; set; }

        [EmailAddress]
        public string Email { get; set; }


        //For Organization
        public string OrganizationName { get; set; }
        public string PhoneNumber { get; set; }
        public string Address { get; set; }
        //For Organization

        //For Other User
        public string Name { get; set; }
        public string Surname { get; set; }
        //For Other User 
        public ApplicationUser User { get; set; }
        public List<UserTask> UserTasks { get; set; }
    }
}
