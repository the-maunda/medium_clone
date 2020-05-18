defmodule MediumCloneWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias MediumCloneWeb.Schema.Types

  import_types(Types.Usertype)
  import_types(Types.SessionType)
  import_types(Types.PostType)
end