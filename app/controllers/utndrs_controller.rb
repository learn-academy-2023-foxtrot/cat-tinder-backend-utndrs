class UtndrsController < ApplicationController
    def index
        utndrs = Utndr.all 
        render json: utndrs
    end
    def create
        utndr = Utndr.create(utndr_params)
        if utndr.valid?
          render json: utndr
         else
           render json: utndr.errors, status: 422
         end
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
