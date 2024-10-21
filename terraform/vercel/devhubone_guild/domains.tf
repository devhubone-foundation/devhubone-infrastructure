resource "vercel_project_domain" "devhubone_guild_vercel_app" {
  project_id = vercel_project.project.id
  domain     = "devhubone-guild.vercel.app"
}

resource "vercel_project_domain" "guild_devhubone_com" {
  project_id = vercel_project.project.id
  domain     = "guild.devhubone.com"
}

resource "vercel_project_domain" "www_guild_devhubone_com" {
  project_id = vercel_project.project.id
  domain     = "www.guild.devhubone.com"

  redirect             = vercel_project_domain.guild_devhubone_com.domain
  redirect_status_code = 308
}
