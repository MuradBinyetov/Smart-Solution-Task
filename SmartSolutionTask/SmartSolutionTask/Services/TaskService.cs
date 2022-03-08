using Microsoft.EntityFrameworkCore;
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
            private readonly IUserService _userService;
            private readonly IEmailService _emailService;
            private readonly IOrganizationService _organizationService;

            public TaskService(AppDbContext context, IUserService userService, IEmailService emailService, IOrganizationService organizationService)
            {
                _context = context;
                _userService = userService;
                _emailService = emailService;
                _organizationService = organizationService;
            }

        public List<Task> GetTasks(int id)
        {
            List<Task> tasks = _context.Tasks.Where(t=>t.OrganizationId == id).ToList();
            return tasks;
        }

        public bool CreateTask(TaskViewModel viewModel,int id)
        {
            if (viewModel == null) return false;

            Task task = new Task
            {
                Title =viewModel.Title,
                Description = viewModel.Description,
                Deadline = viewModel.Deadline,
                TaskStatus = TaskStatus.Appointed.ToString(),
                OrganizationId = id,
                UserTasks = new Collection<UserTask> ()
            };

            Organization organization =  _organizationService.GetOrganizationById(id);

            string emailSubject = "Technical task";
            string emailBody = $"{organization.Name} has sent you task";

            List<string> workerUserIds = viewModel.UserIds;
            if(workerUserIds != null)
            {
                foreach (var userId in workerUserIds)
                {
                    ApplicationUser user = _userService.GetById(userId).GetAwaiter().GetResult();
                    UserTask userTask = new UserTask()
                    {
                        ApplicationUser = user                        
                    };
                    task.UserTasks.Add(userTask);
                    _emailService.Send(user.Email, emailSubject, emailBody);
                } 
            }
            _context.Tasks.Add(task);
            _context.SaveChanges();
            return true;
        } 

        public List<UserTask> GetTasksByUserId(string id)
        {
            List<UserTask> tasks = new List<UserTask>();
            if (id != null)
            {
                tasks = _context.UserTasks.Include(ut=>ut.Task).Where(ut => ut.ApplicationUserId == id).ToList();
            }
            return tasks;
        }
    }

    public interface ITaskService
    {
        List<Task> GetTasks(int id);
        bool CreateTask(TaskViewModel viewModel,int id);
        List<UserTask> GetTasksByUserId(string id);
    }
}
