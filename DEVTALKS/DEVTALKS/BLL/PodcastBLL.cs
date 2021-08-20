using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using DEVTALKS.DAL;
using DEVTALKS.DTO;

namespace DEVTALKS.BLL
{
    public class PodcastBLL
    {
        private MySqlDAL connection = new MySqlDAL();

        public DataTable GetPodcast()
        {
            string sql = string.Format($@"SELECT * FROM Podcast;");
            return connection.QueryExecution(sql);
        }

        public DataTable GetPodcastByTheme(int themeId)
        {
            string sql = string.Format($@"SELECT * FROM Podcast where Theme_id' = {themeId}';");
            return connection.QueryExecution(sql);
        }

        public DataTable GetPodcastByChannel(int ChannelId)
        {
            string sql = string.Format($@"SELECT * FROM Podcast where Channel_id' = {ChannelId}';");
            return connection.QueryExecution(sql);
        }

        public void CreatePodcast(PodcastDTO podcast)
        {
            string sql = string.Format($@"INSERT INTO Podcast VALUES(NULL, '{podcast.Title}', '{podcast.Description}', '{podcast.Like}', '{podcast.Dislike}', '{podcast.Path}', '{podcast.ChannelId}', '{podcast.ChannelUserId}', '{podcast.ThemeId}');");
            connection.ExecutionSQL(sql);
        }

        public void UpdatePodcast(PodcastDTO podcast)
        {
            string sql = string.Format($@"UPDATE Podcast SET title='{podcast.Title}', description='{podcast.Description}', like='{podcast.Like}', dislike='{podcast.Dislike}', path='{podcast.Path}', Channel_id='{podcast.ChannelId}', Channel_User_id='{podcast.ChannelUserId}', Theme_id='{podcast.ThemeId}' WHERE id = '{podcast.Id}';");

            connection.ExecutionSQL(sql);
        }

        public void AddLike(PodcastDTO podcast)
        {
            string sql = string.Format($@"UPDATE Podcast SET title='{podcast.Title}', description='{podcast.Description}', like='{podcast.Like + 1}', dislike='{podcast.Dislike}', path='{podcast.Path}', Channel_id='{podcast.ChannelId}', Channel_User_id='{podcast.ChannelUserId}', Theme_id='{podcast.ThemeId}' WHERE id = '{podcast.Id}';");

            connection.ExecutionSQL(sql);
        }

        public void DeleteLike(PodcastDTO podcast)
        {
            string sql = string.Format($@"UPDATE Podcast SET title='{podcast.Title}', description='{podcast.Description}', like='{podcast.Like - 1}', dislike='{podcast.Dislike}', path='{podcast.Path}', Channel_id='{podcast.ChannelId}', Channel_User_id='{podcast.ChannelUserId}', Theme_id='{podcast.ThemeId}' WHERE id = '{podcast.Id}';");

            connection.ExecutionSQL(sql);
        }

        public void AddDislike(PodcastDTO podcast)
        {
            string sql = string.Format($@"UPDATE Podcast SET title='{podcast.Title}', description='{podcast.Description}', like='{podcast.Like}', dislike='{podcast.Dislike + 1}', path='{podcast.Path}', Channel_id='{podcast.ChannelId}', Channel_User_id='{podcast.ChannelUserId}', Theme_id='{podcast.ThemeId}' WHERE id = '{podcast.Id}';");

            connection.ExecutionSQL(sql);
        }

        public void DeleteDislike(PodcastDTO podcast)
        {
            string sql = string.Format($@"UPDATE Podcast SET title='{podcast.Title}', description='{podcast.Description}', like='{podcast.Like}', dislike='{podcast.Dislike - 1}', path='{podcast.Path}', Channel_id='{podcast.ChannelId}', Channel_User_id='{podcast.ChannelUserId}', Theme_id='{podcast.ThemeId}' WHERE id = '{podcast.Id}';");

            connection.ExecutionSQL(sql);
        }

        public void DeletePodcast(int id)
        {
            string sql = string.Format($@"DELETE FROM Podcast WHERE id = '{id}';");
            connection.ExecutionSQL(sql);
        }
    }
}