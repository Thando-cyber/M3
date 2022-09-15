using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(M3Proj.Startup))]
namespace M3Proj
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
