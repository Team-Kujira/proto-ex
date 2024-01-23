defmodule Kujira.Denom.MsgCreateDenom do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sender, 1, type: :string, deprecated: false
  field :nonce, 2, type: :string, deprecated: false
end

defmodule Kujira.Denom.MsgCreateDenomResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :new_token_denom, 1, type: :string, json_name: "newTokenDenom", deprecated: false
end

defmodule Kujira.Denom.MsgMint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sender, 1, type: :string, deprecated: false
  field :amount, 2, type: Cosmos.Base.V1beta1.Coin, deprecated: false
  field :recipient, 3, type: :string, deprecated: false
end

defmodule Kujira.Denom.MsgMintResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Denom.MsgBurn do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sender, 1, type: :string, deprecated: false
  field :amount, 2, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end

defmodule Kujira.Denom.MsgBurnResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Denom.MsgChangeAdmin do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sender, 1, type: :string, deprecated: false
  field :denom, 2, type: :string, deprecated: false
  field :newAdmin, 3, type: :string, deprecated: false
end

defmodule Kujira.Denom.MsgChangeAdminResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Denom.Msg.Service do
  @moduledoc false
  use GRPC.Service, name: "kujira.denom.Msg", protoc_gen_elixir_version: "0.11.0"

  rpc :CreateDenom, Kujira.Denom.MsgCreateDenom, Kujira.Denom.MsgCreateDenomResponse

  rpc :Mint, Kujira.Denom.MsgMint, Kujira.Denom.MsgMintResponse

  rpc :Burn, Kujira.Denom.MsgBurn, Kujira.Denom.MsgBurnResponse

  rpc :ChangeAdmin, Kujira.Denom.MsgChangeAdmin, Kujira.Denom.MsgChangeAdminResponse
end

defmodule Kujira.Denom.Msg.Stub do
  @moduledoc false
  use GRPC.Stub, service: Kujira.Denom.Msg.Service
end