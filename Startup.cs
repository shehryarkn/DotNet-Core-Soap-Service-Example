using System.ServiceModel;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyInjection.Extensions;
using Models;
using SoapCore;

namespace DotNet_Core_Soap_Service_Example
{
    public class Startup
    {
        public void ConfigureServices(IServiceCollection services)
        {
            services.TryAddSingleton<ISampleService, SampleService>();
            services.AddMvc();
        }

        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
			app.UseSoapEndpoint<ISampleService>("/Service.asmx", new BasicHttpBinding(), SoapSerializer.XmlSerializer);
        }
    }
}
