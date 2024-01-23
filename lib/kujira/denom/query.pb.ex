defmodule Kujira.Denom.QueryParamsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Denom.QueryParamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Kujira.Denom.Params, deprecated: false
end

defmodule Kujira.Denom.QueryDenomAuthorityMetadataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denom, 1, type: :string, deprecated: false
end

defmodule Kujira.Denom.QueryDenomAuthorityMetadataResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :authority_metadata, 1,
    type: Kujira.Denom.DenomAuthorityMetadata,
    json_name: "authorityMetadata",
    deprecated: false
end

defmodule Kujira.Denom.QueryDenomsFromCreatorRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :creator, 1, type: :string, deprecated: false
end

defmodule Kujira.Denom.QueryDenomsFromCreatorResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :denoms, 1, repeated: true, type: :string, deprecated: false
end

defmodule Kujira.Denom.Query.Service do
  @moduledoc false
  use GRPC.Service, name: "kujira.denom.Query", protoc_gen_elixir_version: "0.11.0"

  rpc :Params, Kujira.Denom.QueryParamsRequest, Kujira.Denom.QueryParamsResponse

  rpc :DenomAuthorityMetadata,
      Kujira.Denom.QueryDenomAuthorityMetadataRequest,
      Kujira.Denom.QueryDenomAuthorityMetadataResponse

  rpc :DenomsFromCreator,
      Kujira.Denom.QueryDenomsFromCreatorRequest,
      Kujira.Denom.QueryDenomsFromCreatorResponse
end

defmodule Kujira.Denom.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Kujira.Denom.Query.Service
end