defmodule RenovateTestPackage.MixProject do
  use Mix.Project

  @version "0.2.0"

  def project do
    [
      app: :renovate_test_package,
      version: @version,
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      description: description(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end


  defp package do
    [
      maintainers: ["Bryan Naegele"],
      licenses: ["MIT"],
      links: %{}
    ]
  end

  defp docs do
    [
      main: "RenovateTestPackage",
      source_ref: "v#{@version}",
      extras: [
        "README.md"
      ]
    ]
  end

  defp description do
    """
    Test package for renovate bot hex support.
    """
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.34.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
