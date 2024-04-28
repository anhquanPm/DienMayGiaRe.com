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
        private int namSinh;

        public User( string name ,string userName, string passWord, int namSinh)
        {
            
            this.name = name;
            this.userName = userName;
            this.passWord = passWord;
            this.namSinh = namSinh;
        }

        public User() { }

    
        public string Name { get => name; set => name = value; }
        public string UserName { get => userName; set => userName = value; }
        public string PassWord { get => passWord; set => passWord = value; }
        public int NamSinh { get => namSinh; set => namSinh = value; }
    }
}