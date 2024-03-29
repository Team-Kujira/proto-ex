defmodule Cosmos.Autocli.V1.AppOptionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Cosmos.Autocli.V1.AppOptionsResponse.ModuleOptionsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Cosmos.Autocli.V1.ModuleOptions
end

defmodule Cosmos.Autocli.V1.AppOptionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :module_options, 1,
    repeated: true,
    type: Cosmos.Autocli.V1.AppOptionsResponse.ModuleOptionsEntry,
    json_name: "moduleOptions",
    map: true
end

defmodule Cosmos.Autocli.V1.Query.Service do
  @moduledoc false
  use GRPC.Service, name: "cosmos.autocli.v1.Query", protoc_gen_elixir_version: "0.11.0"

  rpc :AppOptions, Cosmos.Autocli.V1.AppOptionsRequest, Cosmos.Autocli.V1.AppOptionsResponse
end

defmodule Cosmos.Autocli.V1.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Cosmos.Autocli.V1.Query.Service
end