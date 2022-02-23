require "httparty"

describe "GET /usuarios" do
    context "Consultar lista de autores" do
        before(:all) do
            @respose = HTTParty.get(
                "https://serverest.dev/usuarios",
                headers: {
                    "Content-Type": "application/json"
                }
            )
        end

        it "validar Status Code" do
            expect(@respose.code).to eql 200
        end
    end
end