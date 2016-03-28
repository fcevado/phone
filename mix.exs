defmodule Phonex.Mixfile do
  use Mix.Project

  def project do
    [app: :phone,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     source_url: "https://github.com/fcevado/phone",
     deps: deps]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "test", "README.md"],
      maintainers: ["Flávio Moreira Vieira"],
      licenses: ["Apache 2.0"],
      links: %{"Github" => "https://github.com/fcevado/phone"}
    ]
  end

  defp description do
    """
    Parser for phone numbers in international standard.
    NOT READY FOR USE.
    """
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    []
  end
end
