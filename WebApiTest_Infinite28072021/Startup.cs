using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Authentication;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiTest_Infinite28072021.Controllers;
using WebApiTest_Infinite28072021.ServicesDb;
using Microsoft.AspNetCore.Server.IISIntegration;

namespace WebApiTest_Infinite28072021
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        public void ConfigureServices(IServiceCollection services)
        {
            services.AddAuthentication(IISDefaults.AuthenticationScheme);
            services.AddControllers();
            //services.AddDbContext<DataContext.AppContext>(options =>
            //          options.UseSqlServer(
            //              Configuration.GetConnectionString("conn")));
            services.AddDbContext<DataContext.AppContext>(options =>
            {
                options
                   .UseSqlServer(Configuration.GetConnectionString("conn"),
                   assembly =>
                   assembly.MigrationsAssembly
                      (typeof(DataContext.AppContext).Assembly.FullName));
            });

         
            services.AddScoped<IDapper, Dapperr>();
            services.AddTransient<UsrLogController>();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo
                {
                    Title = "Create Api Login API",
                    Version = "v1",
                    Description = "For Test Developer",
                    Contact = new OpenApiContact
                    {
                        Name = "Asep Komarudin",
                        Email = string.Empty,
                        Url = new Uri("https://akord76.com/"),
                    },
                });
            });


        }
    
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, DataContext.AppContext db)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "Test Web Api .Net Core 3.1 v1"));
            }
            else
            {                
                app.UseHsts();
            }
            db.Database.EnsureCreated();
            app.UseHttpsRedirection();
            app.UseRouting();
            app.UseCors(options => options
                            .AllowAnyOrigin()
                            .AllowAnyHeader()
                            .AllowAnyMethod()
                            //.AllowCredentials()
                         );

            app.UseAuthentication();
            app.UseAuthorization();
         
            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "Asep Komarudin API V1");
                c.RoutePrefix = string.Empty;
            });

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });

           

        }
    }
}
