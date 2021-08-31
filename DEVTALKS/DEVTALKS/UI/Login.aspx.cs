using DEVTALKS.BLL;
using DEVTALKS.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEVTALKS.UI
{
    public partial class Login : System.Web.UI.Page
    {
        UserBLL userBLL = new UserBLL();
        UserDTO userDTO = new UserDTO();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
                string email = txtEmail.Text;
                string password = txtPassword.Text;

                Boolean login =  userBLL.Login(email, password);

            if (login)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Usuãrio ou senha incorretos!!!')", true);
            }
        }
    }
}