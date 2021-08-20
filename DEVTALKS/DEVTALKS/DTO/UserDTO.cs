using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DEVTALKS.DTO
{
    public class UserDTO {
      private string name, email, id, password;
      private int isAdmin, isCC, isPremium;

      public string Id { get => id; set => id = value; }

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
                    throw new Exception("Campo nome obrigatório");
                }
            }
            get { return this.name; }
        }

     public string Password
        {
            set
            {
                if (value != string.Empty)
                {
                    this.password = value;
                }
                else
                {
                    throw new Exception("Campo senha obrigatório");
                }
            }
            get { return this.password; }
        }

     public string Email
        {
            set
            {
                if (value != string.Empty)
                {
                    this.email = value;
                }
                else
                {
                    throw new Exception("Campo email obrigatório");
                }
            }
            get { return this.email; }
        }

        public int IsCC
        {
            set
            {
                if (value != 0)
                {
                    this.isCC = value;
                }
                else
                {
                    throw new Exception("Campo CC obrigatório");
                }
            }
            get { return this.isCC; }
        }

     public int IsAdmin
        {
            set
            {
                if (value != 0)
                {
                    this.isAdmin = value;
                }
                else
                {
                    throw new Exception("Campo admin obrigatório");
                }
            }
            get { return this.isAdmin; }
        }

     public int IsPremium
        {
            set
            {
                if (value != 0)
                {
                    this.isPremium = value;
                }
                else
                {
                    throw new Exception("Campo premium obrigatório");
                }
            }
            get { return this.isPremium; }
        }
    }
}