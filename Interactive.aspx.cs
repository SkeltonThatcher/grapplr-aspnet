using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using log4net;

public partial class Interactive : System.Web.UI.Page
{
    private ILog logger;

    protected void Page_Load(object sender, EventArgs e)
    {
        logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "Pre-canned text for log message";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //TODO: log an event
        var message = TextBox1.Text;
        Exception exception = null;

        if (CheckBox1.Checked)
        {
            try
            {
                throw new ApplicationException("Grapplr-thrown exception");
            }
            catch (Exception ex)
            {
                exception = ex;
            }
        }

        switch (RadioButtonList1.SelectedValue) 
        {
            case "Debug" :
                logger.Debug(message, exception);
                break;
            case "Info" :
                logger.Info(message, exception);
                break;
            case "Warning" :
                logger.Warn(message, exception);
                break;
            case "Error" :
                logger.Error(message, exception);
                break;
            default :
                break;
        }

        TextBox2.Text = String.Concat(message, Environment.NewLine, exception);
    }
}