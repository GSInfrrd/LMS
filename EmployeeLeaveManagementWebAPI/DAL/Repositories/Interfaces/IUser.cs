﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LMS_WebAPI_Utils;

namespace LMS_WebAPI_DAL.Repositories.Interfaces
{
 public interface IUser
    {
        EmployeeCommon GetUser(string emailId, string password);
    }
}
