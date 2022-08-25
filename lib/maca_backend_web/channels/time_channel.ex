defmodule MacaBackendWeb.TimeChannel do
  use MacaBackendWeb, :channel
  require Logger

  @impl true
  def join("time", payload, socket) do
    if authorized?(payload) do
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  @impl true
  def handle_in("read_server_time", _payload, socket) do
    Logger.info("hello")
    response = %{"server_time" => "23"}
    {:reply, {:ok, response}, socket}
  end

  # Add authorization logic here as required.
  defp authorized?(_payload) do
    true
  end
end
