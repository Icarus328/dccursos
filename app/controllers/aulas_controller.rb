class AulasController < ApplicationController
    def new
        @aula = Aula.new
        @curso = Curso.find(params[:id])
    end

    def create
        @aulas_params = params.require(:aula).permit(:name, :duration, :theme, :date, :number, 
                                                     :associated_video, :user_id, :curso_id)
        @aula = Aula.create(@aulas_params)
      if @aula.save
          redirect_to aulas_index_path(:id => @aula.curso_id), notice: 'Aula creada'
      else
          redirect_to aulas_index_path(:id => @aula.curso_id), 
                      notice: 'Error al crear Aula, por favor revisar que los
                       espacios estan completados'
      end
    end

    def index
        @curso = Curso.find(params[:id])
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
                                                         :associated_video,
                                                         :user_id, :curso_id)
        if @aula.update(@aulas_new_params)
            redirect_to aulas_index_path(:id => @aula.curso_id), notice: 'Aula editada'
        else
            redirect_to aulas_index_path(:id => @aula.curso_id), 
                        notice: 'Error al crear Aula, por favor revisar que los espacios
                         estan completados'
      end
    end

    def delete
        @aula = Aula.find(params[:id])
        @aula.destroy
        redirect_to aulas_index_path(:id => @aula.curso_id), notice: 'Aula eliminada'
    end
end

