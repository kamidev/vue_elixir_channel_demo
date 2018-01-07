defmodule ChanWeb.DictionaryChannel do
  use Phoenix.Channel

  require Logger

  def join("dictionary:content", _, socket) do
    socket =
      socket
      |> assign(:content, %{random_server_word: Dictionary.random_word()})

    {:ok, socket}
  end

  def handle_in("new_word", _, socket) do
    word = Dictionary.random_word()
    push(socket, "content", %{state: "connnected", random_server_word: word})
    {:noreply, socket}
  end
end