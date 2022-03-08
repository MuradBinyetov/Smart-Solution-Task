using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using SmartSolutionTask.Data;
using SmartSolutionTask.Models;
using SmartSolutionTask.Services;
using SmartSolutionTask.ViewModel;
using Task = SmartSolutionTask.Models.Task;

namespace SmartSolutionTask.Controllers
{
    public class TaskController : Controller
    {
        private readonly ITaskService _taskService;
        private readonly IUserService _userService;

        public TaskController(ITaskService taskService, IUserService userService)
        {
            _taskService = taskService;
            _userService = userService;
        }

        public IActionResult Index()
        {
            List<Task> tasks = _taskService.GetTasks();
            TaskViewModel viewModel = new TaskViewModel
            {
                Tasks = tasks
            };
            return View(viewModel);
        } 

        // GET: Task/Create
        public IActionResult Create()
        {
            IList<ApplicationUser> workerUsers = _userService.GetUsersByRoleAsync(SystemRoles.WorkerRole.ToString()).GetAwaiter().GetResult();
            TaskViewModel viewModel = new TaskViewModel
            {
                WorkerUsers = workerUsers
            };
            return View(viewModel);
        } 

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(TaskViewModel viewModel)
        {
            _taskService.CreateTask(viewModel);
            return RedirectToAction("Index","Task");
        }         
    }
}
