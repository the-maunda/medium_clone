defmodule MediumCloneWeb.Resolvers.UserResolver do
  def users(_, _, _) do
    {:ok, MediumClone.Accounts.list_users()}
  end

  def register_user(_, %{input: input}, _) do
    MediumClone.Accounts.create_user(input)
  end
end