defmodule Tendermint.Abci.CheckTxType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :NEW, 0
  field :RECHECK, 1
end

defmodule Tendermint.Abci.MisbehaviorType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :DUPLICATE_VOTE, 1
  field :LIGHT_CLIENT_ATTACK, 2
end

defmodule Tendermint.Abci.ResponseOfferSnapshot.Result do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :ACCEPT, 1
  field :ABORT, 2
  field :REJECT, 3
  field :REJECT_FORMAT, 4
  field :REJECT_SENDER, 5
end

defmodule Tendermint.Abci.ResponseApplySnapshotChunk.Result do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :ACCEPT, 1
  field :ABORT, 2
  field :RETRY, 3
  field :RETRY_SNAPSHOT, 4
  field :REJECT_SNAPSHOT, 5
end

defmodule Tendermint.Abci.ResponseProcessProposal.ProposalStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :ACCEPT, 1
  field :REJECT, 2
end

defmodule Tendermint.Abci.Request do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :echo, 1, type: Tendermint.Abci.RequestEcho, oneof: 0
  field :flush, 2, type: Tendermint.Abci.RequestFlush, oneof: 0
  field :info, 3, type: Tendermint.Abci.RequestInfo, oneof: 0
  field :init_chain, 5, type: Tendermint.Abci.RequestInitChain, json_name: "initChain", oneof: 0
  field :query, 6, type: Tendermint.Abci.RequestQuery, oneof: 0

  field :begin_block, 7,
    type: Tendermint.Abci.RequestBeginBlock,
    json_name: "beginBlock",
    oneof: 0

  field :check_tx, 8, type: Tendermint.Abci.RequestCheckTx, json_name: "checkTx", oneof: 0
  field :deliver_tx, 9, type: Tendermint.Abci.RequestDeliverTx, json_name: "deliverTx", oneof: 0
  field :end_block, 10, type: Tendermint.Abci.RequestEndBlock, json_name: "endBlock", oneof: 0
  field :commit, 11, type: Tendermint.Abci.RequestCommit, oneof: 0

  field :list_snapshots, 12,
    type: Tendermint.Abci.RequestListSnapshots,
    json_name: "listSnapshots",
    oneof: 0

  field :offer_snapshot, 13,
    type: Tendermint.Abci.RequestOfferSnapshot,
    json_name: "offerSnapshot",
    oneof: 0

  field :load_snapshot_chunk, 14,
    type: Tendermint.Abci.RequestLoadSnapshotChunk,
    json_name: "loadSnapshotChunk",
    oneof: 0

  field :apply_snapshot_chunk, 15,
    type: Tendermint.Abci.RequestApplySnapshotChunk,
    json_name: "applySnapshotChunk",
    oneof: 0

  field :prepare_proposal, 16,
    type: Tendermint.Abci.RequestPrepareProposal,
    json_name: "prepareProposal",
    oneof: 0

  field :process_proposal, 17,
    type: Tendermint.Abci.RequestProcessProposal,
    json_name: "processProposal",
    oneof: 0
end

defmodule Tendermint.Abci.RequestEcho do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: :string
end

defmodule Tendermint.Abci.RequestFlush do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Tendermint.Abci.RequestInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string
  field :block_version, 2, type: :uint64, json_name: "blockVersion"
  field :p2p_version, 3, type: :uint64, json_name: "p2pVersion"
  field :abci_version, 4, type: :string, json_name: "abciVersion"
end

defmodule Tendermint.Abci.RequestInitChain do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :time, 1, type: Google.Protobuf.Timestamp, deprecated: false
  field :chain_id, 2, type: :string, json_name: "chainId"
  field :consensus_params, 3, type: Tendermint.Types.ConsensusParams, json_name: "consensusParams"
  field :validators, 4, repeated: true, type: Tendermint.Abci.ValidatorUpdate, deprecated: false
  field :app_state_bytes, 5, type: :bytes, json_name: "appStateBytes"
  field :initial_height, 6, type: :int64, json_name: "initialHeight"
end

defmodule Tendermint.Abci.RequestQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: :bytes
  field :path, 2, type: :string
  field :height, 3, type: :int64
  field :prove, 4, type: :bool
end

defmodule Tendermint.Abci.RequestBeginBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hash, 1, type: :bytes
  field :header, 2, type: Tendermint.Types.Header, deprecated: false

  field :last_commit_info, 3,
    type: Tendermint.Abci.CommitInfo,
    json_name: "lastCommitInfo",
    deprecated: false

  field :byzantine_validators, 4,
    repeated: true,
    type: Tendermint.Abci.Misbehavior,
    json_name: "byzantineValidators",
    deprecated: false
