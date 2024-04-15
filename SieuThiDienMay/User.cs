using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SieuThiDienMay
{
    public class User
    {
        string name;
        private string userName;
        private string passWord;

        public User( string name ,string userName, string passWord)
        {
            
            this.name = name;
            this.userName = userName;
            this.passWord = passWord;
           
        }

        public User() { }

    
        public string Name { get => name; set => name = value; }
        public string UserName { get => userName; set => userName = value; }
        public string PassWord { get => passWord; set => passWord = value; }
    }
}