defmodule Dictionary.Mixfile do
  use Mix.Project

  def project do
    [
      app: :dictionary,
      version: "0.1.1",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Dictionary.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end
end
