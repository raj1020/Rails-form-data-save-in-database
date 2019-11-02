class CooksController < ApplicationController
    def index
        @cooks = Cook.all
    end

    def show
        id = params[:id]
        @cook = Cook.find(id)
    end

    def new
        @cook = Cook.new
    end

    def create
        @cook=Cook.create(cook_params)
        byebug
        redirect_to root_path
    end

    def edit
        id = params[:id]
        @cook = Cook.find(id)
    end

    def update
        id = params[:id]
        @cook = Cook.find(id)
        #finsih logic for updating the record
    end

    def destroy
        id = params[:id]
        @cook = Cook.find(id)
        #finish logic for deleting the record
    end

    private 


    def cook_params

        params.require(:cook).permit(:name, :phone, :address, :email, :role, :role2)
    end 
end