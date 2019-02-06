defmodule Shortener.Urls do
    @moduledoc """
        The Urls Context
    """
    alias Shortener.Repo
    alias Shortener.Urls.Short

    def get_url(id) do
        Repo.get(Short, id)
    end

    def get_url!(id) do
        Repo.get!(Short, id)
    end

    def list_urls do
        Repo.all(Short)
    end

    def change_url(%Short{} = short) do
        Short.changeset(short, %{})
    end

    def get_url_by(params) do
        Repo.get_by(Short, params)
    end

    def create_url(attrs \\ %{}) do
        %Short{}
        |> Short.changeset(attrs)
        |> Repo.insert()
    end

end