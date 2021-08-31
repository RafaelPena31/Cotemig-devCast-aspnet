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
    public partial class CreatePodcast : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                PodcastBLL podcastBLL = new PodcastBLL();
                PodcastDTO podcastDTO = new PodcastDTO();

                podcastDTO.Description = DescriptionInput.Text;
                podcastDTO.Path = ImageInput.Text;
                podcastDTO.Title = TitleInput.Text;
                podcastDTO.Theme = ThemeInput.Text;
                podcastDTO.Like = 1;
                podcastDTO.Dislike = 1;
                podcastDTO.ChannelId = 1;
                podcastDTO.ChannelUserId = 1;

                podcastBLL.CreatePodcast(podcastDTO);

                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Podcast registrado com sucesso!!!')", true);

                DescriptionInput.Text = "";
                ImageInput.Text = "";
                TitleInput.Text = "";
                ThemeInput.Text = "";
            }
            catch (Exception error)
            {
                msgError.Text = "* " + error.Message;
            }
        }
    }
}