end

defmodule Tendermint.Abci.RequestCheckTx do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tx, 1, type: :bytes
  field :type, 2, type: Tendermint.Abci.CheckTxType, enum: true
end

defmodule Tendermint.Abci.RequestDeliverTx do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tx, 1, type: :bytes
end

defmodule Tendermint.Abci.RequestEndBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :height, 1, type: :int64
end

defmodule Tendermint.Abci.RequestCommit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Tendermint.Abci.RequestListSnapshots do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Tendermint.Abci.RequestOfferSnapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :snapshot, 1, type: Tendermint.Abci.Snapshot
  field :app_hash, 2, type: :bytes, json_name: "appHash"
end

defmodule Tendermint.Abci.RequestLoadSnapshotChunk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :height, 1, type: :uint64
  field :format, 2, type: :uint32
  field :chunk, 3, type: :uint32
end

defmodule Tendermint.Abci.RequestApplySnapshotChunk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index, 1, type: :uint32
  field :chunk, 2, type: :bytes
  field :sender, 3, type: :string
end

defmodule Tendermint.Abci.RequestPrepareProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_tx_bytes, 1, type: :int64, json_name: "maxTxBytes"
  field :txs, 2, repeated: true, type: :bytes

  field :local_last_commit, 3,
    type: Tendermint.Abci.ExtendedCommitInfo,
    json_name: "localLastCommit",
    deprecated: false

  field :misbehavior, 4, repeated: true, type: Tendermint.Abci.Misbehavior, deprecated: false
  field :height, 5, type: :int64
  field :time, 6, type: Google.Protobuf.Timestamp, deprecated: false
  field :next_validators_hash, 7, type: :bytes, json_name: "nextValidatorsHash"
  field :proposer_address, 8, type: :bytes, json_name: "proposerAddress"
end

defmodule Tendermint.Abci.RequestProcessProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :txs, 1, repeated: true, type: :bytes

  field :proposed_last_commit, 2,
    type: Tendermint.Abci.CommitInfo,
    json_name: "proposedLastCommit",
    deprecated: false

  field :misbehavior, 3, repeated: true, type: Tendermint.Abci.Misbehavior, deprecated: false
  field :hash, 4, type: :bytes
  field :height, 5, type: :int64
  field :time, 6, type: Google.Protobuf.Timestamp, deprecated: false
  field :next_validators_hash, 7, type: :bytes, json_name: "nextValidatorsHash"
  field :proposer_address, 8, type: :bytes, json_name: "proposerAddress"
end

defmodule Tendermint.Abci.Response do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :exception, 1, type: Tendermint.Abci.ResponseException, oneof: 0
  field :echo, 2, type: Tendermint.Abci.ResponseEcho, oneof: 0
  field :flush, 3, type: Tendermint.Abci.ResponseFlush, oneof: 0
  field :info, 4, type: Tendermint.Abci.ResponseInfo, oneof: 0
  field :init_chain, 6, type: Tendermint.Abci.ResponseInitChain, json_name: "initChain", oneof: 0
  field :query, 7, type: Tendermint.Abci.ResponseQuery, oneof: 0

  field :begin_block, 8,
    type: Tendermint.Abci.ResponseBeginBlock,
    json_name: "beginBlock",
    oneof: 0

  field :check_tx, 9, type: Tendermint.Abci.ResponseCheckTx, json_name: "checkTx", oneof: 0
  field :deliver_tx, 10, type: Tendermint.Abci.ResponseDeliverTx, json_name: "deliverTx", oneof: 0
  field :end_block, 11, type: Tendermint.Abci.ResponseEndBlock, json_name: "endBlock", oneof: 0
  field :commit, 12, type: Tendermint.Abci.ResponseCommit, oneof: 0

  field :list_snapshots, 13,
    type: Tendermint.Abci.ResponseListSnapshots,
    json_name: "listSnapshots",
    oneof: 0

  field :offer_snapshot, 14,
    type: Tendermint.Abci.ResponseOfferSnapshot,
    json_name: "offerSnapshot",
    oneof: 0

  field :load_snapshot_chunk, 15,
    type: Tendermint.Abci.ResponseLoadSnapshotChunk,
    json_name: "loadSnapshotChunk",
    oneof: 0

  field :apply_snapshot_chunk, 16,
    type: Tendermint.Abci.ResponseApplySnapshotChunk,
    json_name: "applySnapshotChunk",
    oneof: 0

  field :prepare_proposal, 17,
    type: Tendermint.Abci.ResponsePrepareProposal,
    json_name: "prepareProposal",
    oneof: 0

  field :process_proposal, 18,
    type: Tendermint.Abci.ResponseProcessProposal,
    json_name: "processProposal",
    oneof: 0
