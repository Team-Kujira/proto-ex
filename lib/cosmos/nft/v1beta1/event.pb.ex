defmodule Cosmos.Nft.V1beta1.EventSend do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :class_id, 1, type: :string, json_name: "classId"
  field :id, 2, type: :string
  field :sender, 3, type: :string
  field :receiver, 4, type: :string
end

defmodule Cosmos.Nft.V1beta1.EventMint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :class_id, 1, type: :string, json_name: "classId"
  field :id, 2, type: :string
  field :owner, 3, type: :string
end

defmodule Cosmos.Nft.V1beta1.EventBurn do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :class_id, 1, type: :string, json_name: "classId"
  field :id, 2, type: :string
  field :owner, 3, type: :string
end