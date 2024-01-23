defmodule Tendermint.Types.ConsensusParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block, 1, type: Tendermint.Types.BlockParams
  field :evidence, 2, type: Tendermint.Types.EvidenceParams
  field :validator, 3, type: Tendermint.Types.ValidatorParams
  field :version, 4, type: Tendermint.Types.VersionParams
end

defmodule Tendermint.Types.BlockParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_bytes, 1, type: :int64, json_name: "maxBytes"
  field :max_gas, 2, type: :int64, json_name: "maxGas"
end

defmodule Tendermint.Types.EvidenceParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_age_num_blocks, 1, type: :int64, json_name: "maxAgeNumBlocks"

  field :max_age_duration, 2,
    type: Google.Protobuf.Duration,
    json_name: "maxAgeDuration",
    deprecated: false

  field :max_bytes, 3, type: :int64, json_name: "maxBytes"
end

defmodule Tendermint.Types.ValidatorParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pub_key_types, 1, repeated: true, type: :string, json_name: "pubKeyTypes"
end

defmodule Tendermint.Types.VersionParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :app, 1, type: :uint64
end

defmodule Tendermint.Types.HashedParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block_max_bytes, 1, type: :int64, json_name: "blockMaxBytes"
  field :block_max_gas, 2, type: :int64, json_name: "blockMaxGas"
end