require "rails_helper"

class CursoTest < ActiveSupport::TestCase

    RSpec.describe "Cursos", type: :request do
        before(:each) do
            @attr_valid = {
                name: "Example name",
                description: "Buen curso",
                duration: "tres días",
                teacher: "Carojasb",
                price: 42,
            }

            @attr_invalid = {
                name: 123,
                description: 123,
                duration: 123,
                teacher: 123,
                price: "42",
            }

        end
    
        describe "index" do
            it "should return a successful request" do
                get "/cursos/index"
                expect(response).to have_http_status(:ok)
            end
        end
        
        describe "new" do 
            it "should return a successful request" do
                get "/cursos/new"
                expect(response).to have_http_status(:ok)
            end
        end

        describe "create" do
            it "should redirect after create a succesfull publication" do
                expect do
                    post "/cursos", params: { curso: @attr_valid}
                end.to change(Curso, :count).by(1)
            end
        end 

        describe "delete" do
            it "count should decrease after delete a curso" do 
                curso = Curso.create!(@attr_valid)
                expect do
                    delete cursos_delete_path(id: curso.id)
                end.to change(Curso, :count).by(-1)
            end
        end
    end
end