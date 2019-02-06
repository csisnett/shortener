defmodule ShortenerWeb.PageController do
  use ShortenerWeb, :controller

  alias Shortener.Urls.Short

  def index(conn, _params) do
    changeset = Short.changeset(%Short{})
    render(conn, "index.html", changeset: changeset)
  end
end
