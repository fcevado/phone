defmodule Phone.Mixfile do
  use Mix.Project

  def project do
    [
      app: :phone,
      version: "0.5.1",
      elixir: ">= 1.1.0",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      source_url: "https://github.com/fcevado/phone",
      deps: deps()
    ] ++ coverage()
  end

  defp package do
    [
      files: files(),
      maintainers: ["Flávio M.V."],
      licenses: ["Apache 2.0"],
      links: links()
    ]
  end

  defp description do
    """
    Get useful info from telephone numbers.
    """
  end

  def application do
    [applications: []]
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

  defp files do
    [
      "mix.exs",
      "lib"
    ]
  end

  defp links do
    %{
      "Github" => "https://github.com/fcevado/phone"
    }
  end

  defp deps do
    [
      {:excoveralls, "0.12.3", only: :test},
      {:credo, "1.4.0", only: :dev},
      {:earmark, "1.4.3", only: :dev},
      {:ex_doc, "0.21.3", only: :dev},
      {:benchfella, "0.3.5", only: :dev},
      {:inch_ex, "2.0.0", only: :docs}
    ]
  end
end
