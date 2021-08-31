using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DEVTALKS.BLL;
using DEVTALKS.DTO;

namespace DEVTALKS.UI
{
    public partial class Sigup : System.Web.UI.Page
    {
        UserBLL userBLL = new UserBLL();
        UserDTO userDTO = new UserDTO();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                userDTO.Name = txtUser.Text;
                userDTO.Email = txtEmail.Text;
                userDTO.Password = txtPassword.Text;
                userDTO.IsAdmin = 1;
                userDTO.IsCC = 1;
                userDTO.IsPremium = 1;

                userBLL.Insert(userDTO);

                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Registrado com sucesso!!!')", true);

                Response.Redirect("Login.aspx");

            }catch(Exception error)
            {
                msgerror.Text = "*" + error.Message;
            }
        }
    }
}