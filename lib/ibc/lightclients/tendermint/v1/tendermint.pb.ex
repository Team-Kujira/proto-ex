defmodule Ibc.Lightclients.Tendermint.V1.ClientState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :chain_id, 1, type: :string, json_name: "chainId"

  field :trust_level, 2,
    type: Ibc.Lightclients.Tendermint.V1.Fraction,
    json_name: "trustLevel",
    deprecated: false

  field :trusting_period, 3,
    type: Google.Protobuf.Duration,
    json_name: "trustingPeriod",
    deprecated: false

  field :unbonding_period, 4,
    type: Google.Protobuf.Duration,
    json_name: "unbondingPeriod",
    deprecated: false

  field :max_clock_drift, 5,
    type: Google.Protobuf.Duration,
    json_name: "maxClockDrift",
    deprecated: false

  field :frozen_height, 6,
    type: Ibc.Core.Client.V1.Height,
    json_name: "frozenHeight",
    deprecated: false

  field :latest_height, 7,
    type: Ibc.Core.Client.V1.Height,
    json_name: "latestHeight",
    deprecated: false

  field :proof_specs, 8,
    repeated: true,
    type: Cosmos.Ics23.V1.ProofSpec,
    json_name: "proofSpecs",
    deprecated: false

  field :upgrade_path, 9,
    repeated: true,
    type: :string,
    json_name: "upgradePath",
    deprecated: false

  field :allow_update_after_expiry, 10,
    type: :bool,
    json_name: "allowUpdateAfterExpiry",
    deprecated: true

  field :allow_update_after_misbehaviour, 11,
    type: :bool,
    json_name: "allowUpdateAfterMisbehaviour",
    deprecated: true
end

defmodule Ibc.Lightclients.Tendermint.V1.ConsensusState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :timestamp, 1, type: Google.Protobuf.Timestamp, deprecated: false
  field :root, 2, type: Ibc.Core.Commitment.V1.MerkleRoot, deprecated: false
  field :next_validators_hash, 3, type: :bytes, json_name: "nextValidatorsHash", deprecated: false
end

defmodule Ibc.Lightclients.Tendermint.V1.Misbehaviour do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId", deprecated: true

  field :header_1, 2,
    type: Ibc.Lightclients.Tendermint.V1.Header,
    json_name: "header1",
    deprecated: false

  field :header_2, 3,
    type: Ibc.Lightclients.Tendermint.V1.Header,
    json_name: "header2",
    deprecated: false
end

defmodule Ibc.Lightclients.Tendermint.V1.Header do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :signed_header, 1,
    type: Tendermint.Types.SignedHeader,
    json_name: "signedHeader",
    deprecated: false

  field :validator_set, 2,
    type: Tendermint.Types.ValidatorSet,
    json_name: "validatorSet",
    deprecated: false

  field :trusted_height, 3,
    type: Ibc.Core.Client.V1.Height,
    json_name: "trustedHeight",
    deprecated: false

  field :trusted_validators, 4,
    type: Tendermint.Types.ValidatorSet,
    json_name: "trustedValidators",
    deprecated: false
end

defmodule Ibc.Lightclients.Tendermint.V1.Fraction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :numerator, 1, type: :uint64
  field :denominator, 2, type: :uint64
end