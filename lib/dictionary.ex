defmodule Dictionary do
  alias Dictionary.Runtime.Server
  @opaque t :: Server.t

  @spec start_link :: {:error, t} | {:ok, t}
  defdelegate start_link, to: Server

  @spec random_word(t) :: String.t
  defdelegate random_word(pid), to: Server
end
