resource "vercel_project" "project" {
  name      = "devhubone-guild-site"
  framework = "nextjs"

  git_repository = {
    type              = "github"
    repo              = "devhubone-foundation/devhubone-guild"
    production_branch = "main"
  }

  build_command    = "pnpm prisma migrate deploy && pnpm prisma generate && pnpm nx run devhubone-guild-api-client:generate && pnpm nx build devhubone-guild-site --prod"
  output_directory = "./dist/apps/devhubone-guild-site/.next"
  install_command  = "pnpm install"

  vercel_authentication = {
    deployment_type = "none"
  }
}
