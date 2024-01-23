defmodule KujiraProto.MixProject do
  use Mix.Project

  def project do
    [
      app: :kujira_proto,
      description: "Protobuf bindings and gRPC clients for the Kujira Blockchain",
      version: "0.9.3",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
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
      maintainers: ["Codehans"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/Team-Kujira/proto-ex"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:protobuf, "~> 0.10.0"},
      {:google_protos, "~> 0.1"},
      {:grpc, "~> 0.5.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
