using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using SmartSolutionTask.Models;
using SmartSolutionTask.Services;
using SmartSolutionTask.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using SignInResult = Microsoft.AspNetCore.Identity.SignInResult;

namespace SmartSolutionTask.Controllers
{ 
    public class AccountController : Controller
    {
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly IUserService _userService;
        private readonly ITaskService _taskService;
        private readonly IOrganizationService _organizationService;

        public AccountController(SignInManager<ApplicationUser> signInManager,
           IUserService userService,
           ITaskService taskService,
           IOrganizationService organizationService)
        {
            _signInManager = signInManager;
            _userService = userService;
            _taskService = taskService;
            _organizationService = organizationService;
        }

        [HttpGet]
        [AllowAnonymous]
        public IActionResult Login(string returnUrl = "")
        {
            var model = new LoginViewModel { ReturnUrl = returnUrl };
            return View("Login", model);
        }


        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Login(LoginViewModel model)
        {
            if (ModelState.IsValid)
            {
                ApplicationUser user = await _userService.GetByUsernameAsync(model.Username);
                if (user == null || !_userService.UserCanLogin(model.Username))
                {
                    ModelState.AddModelError("HasNotAccessToLoginErr", "Giriş gadağandır.");
                    return View("Login", model);
                }
                SignInResult result = await _signInManager.PasswordSignInAsync(model.Username, model.Password, false, true);
                if (result.Succeeded)
                {
                    _userService.SetUserLastLoginDate(user.Id);  
                    if (!string.IsNullOrEmpty(model.ReturnUrl) && Url.IsLocalUrl(model.ReturnUrl)) return Redirect(model.ReturnUrl);

                    // Don't allow to login INSTITUTION user IF his institution is null.
                    IList<string> userRoles = await _userService.GetUserRolesAsync(user); 
                    return RedirectToAction("Index", "Home");
                }
                ModelState.AddModelError("InvalidUsrOrPwdErr", "Email və ya şifrə yalnışdır.");
                return View(model);
            }
            return View("Login", model);
        }

        [HttpGet] 
        public IActionResult SignUp()
        {
            if (User.IsInRole(SystemRoles.WorkerRole))
            {
                return NotFound();
            }
            List<Organization> organizations = _organizationService.GetAllOrganizations();
            AccountViewModel viewModel = new AccountViewModel
            {
                Organizations = organizations
            };
            return View(viewModel);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> SignUp(AccountViewModel viewModel)
        {
            bool success = false;
            string role = string.Empty;
            if (viewModel == null) viewModel = new AccountViewModel();
            ApplicationUser currentUser = _userService.GetAuthorizedUserAsync(User).GetAwaiter().GetResult();

            var currentUserRole = _userService.GetUserRolesAsync(currentUser).GetAwaiter().GetResult();
            if(currentUserRole != null && currentUserRole[0] == "Admin")
            {
                role = SystemRoles.WorkerRole;
            } 
            else
            {
                role = SystemRoles.OrganizationRole;
            }

            if (ModelState.IsValid) success = await _userService.AddUserWithRoleAsync(viewModel, role);


            if(success && currentUserRole != null &&  currentUserRole[0] == "Admin")
            {
                return RedirectToAction("Index", "Home");
            }
            else if (success)
            {
                return RedirectToAction("Login", "Account");
            }
            else
            {
                return View();
            } 
        }

        [HttpGet]
        public IActionResult Logout(string id)
        {
            return RedirectToAction("Index", "Home");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Logout()
        {
            string userId = User.FindFirstValue(ClaimTypes.NameIdentifier); 
            HttpContext.Session.Clear();
            await _signInManager.SignOutAsync();
            return RedirectToAction("Index","Home");
        }


        [Authorize(Roles = SystemRoles.WorkerRole)]
        [HttpGet]
        public async Task<IActionResult> Profile(string id)
        {
            ApplicationUser user = await _userService.GetById(id);

            List<UserTask> userTasks = _taskService.GetTasksByUserId(id);

            AccountViewModel viewModel = new AccountViewModel
            {
                User = user,
                UserTasks = userTasks
            };
            return View(viewModel);
        }
    }
}
