defmodule Ibc.Applications.InterchainAccounts.Host.V1.QueryParamsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Applications.InterchainAccounts.Host.V1.QueryParamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Ibc.Applications.InterchainAccounts.Host.V1.Params
end

defmodule Ibc.Applications.InterchainAccounts.Host.V1.Query.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ibc.applications.interchain_accounts.host.v1.Query",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Params,
      Ibc.Applications.InterchainAccounts.Host.V1.QueryParamsRequest,
      Ibc.Applications.InterchainAccounts.Host.V1.QueryParamsResponse
end

defmodule Ibc.Applications.InterchainAccounts.Host.V1.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Applications.InterchainAccounts.Host.V1.Query.Service
end