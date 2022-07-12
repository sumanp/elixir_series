defmodule MovieController do
  alias MovieDataM

  plug MovieDataM, [msg: "Your total number of movies:"] when action in [:index] # pass msg as an option to plug
end
