using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartSolutionTask.Models
{
    public class Task
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime Deadline { get; set; } 
        public TaskStatus TaskStatus { get; set; } 
    }
}
