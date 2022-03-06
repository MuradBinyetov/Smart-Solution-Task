using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartSolutionTask.Models
{
    public sealed class SystemRoles
    {
        public const string Admin = "Admin";
        public const string OrganizationRole = "Organization";
        public const string WorkerRole = "Worker";


        public static readonly IList<string> AllRoles = new List<string>
        {
            Admin, OrganizationRole, WorkerRole
        };
    }
}
