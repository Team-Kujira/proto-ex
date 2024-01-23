defmodule Ibc.Applications.Transfer.V2.FungibleTokenPacketData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom, 1, type: :string
  field :amount, 2, type: :string
  field :sender, 3, type: :string
  field :receiver, 4, type: :string
  field :memo, 5, type: :string
end