defmodule Shortener.Implementation do
    alias Shortener.Urls

    # String ->  Short Struct

    def short(url) do
        url
        |> valid_url
        |> resolve_url
        |> create_short
    end

    # string -> URI

    def valid_url(url) do
        uri = URI.parse(url)
        case uri do
            %URI{scheme: nil} -> {:error, "invalid URL"}
            %URI{host: nil} -> {:error, "invalid Hostname"}
            %URI{} -> [uri, url]

        end
    end
    
    # URI -> String || {:error, "invalid URL"}
    def resolve_url([uri, url]) do
        case :inet.gethostbyname(to_charlist(uri.host)) do
            {:ok, _} -> url
            {:error, _} -> {:error, "invalid URL"}
        end
    end

    # Tuple -> Tuple
    def resolve_url(%{error: message} = error), do: error



        #{:error, String} -> {:error, String}
    def create_short({:error, error_description}) do
        error_description
    end


    # String -> Short Struct || {:error, String}
    # saves the url in db and when succesful produces Short Struct
    def create_short(url) do
        Urls.create_url(%{
            original_url: url
        })
    end




end