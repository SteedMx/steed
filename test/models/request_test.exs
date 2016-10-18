defmodule Cheval.RequestTest do
  use Cheval.ModelCase

  alias Cheval.Request

  @valid_attrs %{budget: "some content", company: "some content", deadline: "some content", details: "some content", email: "some content", name: "some content", phone: "some content", service: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Request.changeset(%Request{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Request.changeset(%Request{}, @invalid_attrs)
    refute changeset.valid?
  end
end
