require 'gollum/frontend/app'
require 'gollum/frontend/views/page'

class DocApp < Precious::App
  dir = File.dirname(File.expand_path(__FILE__))

  set :mustache, {
    # Mustache templates live here
    :templates => "#{dir}/templates",
  }

  get '/css/custom.css' do
    if File.exists?('custom.css') then
      send_file 'custom.css'
    end
  end
end

class ReadOnlyApp < DocApp
  get '/edit/*' do
    "You cannot edit pages in read-only mode"
  end

  post '/edit/*' do
    "You cannot edit pages in read-only mode"
  end

  get '/delete/*' do
    "You cannot delete pages in read-only mode"
  end

  get '/create/*' do
    "You cannot create pages in read-only mode"
  end

  post '/create' do
    "You cannot create pages in read-only mode"
  end

  post '/revert/:page/*' do
    "You cannot revert pages in read-only mode"
  end
end
