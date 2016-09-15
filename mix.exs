defmodule Quickrand.Mixfile do
  use Mix.Project

  def project do
    [app: :quickrand,
     version: "1.5.3",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [
       :crypto]]
  end

  defp deps do
    []
  end

  defp description do
    "Quick Random Number Generation: " <>
    "Provides a simple interface to call efficient random number generation " <>
    "functions based on the context.  Proper random number seeding is enforced."
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"GitHub" => "https://github.com/okeuday/quickrand"}]
   end
end
