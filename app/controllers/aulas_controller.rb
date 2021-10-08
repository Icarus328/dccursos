class AulasController < ApplicationController
    def new
        @aula = Aula.new
    end

    def create
        @aulas_params = params.require(:aula).permit(:name, :duration, :theme, :date, :number, 
                                                     :associated_video, :associatedcurso)
      @aula = Aula.create(@aulas_params)
      if @aula.save
          redirect_to aulas_index_path, notice: 'Aula successfully created'
      else
          redirect_to aulas_index_path, notice: 'Error while creating the aula'
      end
    end

    def index
        @aulas = Aula.all
    end

    def show
        @aula = Aula.find(params[:id])
    end

    def edit
        @aula = Aula.find(params[:id])
    end

    def update
        @aula = Aula.find(params[:id])
      @aulas_new_params = params.require(:aula).permit(:name, :duration, :theme, :date, :number, 
                                                       :associated_video, :associatedcurso)
      if @aula.update(@aulas_new_params)
          redirect_to aulas_index_path, notice: 'Aula edited correctly'
      else
          redirect_to aulas_index_path, notice: 'Error while editing the aula'
      end
    end

    def delete
        @aula = Aula.find(params[:id])
      @aula.destroy
      redirect_to aulas_index_path, notice: 'Aula nicely destroyed'
    end
end
