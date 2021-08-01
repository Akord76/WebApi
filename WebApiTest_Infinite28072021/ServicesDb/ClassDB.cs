using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using WebApiTest_Infinite28072021.Models;

namespace WebApiTest_Infinite28072021.ServicesDb
{
    public class ClassDB
    {
        private readonly IDapper _dapperConfig;

        public ClassDB()
        {
        }

        public ClassDB(IDapper dapper)
        {
            _dapperConfig = dapper;
        }

        public bool GetUser(Parameters userinfo)
        {
            var dbparams = new DynamicParameters();
            dbparams.Add("@Name", userinfo.Nama);
            dbparams.Add("@Password", userinfo.Password);
            object data = _dapperConfig.Get<Parameters>("[dbo].[Api_sp_GetUser]", dbparams, commandType: CommandType.StoredProcedure);
            int Var = Convert.ToInt32(data);
            return Var == 1;
        }
    }
}
