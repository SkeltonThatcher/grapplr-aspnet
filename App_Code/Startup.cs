using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(grapplr_aspnet.Startup))]
namespace grapplr_aspnet
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
