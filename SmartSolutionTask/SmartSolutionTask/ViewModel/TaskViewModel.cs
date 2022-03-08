using SmartSolutionTask.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Task = SmartSolutionTask.Models.Task;

namespace SmartSolutionTask.ViewModel
{
    public class TaskViewModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime Deadline { get; set; }

        //With TaskStatus enum
        public string TaskStatus { get; set; }

        public List<Task> Tasks { get; set; }
        public List<string> UserIds { get; set; }
        public IList<ApplicationUser> WorkerUsers { get; set; }
    }
}
