class Rubin::InstallGenerator < Rails::Generators::Base

  def run_migrations
    say_status :running, "migrations"
    rake 'rubin:install:migrations'
  end

end
