class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show
        # raise params.inspect
        @dog = Dog.find(params[:id])
    end
end
