defmodule Schemer.MixProject do
  use Mix.Project

  def project do
    [
      app: :schemer,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: [main_module: Schemer]
    ]
  end



  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:smart_city, "~> 3.0"},
      {:jason, "~> 1.1"}
    ]
  end
end
