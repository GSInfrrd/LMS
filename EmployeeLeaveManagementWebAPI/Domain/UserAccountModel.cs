﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LMS_WebAPI_Domain
{
    public class UserAccountModel
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public Nullable<System.DateTime> Lastlogin { get; set; }
        public int RefEmployeeId { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public string ProjectName { get; set; }
        public String RoleName { get; set; }
        public int? TotalLeaveCount { get; set; }
        public int TotalCountTaken { get; set; }
        public string ManagerName { get; set; }
        public System.DateTime DateOfJoining { get; set; }


    }
}
