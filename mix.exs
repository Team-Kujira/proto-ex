defmodule KujiraProto.MixProject do
  use Mix.Project

  def project do
    [
      app: :kujira_proto,
      version: "0.9.3",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:protobuf, "~> 0.10.0"},
      {:google_protos, "~> 0.1"},
      {:gun, "~> 2.0.0", override: true, hex: :grpc_gun},
      {:grpc, "~> 0.5.0"}
    ]
  end
end