defmodule MediumCloneWeb.Schema do
  use Absinthe.Schema

  alias MediumCloneWeb.Resolvers
  alias MediumCloneWeb.Schema.Middleware
  #import Types
  import_types(MediumCloneWeb.Schema.Types)

  query do
    @desc "get a list of all users"
    field :users, list_of(:user_type) do
    #Resolver
    middleware(Middleware.Authorize, "admin")
    resolve(&Resolvers.UserResolver.users/3)
    end
  end

  mutation do
    @desc "Register a new user"
    field :register_user, type: :user_type do
      arg(:input, non_null(:user_input_type))
      resolve(&Resolvers.UserResolver.register_user/3)
    end

    @desc "Login the user and return a JWT Token"
    field :login_user, type: :session_type do
      arg :input, non_null :session_input_type
      resolve(&Resolvers.SessionResolver.login_user/3)
    end

    @desc "Create a new post"
    field :add_post, type: :post_type do
      arg :input, non_null :post_input_type
      resolve(&Resolvers.PostResolver.create_post/3)
    end
  end


end