defmodule Ibc.Applications.InterchainAccounts.V1.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TYPE_EXECUTE_TX, 1
end

defmodule Ibc.Applications.InterchainAccounts.V1.InterchainAccountPacketData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: Ibc.Applications.InterchainAccounts.V1.Type, enum: true
  field :data, 2, type: :bytes
  field :memo, 3, type: :string
end

defmodule Ibc.Applications.InterchainAccounts.V1.CosmosTx do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Protobuf.Any
end