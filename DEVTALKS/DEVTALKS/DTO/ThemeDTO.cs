using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DEVTALKS.DTO
{
    public class ThemeDTO
    {
        private int id;
        private string title, color;

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
                    throw new Exception("Campo title obrigatório");
                }
            }
            get { return this.title; }
        }

        public string Color
        {
            set
            {
                if (value != string.Empty)
                {
                    this.color = value;
                }
                else
                {
                    throw new Exception("Campo color obrigatório");
                }
            }
            get { return this.color; }
        }
    }
}