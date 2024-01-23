defmodule Ibc.Applications.Transfer.V1.QueryDenomTraceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hash, 1, type: :string
end

defmodule Ibc.Applications.Transfer.V1.QueryDenomTraceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom_trace, 1, type: Ibc.Applications.Transfer.V1.DenomTrace, json_name: "denomTrace"
end

defmodule Ibc.Applications.Transfer.V1.QueryDenomTracesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pagination, 1, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Ibc.Applications.Transfer.V1.QueryDenomTracesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom_traces, 1,
    repeated: true,
    type: Ibc.Applications.Transfer.V1.DenomTrace,
    json_name: "denomTraces",
    deprecated: false

  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
end

defmodule Ibc.Applications.Transfer.V1.QueryParamsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Ibc.Applications.Transfer.V1.QueryParamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Ibc.Applications.Transfer.V1.Params
end

defmodule Ibc.Applications.Transfer.V1.QueryDenomHashRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :trace, 1, type: :string
end

defmodule Ibc.Applications.Transfer.V1.QueryDenomHashResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hash, 1, type: :string
end

defmodule Ibc.Applications.Transfer.V1.QueryEscrowAddressRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :port_id, 1, type: :string, json_name: "portId"
  field :channel_id, 2, type: :string, json_name: "channelId"
end

defmodule Ibc.Applications.Transfer.V1.QueryEscrowAddressResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :escrow_address, 1, type: :string, json_name: "escrowAddress"
end

defmodule Ibc.Applications.Transfer.V1.QueryTotalEscrowForDenomRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom, 1, type: :string
end

defmodule Ibc.Applications.Transfer.V1.QueryTotalEscrowForDenomResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :amount, 1, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end

defmodule Ibc.Applications.Transfer.V1.Query.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ibc.applications.transfer.v1.Query",
    protoc_gen_elixir_version: "0.11.0"

  rpc :DenomTrace,
      Ibc.Applications.Transfer.V1.QueryDenomTraceRequest,
      Ibc.Applications.Transfer.V1.QueryDenomTraceResponse

  rpc :DenomTraces,
      Ibc.Applications.Transfer.V1.QueryDenomTracesRequest,
      Ibc.Applications.Transfer.V1.QueryDenomTracesResponse

  rpc :Params,
      Ibc.Applications.Transfer.V1.QueryParamsRequest,
      Ibc.Applications.Transfer.V1.QueryParamsResponse

  rpc :DenomHash,
      Ibc.Applications.Transfer.V1.QueryDenomHashRequest,
      Ibc.Applications.Transfer.V1.QueryDenomHashResponse

  rpc :EscrowAddress,
      Ibc.Applications.Transfer.V1.QueryEscrowAddressRequest,
      Ibc.Applications.Transfer.V1.QueryEscrowAddressResponse

  rpc :TotalEscrowForDenom,
      Ibc.Applications.Transfer.V1.QueryTotalEscrowForDenomRequest,
      Ibc.Applications.Transfer.V1.QueryTotalEscrowForDenomResponse
end

defmodule Ibc.Applications.Transfer.V1.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ibc.Applications.Transfer.V1.Query.Service
end