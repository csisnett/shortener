defmodule Shortener.Repo.Migrations.Urls do
  use Ecto.Migration

  def change do
    create table(:urls) do
      add :original_url, :string
      add :short_url, :integer
    end
  end
end
