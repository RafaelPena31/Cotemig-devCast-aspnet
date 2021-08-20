using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DEVTALKS.DTO
{
    public class ChannelDTO
    {
        private int id, subs, userId;
        private string name;

        public int Id { get => id; set => id = value; }

        public int Subs
        {
            set
            {
                if (value != 0)
                {
                    this.subs = value;
                }
                else
                {
                    throw new Exception("Campo subs obrigatório");
                }
            }
            get { return this.subs; }
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

        public string Name
        {
            set
            {
                if (value != string.Empty)
                {
                    this.name = value;
                }
                else
                {
                    throw new Exception("Campo name obrigatório");
                }
            }
            get { return this.name; }
        }
    }
}