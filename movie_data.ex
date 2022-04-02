# Plug is a specification for composable modules between web applications.
# At the heart of Plug is the connection, which is represented by the Plug.Conn struct,
# this contains all the data for a given request.
# Plugs come in two flavors - functions and modules.

# A function plug takes two arguments, the connection and a set of options.

defmodule MovieData do
  import Plug.Conn
  import Ecto.Query, only: [from: 2]

  alias Teacher.Repo
  alias TeacherWeb.Movie

  def movie_total(conn, _options) do
    movie_total = Repo.one(from m in Movie, select: count("*"))
    assign(conn, :movie_total, 3)
  end
end
