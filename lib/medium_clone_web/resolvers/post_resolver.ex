defmodule MediumCloneWeb.Resolvers.PostResolver do
  alias MediumClone.Blog

  def posts(_, _, _) do
    Blog.list_posts()
  end

  def create_post(_, %{ input: input}, _) do
    Blog.create_post(input)
  end
end