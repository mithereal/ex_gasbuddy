defmodule ExGasbuddy.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_gasbuddy,
      version: "0.1.1",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:gql, "~> 0.6.2"},
      {:jason, "~> 1.1"}
    ]
  end
end
