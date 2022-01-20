defmodule Phone.Mixfile do
  use Mix.Project

  @source_url "https://github.com/fcevado/phone"
  @version "0.5.5"

  def project do
    [
      app: :phone,
      version: @version,
      elixir: ">= 1.1.0",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      docs: docs()
    ] ++ coverage()
  end

  def application do
    [applications: []]
  end

  defp package do
    [
      description: """
      Phone number parser for telephone numbers in international standard or
      missing international country code.
      """,
      maintainers: ["Flávio M.V."],
      licenses: ["Apache-2.0"],
      links: %{
        "Changelog" => "https://hexdocs.pm/phone/changelog.html",
        "GitHub" => @source_url
      }
    ]
  end

  defp deps do
    [
      {:excoveralls, "0.13.4", only: :test, runtime: false},
      {:credo, "1.5.4", only: :dev, runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:benchfella, "0.3.5", only: :dev}
    ]
  end

  defp docs do
    [
      extras: ["CHANGELOG.md", "README.md"],
      main: "readme",
      formatters: ["html"],
      api_reference: false,
      skip_undefined_reference_warnings_on: ["CHANGELOG.md"]
    ]
  end

  defp coverage do
    [
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end
end
