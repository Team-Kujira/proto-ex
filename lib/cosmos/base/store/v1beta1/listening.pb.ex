defmodule Cosmos.Base.Store.V1beta1.StoreKVPair do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :store_key, 1, type: :string, json_name: "storeKey"
  field :delete, 2, type: :bool
  field :key, 3, type: :bytes
  field :value, 4, type: :bytes
end

defmodule Cosmos.Base.Store.V1beta1.BlockMetadata.DeliverTx do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :request, 1, type: Tendermint.Abci.RequestDeliverTx
  field :response, 2, type: Tendermint.Abci.ResponseDeliverTx
end

defmodule Cosmos.Base.Store.V1beta1.BlockMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :request_begin_block, 1,
    type: Tendermint.Abci.RequestBeginBlock,
    json_name: "requestBeginBlock"

  field :response_begin_block, 2,
    type: Tendermint.Abci.ResponseBeginBlock,
    json_name: "responseBeginBlock"

  field :deliver_txs, 3,
    repeated: true,
    type: Cosmos.Base.Store.V1beta1.BlockMetadata.DeliverTx,
    json_name: "deliverTxs"

  field :request_end_block, 4, type: Tendermint.Abci.RequestEndBlock, json_name: "requestEndBlock"

  field :response_end_block, 5,
    type: Tendermint.Abci.ResponseEndBlock,
    json_name: "responseEndBlock"

  field :response_commit, 6, type: Tendermint.Abci.ResponseCommit, json_name: "responseCommit"
end