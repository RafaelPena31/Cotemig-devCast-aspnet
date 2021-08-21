using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DEVTALKS.DTO
{
    public class AdsDTO
    {
        int id, userId;
        string title, description, image, link;

        public int Id { get => id; set => id = value; }

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
                    throw new Exception("Campo título obrigatório");
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
                    throw new Exception("Campo descrição obrigatório");
                }
            }
            get { return this.description; }
        }

        public string Image
        {
            set
            {
                if (value != string.Empty)
                {
                    this.image = value;
                }
                else
                {
                    throw new Exception("Campo imagem obrigatório");
                }
            }
            get { return this.image; }
        }

        public string Link
        {
            set
            {
                if (value != string.Empty)
                {
                    this.link = value;
                }
                else
                {
                    throw new Exception("Campo link obrigatório");
                }
            }
            get { return this.link; }
        }

        public int UserId
        {
            set
            {
                if (value != 0)
                {
                    this.userId = value;
                }
                else
                {
                    throw new Exception("Campo userId obrigatório");
                }
            }
            get { return this.userId; }
        }
    }
}