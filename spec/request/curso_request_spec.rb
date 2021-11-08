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
                category: "matematicas"
            }

            @attr_invalid = {
                name: 123,
                description: 123,
                duration: 123,
                teacher: 123,
                price: "42",
                category: 1234
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
            it "should redirect after create a publication" do
                expect do
                  post "/cursos", params: { curso: @attr_invalid }
                end.to change(Curso, :count).by(0)
            end
        end
    end
end