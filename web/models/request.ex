defmodule Cheval.Request do
  use Cheval.Web, :model

  schema "requests" do
    field :name, :string
    field :company, :string
    field :email, :string
    field :phone, :string
    field :deadline, :string
    field :service, :string
    field :details, :string
    field :budget, :string
    field :answered, :boolean

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :company, :email, :phone, :deadline, :service, :details, :budget])
    |> validate_required([:name, :company, :email, :phone, :deadline, :service, :details, :budget])
  end
end
