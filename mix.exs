defmodule Indodax.MixProject do
  use Mix.Project

  def project do
    [
      app: :indodax,
      version: "0.1.0",
      elixir: "~> 1.7",
      description: "API wrapper for Indodax Exchange (indodax.com)",
      package: package(),
      docs: [extras: ["README.md"]],
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def package do
    [
      name: :indodax,
      files: ["lib", "mix.exs"],
      maintainers: ["VirKill"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/virkillz/indodax.git"}
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.4"},
      {:jason, "~> 1.0"},
      {:earmark, ">= 0.0.0", only: :dev},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
