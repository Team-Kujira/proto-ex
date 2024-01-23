defmodule Ibc.Applications.InterchainAccounts.Genesis.V1.GenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :controller_genesis_state, 1,
    type: Ibc.Applications.InterchainAccounts.Genesis.V1.ControllerGenesisState,
    json_name: "controllerGenesisState",
    deprecated: false

  field :host_genesis_state, 2,
    type: Ibc.Applications.InterchainAccounts.Genesis.V1.HostGenesisState,
    json_name: "hostGenesisState",
    deprecated: false
end

defmodule Ibc.Applications.InterchainAccounts.Genesis.V1.ControllerGenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :active_channels, 1,
    repeated: true,
    type: Ibc.Applications.InterchainAccounts.Genesis.V1.ActiveChannel,
    json_name: "activeChannels",
    deprecated: false

  field :interchain_accounts, 2,
    repeated: true,
    type: Ibc.Applications.InterchainAccounts.Genesis.V1.RegisteredInterchainAccount,
    json_name: "interchainAccounts",
    deprecated: false

  field :ports, 3, repeated: true, type: :string

  field :params, 4,
    type: Ibc.Applications.InterchainAccounts.Controller.V1.Params,
    deprecated: false
end

defmodule Ibc.Applications.InterchainAccounts.Genesis.V1.HostGenesisState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :active_channels, 1,
    repeated: true,
    type: Ibc.Applications.InterchainAccounts.Genesis.V1.ActiveChannel,
    json_name: "activeChannels",
    deprecated: false

  field :interchain_accounts, 2,
    repeated: true,
    type: Ibc.Applications.InterchainAccounts.Genesis.V1.RegisteredInterchainAccount,
    json_name: "interchainAccounts",
    deprecated: false

  field :port, 3, type: :string
  field :params, 4, type: Ibc.Applications.InterchainAccounts.Host.V1.Params, deprecated: false
end

defmodule Ibc.Applications.InterchainAccounts.Genesis.V1.ActiveChannel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection_id, 1, type: :string, json_name: "connectionId", deprecated: false
  field :port_id, 2, type: :string, json_name: "portId", deprecated: false
  field :channel_id, 3, type: :string, json_name: "channelId", deprecated: false

  field :is_middleware_enabled, 4,
    type: :bool,
    json_name: "isMiddlewareEnabled",
    deprecated: false
end

defmodule Ibc.Applications.InterchainAccounts.Genesis.V1.RegisteredInterchainAccount do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :connection_id, 1, type: :string, json_name: "connectionId", deprecated: false
  field :port_id, 2, type: :string, json_name: "portId", deprecated: false
  field :account_address, 3, type: :string, json_name: "accountAddress", deprecated: false
end