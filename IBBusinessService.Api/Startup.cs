using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.EntityFrameworkCore;
using IBBusinessService.Data;
using IBBusinessService.Domain.Services;
using IBBusinessService.Services;
using IBBusinessService.Api.Resources;
using IBBusinessService.Domain;
using AutoMapper;
using IBBusinessAzure.Services;

namespace IBBusinessService.Api
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllers();

            //Fetching Connection string from APPSETTINGS.JSON  
            var ConnectionString = Configuration.GetConnectionString("IBBusinessConnectionString");

            //Entity Framework  
            services.AddDbContext<IBBusinessContext>(options => options.UseSqlServer(ConnectionString));
                                 
            services.AddScoped<IUnitOfWork, UnitOfWork>();
            services.AddScoped<ICourseService, CourseService>();
            services.AddScoped<IProgramService, ProgramService>();
            services.AddScoped<IUserService, UserService>();
            services.AddScoped<IUserRoleMappingService, UserRoleMappingService>();
            services.AddScoped<IBlobStorageService, BlobStorageService>();
            services.AddScoped<IServiceBusSender, ServiceBusSender>();
            services.AddSingleton<IServiceBusConsumer, ServiceBusConsumer>();

            //AutoMapper
            services.AddAutoMapper(typeof(Startup));

            //Swagger Defination
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new Info
                {
                    Version = "v1",
                    Title = "IBBuisinessService API",
                    Description = "IBBuisinessService Core 3.1 Web API",
                    TermsOfService = "None",
                    Contact = new Contact()
                    {
                        Name = "Raghubar Gupta",
                        Email = "raghubar.in@gmail.com",
                        Url = "https://raghubarsites.in/"
                    }
                });

                c.SwaggerDoc("v2", new Info
                {
                    Version = "v2",
                    Title = "IBBuisinessService API",
                    Description = "IBBuisinessService Core 3.1 Web API",
                    TermsOfService = "None",
                    Contact = new Contact()
                    {
                        Name = "Raghubar Gupta",
                        Email = "raghubar.in@gmail.com",
                        Url = "https://raghubarsites.in/"
                    }
                });               
            });
            
            services.AddMvc(x => x.Conventions.Add(new ApiExplorerVersionConvention()));

            //Application-Insights-Log
            services.AddApplicationInsightsTelemetry();

            //Azure-redis-cache
            services.AddStackExchangeRedisCache(option =>
            {
                option.Configuration = Configuration.GetConnectionString("RedisConnection");
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });

            //Swagger Defination
            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "My API V1");
                c.SwaggerEndpoint("/swagger/v2/swagger.json", "My API V2");
            });

            //Servicebus Topic Receive Handling
            //var bus = app.ApplicationServices.GetService<IServiceBusConsumer>();
            //bus.RegisterOnMessageHandlerAndReceiveMessages();
        }
    }
}
