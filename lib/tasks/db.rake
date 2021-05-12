namespace :db do
  desc "Recreate public schema."
  task reset_schema: :environment do
    q = <<-SQL
      DROP SCHEMA public CASCADE;
      CREATE SCHEMA public;
    SQL
    ActiveRecord::Base.connection.execute(q)
  end
end
