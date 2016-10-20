defmodule Cheval.Request do
  use Cheval.Web, :model
  alias Cheval.Request

  schema "requests" do
    field :name, :string
    field :company, :string
    field :email, :string
    field :phone, :string
    field :deadline, :string
    field :service, :string
    field :details, :string
    field :budget, :string
    field :answered, :boolean, default: false

    timestamps()
  end

  def changeset, do: changeset(%Request{})
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :email, :phone, :deadline, :service, :details, :budget])
    |> validate_required([:name, :email, :phone, :deadline, :service, :details, :budget])
  end
end
