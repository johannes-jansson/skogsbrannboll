class StrikesController < ApplicationController

    def create
        @strikes = Strike.new(strike_params)
        @strikes.save
        redirect_to "/strikes"
    end

    def index
        @strikes = Strike.all
    end

    def new
    end

    def show
        @strike = Strike.find(params[:id])
    end

    private
    def strike_params
        params.require(:strike).permit(:score_a, :score_b, :bat, :ball)
    end
end
