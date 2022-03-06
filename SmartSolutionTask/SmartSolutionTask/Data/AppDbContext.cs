using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using SmartSolutionTask.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartSolutionTask.Data
{
    public sealed class AppDbContext : IdentityDbContext
    {
        public IConfiguration Configuration;

        public new DbSet<ApplicationUser> Users { get; set; }
        public DbSet<ApplicationRole> ApplicationRoles { get; set; }
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        } 

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (optionsBuilder.IsConfigured) return;
            var dbConnection = Configuration.GetConnectionString("DefaultConnection");
            optionsBuilder.UseSqlServer(dbConnection);  
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
    }
}
