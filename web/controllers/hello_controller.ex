defmodule TickTock.HelloController do
  use TickTock.Web, :controller

  def index(conn, _params) do
    render conn, :index
  end

  def show(conn, %{"person" => person}) do
    render conn, :show, person: person
  end

end