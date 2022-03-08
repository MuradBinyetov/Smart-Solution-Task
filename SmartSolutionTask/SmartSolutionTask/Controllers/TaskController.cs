using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
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
    [Authorize]
    public class TaskController : Controller
    {
        private readonly ITaskService _taskService;
        private readonly IUserService _userService;
        private readonly IOrganizationService _organizationService;

        public TaskController(ITaskService taskService, IUserService userService, IOrganizationService organizationService)
        {
            _taskService = taskService;
            _userService = userService;
            _organizationService = organizationService;
        }

        public IActionResult Index(int id)
        {
            bool hasOrg = _organizationService.HasOrganization(id);
            if (!hasOrg) return NotFound();
            List<Task> tasks = _taskService.GetTasks(id);
            TaskViewModel viewModel = new TaskViewModel
            {
                Tasks = tasks,
                OrganizationId = id
            };
            return View(viewModel);
        }

        [Authorize(Roles = SystemRoles.OrganizationRole)]
        // GET: Task/Create
        public IActionResult Create(int id)
        {
            bool hasOrg = _organizationService.HasOrganization(id);
            if (!hasOrg) return NotFound();
            IList<ApplicationUser> workerUsers = _userService.GetUsersByRoleAsync(SystemRoles.WorkerRole.ToString()).GetAwaiter().GetResult();
            IList<ApplicationUser> organizationUsers = workerUsers.Where(u => u.OrganizationId == id).ToList();
            TaskViewModel viewModel = new TaskViewModel
            {
                WorkerUsers = organizationUsers
            };
            return View(viewModel);
        }

        [Authorize(Roles = SystemRoles.OrganizationRole)]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(TaskViewModel viewModel,int id)
        {
            if (ModelState.IsValid)
            {
                _taskService.CreateTask(viewModel, id);
                return RedirectToAction("Index", "Task", new { id = id });
            }
            else
            {
                bool hasOrg = _organizationService.HasOrganization(id);
                if (!hasOrg) return NotFound();
                IList<ApplicationUser> workerUsers = _userService.GetUsersByRoleAsync(SystemRoles.WorkerRole.ToString()).GetAwaiter().GetResult();
                IList<ApplicationUser> organizationUsers = workerUsers.Where(u => u.OrganizationId == id).ToList();
                viewModel = new TaskViewModel
                {
                    WorkerUsers = organizationUsers
                };
                return View(viewModel);
            }
                
        }         
    }
}
