using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace IBBusinessService.Data.Migrations
{
    public partial class UserRoleMappingAdded : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "UserRoleMapping",
                columns: table => new
                {
                    MappingId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserId = table.Column<int>(nullable: false),
                    ControllerName = table.Column<string>(type: "varchar(50)", nullable: true),
                    Action = table.Column<string>(type: "varchar(50)", nullable: true),
                    CreatedDate = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserRoleMapping", x => x.MappingId);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "UserRoleMapping");
        }
    }
}
