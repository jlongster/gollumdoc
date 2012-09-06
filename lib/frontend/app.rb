require 'gollum/frontend/app'
require 'gollum/frontend/views/page'

class Precious::App
  dir = File.dirname(File.expand_path(__FILE__))

  set :mustache, {
    # Mustache templates live here
    :templates => "#{dir}/templates",
  }
end

class ReadOnlyApp < Precious::App
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

class Precious::Views::Page
  def site_title
    Precious::App.settings.wiki_options[:site_title] or "Set a title"
  end
end
