using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using WebApiTest_Infinite28072021.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApiTest_Infinite28072021.ServicesDb;
using Microsoft.AspNetCore.Cors;
using Microsoft.Extensions.Logging;
using System.Security.Claims;

namespace WebApiTest_Infinite28072021.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [EnableCors("AllowOrigin")]
    public class UsrLogController : ControllerBase
    {
        Parameters UserValidData = new Parameters();
        
        private readonly IDapper _dapper;
        public UsrLogController(IDapper dapper)
        {
            _dapper = dapper;
        }

        [Route("GetLogin")]
        [HttpPost]
        public async Task<ActionResult<Parameters>> Get(string userName, string  userpass)
        {
          
            var Datauser = await GetUser(userName, userpass);

            if (!(string.IsNullOrWhiteSpace(userName) || string.IsNullOrWhiteSpace(userpass)))
            {
                if (Datauser != null)
                {
                    UserValidData = new Parameters()
                    {
                        Nama = Datauser.Nama,
                        Password = Datauser.Password,
                        Hak_Akses = Datauser.Hak_Akses
                    };
                }
                else
                {
                    return Unauthorized("Having Problem Request, Empty Data or User ID Not Valid");
                }
            }
            return Ok(UserValidData);
          
        }
        private async Task<Parameters> GetUser([FromQuery] string nama,string pass)
        {
            var dbparams = new DynamicParameters();
            dbparams.Add("@Name", nama, DbType.String);
            dbparams.Add("@Password", pass, DbType.String);
            return await Task.FromResult( _dapper.Get<Parameters>("[dbo].[Api_sp_GetUser]", dbparams, commandType: CommandType.StoredProcedure));
        }


        [HttpGet(nameof(GetAll))]
        public async Task<List<Parameters>> GetAll()
        {
            var result = await Task.FromResult(_dapper.GetAll<Parameters>($"Select NAMA,PASSWORD,HAK_AKSES from [tm_login]", null, commandType: CommandType.Text));
            return result;
        }

        
        [HttpGet(nameof(GetById))]
        public async Task<Parameters> GetById(string Id)
        {
            var dbparams = new DynamicParameters();
            dbparams.Add("@Name", Id, DbType.String);
            var result = await Task.FromResult(_dapper.Get<Parameters>("[Api_sp_GetUserById]", dbparams, commandType: CommandType.StoredProcedure));
            return result;
        }

    }
}