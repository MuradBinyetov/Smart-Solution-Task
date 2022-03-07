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

        public TaskController(ITaskService taskService)
        {
            _taskService = taskService;
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
            return View();
        } 

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(TaskViewModel viewModel)
        { 

            return View();
        }         
    }
}
