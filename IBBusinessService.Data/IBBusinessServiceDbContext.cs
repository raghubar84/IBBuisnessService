using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.EntityFrameworkCore;

namespace IBBusinessService.Data
{
    public class IBBusinessServiceDbContext:DbContext
    {
        public IBBusinessServiceDbContext(DbContextOptions<IBBusinessServiceDbContext> options) : base(options)
        {

        }
    }
}
