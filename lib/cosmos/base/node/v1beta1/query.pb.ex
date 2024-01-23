defmodule Cosmos.Base.Node.V1beta1.ConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Cosmos.Base.Node.V1beta1.ConfigResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :minimum_gas_price, 1, type: :string, json_name: "minimumGasPrice"
end

defmodule Cosmos.Base.Node.V1beta1.Service.Service do
  @moduledoc false
  use GRPC.Service, name: "cosmos.base.node.v1beta1.Service", protoc_gen_elixir_version: "0.11.0"

  rpc :Config, Cosmos.Base.Node.V1beta1.ConfigRequest, Cosmos.Base.Node.V1beta1.ConfigResponse
end

defmodule Cosmos.Base.Node.V1beta1.Service.Stub do
  @moduledoc false
  use GRPC.Stub, service: Cosmos.Base.Node.V1beta1.Service.Service
end