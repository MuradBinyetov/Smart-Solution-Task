using SmartSolutionTask.Data;
using SmartSolutionTask.Models;
using SmartSolutionTask.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using Task = SmartSolutionTask.Models.Task;
using TaskStatus = SmartSolutionTask.ViewModel.TaskStatus;

namespace SmartSolutionTask.Services
{
    public class TaskService : ITaskService
    {
        private readonly AppDbContext _context;

        public TaskService(AppDbContext context)
        {
            _context = context;
        }

        public List<Task> GetTasks()
        {
            List<Task> tasks = _context.Tasks.ToList();
            return tasks;
        }

        public bool CreateTask(TaskViewModel viewModel)
        {
            if (viewModel == null) return false;

            Task task = new Task
            {
                Title =viewModel.Title,
                Description = viewModel.Description,
                Deadline = viewModel.Deadline,
                TaskStatus = TaskStatus.Appointed.ToString(),
                UserTasks = new Collection<UserTask> ()
            };

            throw new NotImplementedException();
        } 
    }

    public interface ITaskService
    {
        List<Task> GetTasks();
        bool CreateTask(TaskViewModel viewModel);
    }
}
