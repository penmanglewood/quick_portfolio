require 'rubygems'
require 'sinatra'
require 'haml'

configure do
	@@content = YAML.load_file("./content.yml") rescue nil || {}

	@@link_hash = {}
	@@content['sections'].each do |section|
		if section['links']
			section['links'].each do |link|
				@@link_hash[link['url']] = link
			end
		end
	end
end

get '/' do
	@page_title = @@content['settings']['home_page_title']
	haml :home
end

get "/#{@@content['settings']['projects_path_name']}/:name" do
	if !params[:name].nil? && !@@link_hash[params[:name]].nil?
		@link = @@link_hash[params[:name]]
		
		@page_title = @link['link_page_title']
		@project_name = @link['name']
		@subtitle = @link['subtitle']
		@roles = @link['roles']

		haml :"links/#{@link['url']}"
	else
		redirect to('/')
	end
end

get '/*' do
	redirect to('/')
end