class ClasesController < ApplicationController
    def new
        @clase = Clase.new
    end

    def create
        @clases_params = params.require(:clase).permit(:name, :duration, :theme, :date, :number, 
                                                       :associated_video)
      @clase = Clase.create(@clases_params)
      if @clase.save
          redirect_to clases_index_path, notice: 'Class succesfully created'
      else 
          redirect_to clases_index_path, notice: 'Class succesfully not created'
      end
    end

    def index
        @clases = Clase.all
    end

    def show
        @clase = Clase.find(params[:id])
    end

    def edit
        @clase = Clase.find(params[:id])
    end

    def update
        @clase = Clase.find(params[:id])
      @clase_new_params = params.require(:clase).permit(:name, :duration, :theme, :date, :number, 
                                                        :associated_video)
      if @clase.update(@clase_new_params)
          redirect_to clases_index_path, notice: 'Class edited'
      else
          redirect_to clases_index_path, notice: 'Edit failed'
        
      end
    end

    def delete
        @clase = Clase.find(params[:id])
      @clase.destroy

      redirect_to clases_index_path, notice: 'Class deleted'
    end
end
