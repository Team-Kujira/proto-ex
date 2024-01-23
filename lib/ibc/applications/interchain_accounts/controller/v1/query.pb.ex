defmodule Ibc.Applications.InterchainAccounts.Controller.V1.QueryInterchainAccountRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :owner, 1, type: :string
  field :connection_id, 2, type: :string, json_name: "connectionId", deprecated: false
end

defmodule Ibc.Applications.InterchainAccounts.Controller.V1.QueryInterchainAccountResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :address, 1, type: :string
end

defmodule Ibc.Applications.InterchainAccounts.Controller.V1.QueryParamsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Applications.InterchainAccounts.Controller.V1.QueryParamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Ibc.Applications.InterchainAccounts.Controller.V1.Params
end

defmodule Ibc.Applications.InterchainAccounts.Controller.V1.Query.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ibc.applications.interchain_accounts.controller.v1.Query",
    protoc_gen_elixir_version: "0.11.0"

  rpc :InterchainAccount,
      Ibc.Applications.InterchainAccounts.Controller.V1.QueryInterchainAccountRequest,
      Ibc.Applications.InterchainAccounts.Controller.V1.QueryInterchainAccountResponse

  rpc :Params,
      Ibc.Applications.InterchainAccounts.Controller.V1.QueryParamsRequest,
      Ibc.Applications.InterchainAccounts.Controller.V1.QueryParamsResponse
end

defmodule Ibc.Applications.InterchainAccounts.Controller.V1.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Applications.InterchainAccounts.Controller.V1.Query.Service
end