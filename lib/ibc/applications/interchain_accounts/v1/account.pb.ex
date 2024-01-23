defmodule Ibc.Applications.InterchainAccounts.V1.InterchainAccount do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :base_account, 1,
    type: Cosmos.Auth.V1beta1.BaseAccount,
    json_name: "baseAccount",
    deprecated: false

  field :account_owner, 2, type: :string, json_name: "accountOwner", deprecated: false
end