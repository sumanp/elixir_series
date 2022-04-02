# -- Module Plug --
# Plug is a specification for composable modules between web applications.
# At the heart of Plug is the connection, which is represented by the Plug.Conn struct,
# this contains all the data for a given request.
# Plugs come in two flavors - functions and modules.

# A function plug takes two arguments, the connection and a set of options.

defmodule MovieDataM do
  import Plug.Conn
  import Ecto.Query, only: [from: 2]

  alias Teacher.Repo
  alias TeacherWeb.Movie

  def init(opts) do
    Keyword.fetch(opts, :msg)
  end

  def call(conn, msg) do
    movie_total = Repo.one(from m in Movie, select: count("*"))

    case msg do
      {:ok, msg} ->
        custom_msg = "#{msg} #{movie_total}"
        assign(conn, :movie_total_msg, custom_msg)
      :error ->
        default_msg = "We found #{movie_total} movies."
        assign(conn, :movie_total_msg, default_msg)
    end
  end
end


# A module plug has two functions: init and call.
# init initializes a set of options.
# We’ll just return our options to start.
# call takes a Plug.Conn struct and the options returned by our init function.
# This is where we would modify our struct. It also needs to return our connection struct.
