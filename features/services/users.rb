module Rest
    class Users 
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_users
            self.class.get('/usuarios')
        end

        def get_user(id)
            self.class.get("/usuarios/#{id}")
        end

        def post_user(user)
            self.class.post("/usuarios", body: user.to_json)
        end
    end
end
