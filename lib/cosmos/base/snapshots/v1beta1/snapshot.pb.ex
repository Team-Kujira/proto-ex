defmodule Cosmos.Base.Snapshots.V1beta1.Snapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :height, 1, type: :uint64
  field :format, 2, type: :uint32
  field :chunks, 3, type: :uint32
  field :hash, 4, type: :bytes
  field :metadata, 5, type: Cosmos.Base.Snapshots.V1beta1.Metadata, deprecated: false
end

defmodule Cosmos.Base.Snapshots.V1beta1.Metadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :chunk_hashes, 1, repeated: true, type: :bytes, json_name: "chunkHashes"
end

defmodule Cosmos.Base.Snapshots.V1beta1.SnapshotItem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :item, 0

  field :store, 1, type: Cosmos.Base.Snapshots.V1beta1.SnapshotStoreItem, oneof: 0

  field :iavl, 2,
    type: Cosmos.Base.Snapshots.V1beta1.SnapshotIAVLItem,
    oneof: 0,
    deprecated: false

  field :extension, 3, type: Cosmos.Base.Snapshots.V1beta1.SnapshotExtensionMeta, oneof: 0

  field :extension_payload, 4,
    type: Cosmos.Base.Snapshots.V1beta1.SnapshotExtensionPayload,
    json_name: "extensionPayload",
    oneof: 0

  field :kv, 5, type: Cosmos.Base.Snapshots.V1beta1.SnapshotKVItem, oneof: 0, deprecated: true
  field :schema, 6, type: Cosmos.Base.Snapshots.V1beta1.SnapshotSchema, oneof: 0, deprecated: true
end

defmodule Cosmos.Base.Snapshots.V1beta1.SnapshotStoreItem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Cosmos.Base.Snapshots.V1beta1.SnapshotIAVLItem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :bytes
  field :value, 2, type: :bytes
  field :version, 3, type: :int64
  field :height, 4, type: :int32
end

defmodule Cosmos.Base.Snapshots.V1beta1.SnapshotExtensionMeta do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :format, 2, type: :uint32
end

defmodule Cosmos.Base.Snapshots.V1beta1.SnapshotExtensionPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :payload, 1, type: :bytes
end

defmodule Cosmos.Base.Snapshots.V1beta1.SnapshotKVItem do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :bytes
  field :value, 2, type: :bytes
end

defmodule Cosmos.Base.Snapshots.V1beta1.SnapshotSchema do
  @moduledoc false
  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keys, 1, repeated: true, type: :bytes
end