defmodule Cheval.Repo.Migrations.CreateRequest do
  use Ecto.Migration

  def change do
    create table(:requests) do
      add :name, :string
      add :company, :string
      add :email, :string
      add :phone, :string
      add :deadline, :string
      add :service, :string
      add :details, :text
      add :budget, :string
      add :answered, :boolean

      timestamps()
    end

  end
end
