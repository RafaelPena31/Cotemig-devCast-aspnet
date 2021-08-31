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
    public partial class Home2 : System.Web.UI.Page
    {
        PodcastBLL podcastBLL = new PodcastBLL();
        PodcastDTO podcastDTO = new PodcastDTO();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               ShowGridView();
            }
        }

        public void ShowGridView()
        {
            gridView.DataSource = podcastBLL.GetPodcast();
            gridView.DataBind();
        }

        protected void gridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            podcastDTO.Id = Convert.ToInt32(gridView.DataKeys[e.RowIndex].Value.ToString());
            podcastBLL.DeletePodcast(podcastDTO.Id);
            ShowGridView();
        }

        protected void gridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridView.EditIndex = -1;
            ShowGridView();
        }

        protected void gridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridView.PageIndex = e.NewEditIndex;
            ShowGridView();
        }

        protected void gridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            podcastDTO.Id = Convert.ToInt32(gridView.DataKeys[e.RowIndex].Value.ToString());
            podcastDTO.Title = e.NewValues[0].ToString();
            podcastDTO.Description = e.NewValues[1].ToString();
            podcastDTO.Theme = e.NewValues[2].ToString();
            podcastDTO.Path = e.NewValues[3].ToString();
            podcastDTO.Like = 1;
            podcastDTO.Dislike = 1;
            podcastDTO.ChannelId = 1;
            podcastDTO.ChannelUserId = 1;

            podcastBLL.UpdatePodcast(podcastDTO);

            gridView.EditIndex = -1;
            ShowGridView();
        }
    }
}