end

defmodule Tendermint.Abci.ResponseException do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :error, 1, type: :string
end

defmodule Tendermint.Abci.ResponseEcho do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: :string
end

defmodule Tendermint.Abci.ResponseFlush do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Tendermint.Abci.ResponseInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: :string
  field :version, 2, type: :string
  field :app_version, 3, type: :uint64, json_name: "appVersion"
  field :last_block_height, 4, type: :int64, json_name: "lastBlockHeight"
  field :last_block_app_hash, 5, type: :bytes, json_name: "lastBlockAppHash"
end

defmodule Tendermint.Abci.ResponseInitChain do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :consensus_params, 1, type: Tendermint.Types.ConsensusParams, json_name: "consensusParams"
  field :validators, 2, repeated: true, type: Tendermint.Abci.ValidatorUpdate, deprecated: false
  field :app_hash, 3, type: :bytes, json_name: "appHash"
end

defmodule Tendermint.Abci.ResponseQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 1, type: :uint32
  field :log, 3, type: :string
  field :info, 4, type: :string
  field :index, 5, type: :int64
  field :key, 6, type: :bytes
  field :value, 7, type: :bytes
  field :proof_ops, 8, type: Tendermint.Crypto.ProofOps, json_name: "proofOps"
  field :height, 9, type: :int64
  field :codespace, 10, type: :string
end

defmodule Tendermint.Abci.ResponseBeginBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :events, 1, repeated: true, type: Tendermint.Abci.Event, deprecated: false
end

defmodule Tendermint.Abci.ResponseCheckTx do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 1, type: :uint32
  field :data, 2, type: :bytes
  field :log, 3, type: :string
  field :info, 4, type: :string
  field :gas_wanted, 5, type: :int64
  field :gas_used, 6, type: :int64
  field :events, 7, repeated: true, type: Tendermint.Abci.Event, deprecated: false
  field :codespace, 8, type: :string
  field :sender, 9, type: :string
  field :priority, 10, type: :int64
  field :mempool_error, 11, type: :string, json_name: "mempoolError"
end

defmodule Tendermint.Abci.ResponseDeliverTx do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 1, type: :uint32
  field :data, 2, type: :bytes
  field :log, 3, type: :string
  field :info, 4, type: :string
  field :gas_wanted, 5, type: :int64
  field :gas_used, 6, type: :int64
  field :events, 7, repeated: true, type: Tendermint.Abci.Event, deprecated: false
  field :codespace, 8, type: :string
end

defmodule Tendermint.Abci.ResponseEndBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_updates, 1,
    repeated: true,
    type: Tendermint.Abci.ValidatorUpdate,
    json_name: "validatorUpdates",
    deprecated: false

  field :consensus_param_updates, 2,
    type: Tendermint.Types.ConsensusParams,
    json_name: "consensusParamUpdates"

  field :events, 3, repeated: true, type: Tendermint.Abci.Event, deprecated: false
end

defmodule Tendermint.Abci.ResponseCommit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 2, type: :bytes
  field :retain_height, 3, type: :int64, json_name: "retainHeight"
end

defmodule Tendermint.Abci.ResponseListSnapshots do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :snapshots, 1, repeated: true, type: Tendermint.Abci.Snapshot
end

defmodule Tendermint.Abci.ResponseOfferSnapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1, type: Tendermint.Abci.ResponseOfferSnapshot.Result, enum: true
end

defmodule Tendermint.Abci.ResponseLoadSnapshotChunk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :chunk, 1, type: :bytes
end

defmodule Tendermint.Abci.ResponseApplySnapshotChunk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1, type: Tendermint.Abci.ResponseApplySnapshotChunk.Result, enum: true
  field :refetch_chunks, 2, repeated: true, type: :uint32, json_name: "refetchChunks"
  field :reject_senders, 3, repeated: true, type: :string, json_name: "rejectSenders"
end

defmodule Tendermint.Abci.ResponsePrepareProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :txs, 1, repeated: true, type: :bytes
end

defmodule Tendermint.Abci.ResponseProcessProposal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :status, 1, type: Tendermint.Abci.ResponseProcessProposal.ProposalStatus, enum: true
end

defmodule Tendermint.Abci.CommitInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :round, 1, type: :int32
  field :votes, 2, repeated: true, type: Tendermint.Abci.VoteInfo, deprecated: false
end

defmodule Tendermint.Abci.ExtendedCommitInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :round, 1, type: :int32
  field :votes, 2, repeated: true, type: Tendermint.Abci.ExtendedVoteInfo, deprecated: false
