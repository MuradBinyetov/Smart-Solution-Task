#pragma checksum "C:\Users\User\Desktop\Smart-Solution-Task\SmartSolutionTask\SmartSolutionTask\Views\Account\Profile.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "9711edada25993f4ea76789e84768e02050f7599"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Account_Profile), @"mvc.1.0.view", @"/Views/Account/Profile.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\User\Desktop\Smart-Solution-Task\SmartSolutionTask\SmartSolutionTask\Views\_ViewImports.cshtml"
using SmartSolutionTask;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\User\Desktop\Smart-Solution-Task\SmartSolutionTask\SmartSolutionTask\Views\_ViewImports.cshtml"
using SmartSolutionTask.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\User\Desktop\Smart-Solution-Task\SmartSolutionTask\SmartSolutionTask\Views\_ViewImports.cshtml"
using SmartSolutionTask.ViewModel;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"9711edada25993f4ea76789e84768e02050f7599", @"/Views/Account/Profile.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"206ac209461f257c8876f32c34780b1a0b3b689a", @"/Views/_ViewImports.cshtml")]
    public class Views_Account_Profile : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<AccountViewModel>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/images/user.png"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\User\Desktop\Smart-Solution-Task\SmartSolutionTask\SmartSolutionTask\Views\Account\Profile.cshtml"
  
    Layout = null;
    var user = Model?.User;
    var tasks = Model?.UserTasks;

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<style>
    html {
        background: url(https://raw.githubusercontent.com/arjunamgain/FilterMenu/master/images/bg.jpg) no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }

    body {
        font: 300 14px/18px Roboto
    }

    *,
    :after,
    :before {
        box-sizing: border-box
    }

    .clearfix:after,
    .clearfix:before {
        content: '';
        display: table
    }

    .clearfix:after {
        clear: both;
        display: block
    }

    .muck-up { 
        height: 545px;
        margin: 5em auto;
        position: relative;
        overflow: hidden;
    }

    .overlay {
        background: url(https://raw.githubusercontent.com/arjunamgain/FilterMenu/master/images/header.jpg) no-repeat top /contain;
        position: absolute;
        left: 0;
        top: 0;
        right: 0;
        bottom: 0;
    }

   ");
            WriteLiteral(@"     .overlay:after {
            content: '';
            position: absolute;
            left: 0;
            top: 0;
            right: 0;
            bottom: 0;
            background: rgba(71, 32, 84, 0.5);
        }

    .muck-up > .top {
        position: relative;
        min-height: 240px;
        padding: 15px;
        color: #fff;
    }

    .top .nav span {
        float: left;
        display: block;
    }

    .nav p {
        margin-top: 2px;
        display: inline-block;
        float: left;
        vertical-align: bottom;
    }

    .ion-android-menu {
        font-size: 24px;
        margin-right: 17px;
    }

    .nav .ion-ios-more-outline {
        font-size: 38px;
        float: right !important;
    }

    .user-profile {
        margin-top: 90px;
    }

        .user-profile img {
            height:60px;
            width: 60px;
            border-radius: 50%;
            float: left;
            margin-right: 24px;
        }

    .us");
            WriteLiteral(@"er-details p {
        font-size: 11px;
    }

    .user-details {
        float: left;
        margin-top: 5px;
        vertical-align: bottom;
    }

        .user-details h4 {
            font-size: 18px;
        }

    .filter-btn {
        position: absolute;
        z-index: 2;
        right: 0;
        width: 40px;
        height: 40px;
        transition: all 0.4s ease-in-out 0s;
    }

        .filter-btn span {
            width: 40px;
            height: 40px;
            background: #FA396B;
            display: block;
            position: absolute;
            right: 25px;
            top: -46px;
            text-align: center;
            color: #fff;
            line-height: 40px;
            border-radius: 50%;
            font-size: 22px;
            z-index: 999;
        }

    span.toggle-btn.ion-android-funnel:hover {
        cursor: pointer;
    }

    .filter-btn a {
        position: absolute;
        width: 40px;
        height: 40px;
   ");
            WriteLiteral(@"     line-height: 40px;
        text-align: center;
        right: 25px;
        display: block;
        top: -46px;
        color: #fff;
        z-index: 99;
        font-size: 22px;
        transition: all .4s cubic-bezier(.68, 1, .265, 1)
    }

    .filter-btn:after {
        height: 170px;
        width: 170px;
        content: '""\f38b""';
        background-color: #FA396B;
        position: absolute;
        top: -110px;
        right: -40px;
        border-radius: 50%;
        transform: scale(0);
        transition: all 0.3s ease-in-out 0s;
    }

    .filter-btn.open span.toggle-btn.ion-android-funnel {
        background-color: #DE3963;
    }

    .filter-btn.open .ion-android-funnel:before {
        content: ""\f2d7"";
    }

    .open:after {
        transform: scale(1);
    }

    .filter-btn.open a:nth-child(1) {
        transform: translate(9px, -62px);
    }

    .filter-btn.open a:nth-child(2) {
        transform: translate(-50px, -34px);
    }

    .f");
            WriteLiteral(@"ilter-btn.open a:nth-child(3) {
        transform: translate(-56px, 25px);
    }

    .filter-btn.open a:nth-child(4) {
        transform: translate(5px, 61px);
    }

    .muck-up .bottom {
        background-color: #fff;
        min-height: 303px;
        z-index: 1;
        padding: 35px;
        position: relative;
        color: #222;
        padding-top: 0px;
    }

    .bottom:after {
        content: '';
        position: absolute;
        top: -46px;
        background: #fff;
        left: -22px;
        right: 0;
        height: 100px;
        transform: rotate(10deg);
        width: 337px;
        z-index: -1;
    }

    .bottom .title {
        margin-bottom: 20px;
    }

        .bottom .title h3 {
            font-size: 22px;
            margin-bottom: 5px;
        }

    .title small {
        font-size: 10px;
        color: #888;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    ul.tasks .task-title {
        font-size: 1");
            WriteLiteral(@"8px;
        display: inline-block;
    }

    ul.tasks .task-time {
        float: right;
        font-size: 18px;
        color: #888;
    }

    ul.tasks .task-cat {
        font-size: 10px;
        display: block;
        color: #888;
    }

    ul.tasks li {
        margin-bottom: 16px;
        position: relative;
        z-index: 8;
    }

        ul.tasks li:after {
            content: '';
            position: absolute;
            left: -18px;
            top: 8px;
            height: 8px;
            width: 8px;
            border-radius: 50%;
        }

        ul.tasks li.red:after {
            background: #FF3163;
        }

        ul.tasks li.green:after {
            background: #54D6C7;
        }

        ul.tasks li.yellow:after {
            background: #EAB429;
        }

    ul.tasks::after {
        content: '';
        position: absolute;
        height: 400px;
        width: 1px;
        background: #eee;
        left: 20px;
        ");
            WriteLiteral(@"top: -68px;
    }

    ul li.hang {
        margin-bottom: 48px;
    }

        ul li.hang img {
            float: left;
            height: 20ox;
            width: 20px;
            border-radius: 50%;
            margin-right: 8px;
        }
</style>


<div style=""text-align:center;margin-top:25px;font-weight:bold;"">
    <h1>My Profile</h1>
</div>
<div class=""muck-up"" style=""width:70%;"">
    <div class=""overlay""></div>
    <div class=""top""> 
        <div class=""user-profile"">
            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "9711edada25993f4ea76789e84768e02050f759910927", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n            <div class=\"user-details\">\r\n                <h1>");
#nullable restore
#line 321 "C:\Users\User\Desktop\Smart-Solution-Task\SmartSolutionTask\SmartSolutionTask\Views\Account\Profile.cshtml"
               Write(user?.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral(" ");
#nullable restore
#line 321 "C:\Users\User\Desktop\Smart-Solution-Task\SmartSolutionTask\SmartSolutionTask\Views\Account\Profile.cshtml"
                           Write(user?.Surname);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h1>
                <h3>Developer</h3>
            </div>
        </div>
    </div>
    <div class=""clearfix""></div>
    <div class=""filter-btn"">
        <a id=""one"" href=""#""><i class=""ion-ios-checkmark-outline""></i></a>
        <a id=""two"" href=""#""><i class=""ion-ios-alarm-outline""></i></a>
        <a id=""three"" href=""#""><i class=""ion-ios-heart-outline""></i></a>
        <a id=""all"" href=""#""><i class=""ion-ios-star-outline""></i></a> 
    </div>
    <div class=""clearfix""></div>
    <div class=""bottom"">
        <div class=""title"">
            <h3>My Tasks</h3> 
        </div>
        <ul class=""tasks"">
");
#nullable restore
#line 339 "C:\Users\User\Desktop\Smart-Solution-Task\SmartSolutionTask\SmartSolutionTask\Views\Account\Profile.cshtml"
             foreach (var task in tasks)
            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                <li class=\"one red\">\r\n                    <span class=\"task-title\">");
#nullable restore
#line 342 "C:\Users\User\Desktop\Smart-Solution-Task\SmartSolutionTask\SmartSolutionTask\Views\Account\Profile.cshtml"
                                        Write(task.Task?.Title);

#line default
#line hidden
#nullable disable
            WriteLiteral("</span>\r\n                    <span class=\"task-time\">");
#nullable restore
#line 343 "C:\Users\User\Desktop\Smart-Solution-Task\SmartSolutionTask\SmartSolutionTask\Views\Account\Profile.cshtml"
                                       Write(String.Format("{0:MM/dd/yyyy}", task.Task?.Deadline));

#line default
#line hidden
#nullable disable
            WriteLiteral("</span> \r\n                </li>\r\n");
#nullable restore
#line 345 "C:\Users\User\Desktop\Smart-Solution-Task\SmartSolutionTask\SmartSolutionTask\Views\Account\Profile.cshtml"
            } 

#line default
#line hidden
#nullable disable
            WriteLiteral("        </ul>\r\n    </div>\r\n</div>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<AccountViewModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
