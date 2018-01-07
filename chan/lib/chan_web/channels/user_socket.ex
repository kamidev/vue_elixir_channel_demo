defmodule ChanWeb.UserSocket do
  use Phoenix.Socket

  ## Channels - this is where you route to your own channel
  channel("dictionary:*", ChanWeb.DictionaryChannel)

  ## Transports - this works in all modern browsers
  transport(:websocket, Phoenix.Transports.WebSocket)

  # See `Phoenix.Token` documentation for examples in
  # performing token verification on connect.
  def connect(_params, socket) do
    {:ok, socket}
  end

  # Return `nil` to make the socket anonymous
  def id(_socket), do: nil
end
