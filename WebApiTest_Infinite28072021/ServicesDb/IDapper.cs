using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiTest_Infinite28072021.ServicesDb
{
    public interface IDapper : IDisposable
    {
        DbConnection GetDbconnection();
        T Get<T>(string sp, DynamicParameters parms, CommandType commandType = CommandType.StoredProcedure);
        List<T> GetAll<T>(string sp, DynamicParameters parms, CommandType commandType = CommandType.Text);
        int Execute(string sp, DynamicParameters parms, CommandType commandType = CommandType.StoredProcedure);
        T Insert<T>(string sp, DynamicParameters parms, CommandType commandType = CommandType.StoredProcedure);
        T Update<T>(string sp, DynamicParameters parms, CommandType commandType = CommandType.StoredProcedure);
    }
}
