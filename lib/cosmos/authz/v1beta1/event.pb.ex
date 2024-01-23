defmodule Cosmos.Authz.V1beta1.EventGrant do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :msg_type_url, 2, type: :string, json_name: "msgTypeUrl"
  field :granter, 3, type: :string, deprecated: false
  field :grantee, 4, type: :string, deprecated: false
end

defmodule Cosmos.Authz.V1beta1.EventRevoke do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :msg_type_url, 2, type: :string, json_name: "msgTypeUrl"
  field :granter, 3, type: :string, deprecated: false
  field :grantee, 4, type: :string, deprecated: false
end