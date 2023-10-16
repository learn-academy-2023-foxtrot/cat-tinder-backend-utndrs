class UtndrsController < ApplicationController
    def index
        utndrs = Utndr.all 
        render json: utndrs
    end
    def create
    end
    def update
    end
    def destroy
    end
end
