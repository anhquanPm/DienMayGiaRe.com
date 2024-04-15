using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SieuThiDienMay
{
    public class User
    {
        private string id;
        string name;
        private string userName;
        private string passWord;

        public User(string id, string name ,string userName, string passWord)
        {
            this.id = id;
            this.name = name;
            this.userName = userName;
            this.passWord = passWord;
           
        }

        public User() { }

        public string Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public string UserName { get => userName; set => userName = value; }
        public string PassWord { get => passWord; set => passWord = value; }
    }
}