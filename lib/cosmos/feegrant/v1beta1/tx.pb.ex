defmodule Cosmos.Feegrant.V1beta1.MsgGrantAllowance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :granter, 1, type: :string, deprecated: false
  field :grantee, 2, type: :string, deprecated: false
  field :allowance, 3, type: Google.Protobuf.Any, deprecated: false
end

defmodule Cosmos.Feegrant.V1beta1.MsgGrantAllowanceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Cosmos.Feegrant.V1beta1.MsgRevokeAllowance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :granter, 1, type: :string, deprecated: false
  field :grantee, 2, type: :string, deprecated: false
end

defmodule Cosmos.Feegrant.V1beta1.MsgRevokeAllowanceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Cosmos.Feegrant.V1beta1.Msg.Service do
  @moduledoc false
  use GRPC.Service, name: "cosmos.feegrant.v1beta1.Msg", protoc_gen_elixir_version: "0.11.0"

  rpc :GrantAllowance,
      Cosmos.Feegrant.V1beta1.MsgGrantAllowance,
      Cosmos.Feegrant.V1beta1.MsgGrantAllowanceResponse

  rpc :RevokeAllowance,
      Cosmos.Feegrant.V1beta1.MsgRevokeAllowance,
      Cosmos.Feegrant.V1beta1.MsgRevokeAllowanceResponse
end

defmodule Cosmos.Feegrant.V1beta1.Msg.Stub do
  @moduledoc false
  use GRPC.Stub, service: Cosmos.Feegrant.V1beta1.Msg.Service
end