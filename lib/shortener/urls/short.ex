defmodule Shortener.Urls.Short do
    use Ecto.Schema
    import Ecto.Changeset

    schema "urls" do
        #this was never used as I forgot to put :id
        @primary_key {:short_url, :integer, autogenerate: true}
        field :original_url, :string
    end

    def changeset(short, attrs \\ %{}) do
        short
        |> cast(attrs, [:original_url])
        |> validate_required([:original_url])
    end
end