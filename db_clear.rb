require 'bundler/setup'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database  => "db/lab4.sqlite3"
)

if ActiveRecord::Base.connection.table_exists? 'authors'
  CreateAuthorsMigration.new.migrate(:down)
end
if ActiveRecord::Base.connection.table_exists? 'books'
  CreateBooksMigration.new.migrate(:down)
end
if ActiveRecord::Base.connection.table_exists? 'genres'
  CreateGenresMigration.new.migrate(:down)
end
if ActiveRecord::Base.connection.table_exists? 'books_genres'
  CreateBooksGenresMigration.new.migrate(:down)
end
