defmodule Dictionary do
  @moduledoc """
  Dictionary - simulate external service serving up random words

  On startup, this little application loads a list of words from disk and keeps it in memory. 
  The API works as long as the application is running.
  """
  alias Dictionary.WordList

  defdelegate random_word(), to: WordList
end