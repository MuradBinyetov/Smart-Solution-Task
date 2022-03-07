using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartSolutionTask.Models
{
    public class Task
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime Deadline { get; set; } 
        
        //With TaskStatus enum
        public string TaskStatus { get; set; } 
        public ICollection<UserTask> UserTasks { get; set; }

    }
}
