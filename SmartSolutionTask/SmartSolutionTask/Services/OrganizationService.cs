using SmartSolutionTask.Data;
using SmartSolutionTask.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SmartSolutionTask.Services
{
    public class OrganizationService : IOrganizationService
    {
        private readonly AppDbContext _context; 

        public OrganizationService(AppDbContext context)
        {
            _context = context; 
        }
        public bool HasOrganization(int id)
        {
            Organization  organization = _context.Organizations.FirstOrDefault(o => o.Id == id);
            if (organization != null) return true;
            return false;
        }

        public List<Organization> GetAllOrganizations()
        {
            List<Organization> organizations = _context.Organizations.ToList();
            return organizations;
        }
    }
    public interface IOrganizationService
    {
        List<Organization> GetAllOrganizations();
        bool HasOrganization(int id);
    }
}
