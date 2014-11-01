<%@ Application Language="C#" %>
<%@ Import Namespace="grapplr_aspnet" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="log4net" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);

        log4net.Config.XmlConfigurator.Configure();
    }

</script>
