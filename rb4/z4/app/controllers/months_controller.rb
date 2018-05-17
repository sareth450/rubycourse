require 'date'
class MonthsController < ApplicationController
    @@year=2018
    @months
    
    def new
    end

    def edit
        @newyear=@@year
    end

    def update
        @@year=params[:title].to_i
        redirect_to action: "index"
    end

    def index
        @months= {1=>"Jan",2=>"Feb",3=>"Mar",4=>"Apr",5=>"May",6=>"Jun",7=>"Jul",8=>"Aug",9=>"Sep",10=>"Oct",11=>"Nov",12=>"Dec"}
    end

    def show
        @monthNr=params[:id].to_i
        @currmonth=Hash.new
	day=1
	while 1 do
           if(Date.valid_date?(@@year, @monthNr, day)==true)
            	wday=Date.new(@@year,@monthNr, day).wday
	    	mday=Date.new(@@year,@monthNr, day)
            	@currmonth[mday]=wday
            	day=day+1
	    else
		break
            end
	end
        render "months/show"
    end

    helper_method :year

    def year
        @@year
    end
end
