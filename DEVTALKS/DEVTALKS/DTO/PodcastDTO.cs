using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DEVTALKS.DTO
{
    public class PodcastDTO
    {
        private int id, channelId, channelUserId, like, dislike;
        private string title, description, path, theme;

        public int Id { get => id; set => id = value; }

        public int ChannelId
        {
            set
            {
                if (value != 0)
                {
                    this.channelId = value;
                }
                else
                {
                    throw new Exception("Campo channel id obrigatório");
                }
            }
            get { return this.channelId; }
        }

        public int ChannelUserId
        {
            set
            {
                if (value != 0)
                {
                    this.channelUserId = value;
                }
                else
                {
                    throw new Exception("Campo channel user id obrigatório");
                }
            }
            get { return this.channelUserId; }
        }

        public string Theme
        {
            set
            {
                if (value != string.Empty)
                {
                    this.theme = value;
                }
                else
                {
                    throw new Exception("Campo channel user id obrigatório");
                }
            }
            get { return this.theme; }
        }

        public int Like
        {
            set
            {
                if (value != 0)
                {
                    this.like = value;
                }
                else
                {
                    throw new Exception("Campo like obrigatório");
                }
            }
            get { return this.like; }
        }

        public int Dislike
        {
            set
            {
                if (value != 0)
                {
                    this.dislike = value;
                }
                else
                {
                    throw new Exception("Campo dislike obrigatório");
                }
            }
            get { return this.dislike; }
        }

        public string Title
        {
            set
            {
                if (value != string.Empty)
                {
                    this.title = value;
                }
                else
                {
                    throw new Exception("Campo title obrigatório");
                }
            }
            get { return this.title; }
        }

        public string Description
        {
            set
            {
                if (value != string.Empty)
                {
                    this.description = value;
                }
                else
                {
                    throw new Exception("Campo title obrigatório");
                }
            }
            get { return this.description; }
        }

        public string Path
        {
            set
            {
                if (value != string.Empty)
                {
                    this.path = value;
                }
                else
                {
                    throw new Exception("Campo path obrigatório");
                }
            }
            get { return this.path; }
        }

    }
}