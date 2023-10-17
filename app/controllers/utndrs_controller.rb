class UtndrsController < ApplicationController
    def index
        utndrs = Utndr.all 
        render json: utndrs
    end
    def create
        utndr = Utndr.create(utndr_params)
        render json: utndr
    end
    def update
    end
    def destroy
    end

    private
    def utndr_params
        params.require(:utndr).permit(:name, :age, :content, :image)
    end
end
