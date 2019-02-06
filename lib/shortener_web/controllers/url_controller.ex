defmodule ShortenerWeb.UrlController do
    use ShortenerWeb, :controller

    alias Shortener.Api
    alias Shortener.Urls.Short
    alias Shortener.Urls

    def index(conn, _) do
        conn = fetch_session(conn)
        map = get_session(conn, :short)
        conn = clear_session(conn)


        if map == nil do
            conn |> json(%{error: "Wrong Format"})
            
        else
            conn |> json(%{
                original_url: map.original_url,
                short_url: map.id
            })
        end
    end

    def show(conn, %{"id" => id}) do
        short = Urls.get_url(id)
        redirect(conn, external: short.original_url)
    end

    def create(conn, %{"short" => %{"original_url" => original_url}}) do
        {:ok, short} = Api.short(original_url)
        conn = fetch_session(conn)
        conn =  put_session(conn, :short, Map.from_struct(short))
        redirect(conn, to: Routes.url_path(conn, :index))

    end

end