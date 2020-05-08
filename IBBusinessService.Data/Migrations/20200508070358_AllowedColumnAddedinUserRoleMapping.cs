using Microsoft.EntityFrameworkCore.Migrations;

namespace IBBusinessService.Data.Migrations
{
    public partial class AllowedColumnAddedinUserRoleMapping : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "Allowed",
                table: "UserRoleMapping",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Allowed",
                table: "UserRoleMapping");
        }
    }
}
