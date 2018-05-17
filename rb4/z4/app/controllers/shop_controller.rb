class ShopController < ApplicationController

 http_basic_authenticate_with name: "kuba", password: "pass", except: :index	

@@clients =[{ :idx => 1, :imie => "jan", :nazwisko => "kowalski", :smail => "Krakow, ul. dluga 12, 32-060", :email => "jk@gmail.com"}]
	def index
		@clientBase = @@clients
	end

	def show
		@CliN=params[:id].to_i-1
		@cli = @@clients[@CliN]
		@name = @cli[:imie]
		@sur  = @cli[:nazwisko]
		@sm = @cli[:smail]
		@em = @cli[:email]
	end
	
	def update
		@CliN=params[:ind].to_i-1
                @cli = @@clients[@CliN]
                @cli[:imie] = params[:title1]
                @cli[:nazwisko]  = params[:title2]
                @cli[:smail] = params[:title3]
                @cli[:email] = params[:title4]
		@@clients[@CliN] = @cli

		redirect_to action: "index"
	end

	def edit
		@CliN=params[:id].to_i-1
                @cli = @@clients[@CliN]
                 @cli[:imie]=@nname
                @cli[:nazwisko]=@nsur
                @cli[:smail]=@nsm
                @cli[:email]=@nem
		@@clients[@CliN] = @cli
	end

	

	helper_method :clients
	def clients
		@@clients
	end


end
