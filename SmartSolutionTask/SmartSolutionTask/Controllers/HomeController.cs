using Microsoft.AspNetCore.Mvc;
using SmartSolutionTask.Models;
using SmartSolutionTask.Services;
using SmartSolutionTask.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartSolutionTask.Controllers
{
    public class HomeController : Controller
    {
        private readonly IOrganizationService _organizationService;

        public HomeController(IOrganizationService organizationService)
        { 
            _organizationService = organizationService;
        }
        public IActionResult Index()
        { 
            List<Organization> organizations = _organizationService.GetAllOrganizations();
            HomeViewModel viewModel = new HomeViewModel()
            {
                Organizations = organizations
            };
            return View(viewModel);
        }
    }
}
