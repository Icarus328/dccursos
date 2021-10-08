class CursosController < ApplicationController
    def new
        @curso = Curso.new
    end

    def create
        @cursos_params = params.require(:curso).permit(:name, :description, :duration, :teacher, 
                                                       :price)
      @curso = Curso.create(@cursos_params)
      if @curso.save
          redirect_to cursos_index_path, notice: 'Curso successfully created'
      else
          redirect_to cursos_index_path, notice: 'Error while creating the curso'
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
      @cursos_new_params = params.require(:curso).permit(:name, :description, :duration, :teacher, 
                                                         :price)
      if @curso.update(@cursos_new_params)
          redirect_to cursos_index_path, notice: 'Curso edited correctly'
      else
          redirect_to cursos_index_path, notice: 'Error while editing the curso'
      end
    end

    def delete
        @curso = Curso.find(params[:id])
      @curso.destroy
      redirect_to cursos_index_path, notice: 'Curso nicely destroyed'
    end
end