end

defmodule Tendermint.Abci.Event do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: :string
  field :attributes, 2, repeated: true, type: Tendermint.Abci.EventAttribute, deprecated: false
end

defmodule Tendermint.Abci.EventAttribute do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
  field :index, 3, type: :bool
end

defmodule Tendermint.Abci.TxResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :height, 1, type: :int64
  field :index, 2, type: :uint32
  field :tx, 3, type: :bytes
  field :result, 4, type: Tendermint.Abci.ResponseDeliverTx, deprecated: false
end

defmodule Tendermint.Abci.Validator do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :address, 1, type: :bytes
  field :power, 3, type: :int64
end

defmodule Tendermint.Abci.ValidatorUpdate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pub_key, 1, type: Tendermint.Crypto.PublicKey, json_name: "pubKey", deprecated: false
  field :power, 2, type: :int64
end

defmodule Tendermint.Abci.VoteInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator, 1, type: Tendermint.Abci.Validator, deprecated: false
  field :signed_last_block, 2, type: :bool, json_name: "signedLastBlock"
end

defmodule Tendermint.Abci.ExtendedVoteInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator, 1, type: Tendermint.Abci.Validator, deprecated: false
  field :signed_last_block, 2, type: :bool, json_name: "signedLastBlock"
  field :vote_extension, 3, type: :bytes, json_name: "voteExtension"
end

defmodule Tendermint.Abci.Misbehavior do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: Tendermint.Abci.MisbehaviorType, enum: true
  field :validator, 2, type: Tendermint.Abci.Validator, deprecated: false
  field :height, 3, type: :int64
  field :time, 4, type: Google.Protobuf.Timestamp, deprecated: false
  field :total_voting_power, 5, type: :int64, json_name: "totalVotingPower"
end

defmodule Tendermint.Abci.Snapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :height, 1, type: :uint64
  field :format, 2, type: :uint32
  field :chunks, 3, type: :uint32
  field :hash, 4, type: :bytes
  field :metadata, 5, type: :bytes
end

defmodule Tendermint.Abci.ABCIApplication.Service do
  @moduledoc false
  use GRPC.Service, name: "tendermint.abci.ABCIApplication", protoc_gen_elixir_version: "0.11.0"

  rpc :Echo, Tendermint.Abci.RequestEcho, Tendermint.Abci.ResponseEcho

  rpc :Flush, Tendermint.Abci.RequestFlush, Tendermint.Abci.ResponseFlush

  rpc :Info, Tendermint.Abci.RequestInfo, Tendermint.Abci.ResponseInfo

  rpc :DeliverTx, Tendermint.Abci.RequestDeliverTx, Tendermint.Abci.ResponseDeliverTx

  rpc :CheckTx, Tendermint.Abci.RequestCheckTx, Tendermint.Abci.ResponseCheckTx

  rpc :Query, Tendermint.Abci.RequestQuery, Tendermint.Abci.ResponseQuery

  rpc :Commit, Tendermint.Abci.RequestCommit, Tendermint.Abci.ResponseCommit

  rpc :InitChain, Tendermint.Abci.RequestInitChain, Tendermint.Abci.ResponseInitChain

  rpc :BeginBlock, Tendermint.Abci.RequestBeginBlock, Tendermint.Abci.ResponseBeginBlock

  rpc :EndBlock, Tendermint.Abci.RequestEndBlock, Tendermint.Abci.ResponseEndBlock

  rpc :ListSnapshots, Tendermint.Abci.RequestListSnapshots, Tendermint.Abci.ResponseListSnapshots

  rpc :OfferSnapshot, Tendermint.Abci.RequestOfferSnapshot, Tendermint.Abci.ResponseOfferSnapshot

  rpc :LoadSnapshotChunk,
      Tendermint.Abci.RequestLoadSnapshotChunk,
      Tendermint.Abci.ResponseLoadSnapshotChunk

  rpc :ApplySnapshotChunk,
      Tendermint.Abci.RequestApplySnapshotChunk,
      Tendermint.Abci.ResponseApplySnapshotChunk

  rpc :PrepareProposal,
      Tendermint.Abci.RequestPrepareProposal,
      Tendermint.Abci.ResponsePrepareProposal

  rpc :ProcessProposal,
      Tendermint.Abci.RequestProcessProposal,
      Tendermint.Abci.ResponseProcessProposal
end

defmodule Tendermint.Abci.ABCIApplication.Stub do
  @moduledoc false
  use GRPC.Stub, service: Tendermint.Abci.ABCIApplication.Service
end