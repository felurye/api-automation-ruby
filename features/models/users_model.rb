class UsersModel
    attr_accessor :nome, :email, :password, :administrador
        
    def user_hash
        { 
            nome: @nome,
            email: @email,
            password: @password,
            administrador: @administrador
        }
    end
end