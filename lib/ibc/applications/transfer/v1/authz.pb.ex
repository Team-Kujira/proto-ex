defmodule Ibc.Applications.Transfer.V1.Allocation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :source_port, 1, type: :string, json_name: "sourcePort", deprecated: false
  field :source_channel, 2, type: :string, json_name: "sourceChannel", deprecated: false

  field :spend_limit, 3,
    repeated: true,
    type: Cosmos.Base.V1beta1.Coin,
    json_name: "spendLimit",
    deprecated: false

  field :allow_list, 4, repeated: true, type: :string, json_name: "allowList"
end

defmodule Ibc.Applications.Transfer.V1.TransferAuthorization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allocations, 1,
    repeated: true,
    type: Ibc.Applications.Transfer.V1.Allocation,
    deprecated: false
end