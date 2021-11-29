class CursosController < ApplicationController
    def new
        @curso = Curso.new
    end

    def search
        @cursos = Curso.where("name LIKE ?", "%" + params[:q] + "%")
    end

    def search_categoria
        @cursos = Curso.where("category LIKE ?", "%" + params[:q_categoria] + "%")
    end

    def create
        @cursos_params = params.require(:curso).permit(:name, :description, :duration, :teacher, 
                                                       :price, :category, :user_id)
        @curso = Curso.create(@cursos_params)
        if @curso.save
            redirect_to cursos_index_path, notice: 'Curso creado'
        else
            redirect_to cursos_index_path, 
                        notice: 'Error al crear Curso, por favor revisar que los
                         espacios estan completados'
        end
    end

    def index
        @cursos = Curso.all
    end

    def show
        @curso = Curso.find(params[:id])
    end

    def edit
        @curso = Curso.find(params[:id])
    end

    def update
        @curso = Curso.find(params[:id])
        @cursos_new_params = params.require(:curso).permit(:name, :description, :duration, 
                                                           :teacher, 
                                                           :price, :category, :user_id)
        if @curso.update(@cursos_new_params)
            redirect_to cursos_index_path, notice: 'Curso editado'
        else
            redirect_to cursos_index_path, 
                        notice: 'Error al crear Curso, por favor revisar que 
                        los espacios estan completados'
        end
    end

    def delete
        @curso = Curso.find(params[:id])
        @curso.destroy
        redirect_to cursos_index_path, notice: 'Curso eliminado'
    end

    def stats
        @curso = Curso.find(params[:id])
    end
end
