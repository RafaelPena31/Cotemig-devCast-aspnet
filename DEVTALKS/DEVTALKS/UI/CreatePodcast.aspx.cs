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

        protected void btn_Click(object sender, EventArgs e)
        {
            try
            {
                PodcastBLL podcastBLL = new PodcastBLL();
                PodcastDTO podcastDTO = new PodcastDTO();

                podcastDTO.Description = DescriptionInput.Text;
                podcastDTO.Path = ImageInput.Text;
                podcastDTO.Title = TitleInput.Text;
                podcastDTO.Theme = ThemeInput.Text;
                podcastDTO.Like = 0;
                podcastDTO.Dislike = 0;
                podcastDTO.ChannelId = 0;
                podcastDTO.ChannelUserId = 0;

                podcastBLL.CreatePodcast(podcastDTO);

                Response.Redirect("Home.aspx");
            }
            catch
            {
                Response.Write("<script>alert('Erro inesperado')<script>");
            }
        }
    }
}