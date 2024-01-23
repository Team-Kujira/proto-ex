defmodule Kujira.Scheduler.QueryParamsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Kujira.Scheduler.QueryParamsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :params, 1, type: Kujira.Scheduler.Params, deprecated: false
end

defmodule Kujira.Scheduler.QueryGetHookRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :uint64
end

defmodule Kujira.Scheduler.QueryGetHookResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :Hook, 1, type: Kujira.Scheduler.Hook, deprecated: false
end

defmodule Kujira.Scheduler.QueryAllHookRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pagination, 1, type: Cosmos.Base.Query.V1beta1.PageRequest
end

defmodule Kujira.Scheduler.QueryAllHookResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :Hook, 1, repeated: true, type: Kujira.Scheduler.Hook, deprecated: false
  field :pagination, 2, type: Cosmos.Base.Query.V1beta1.PageResponse
end

defmodule Kujira.Scheduler.Query.Service do
  @moduledoc false
  use GRPC.Service, name: "kujira.scheduler.Query", protoc_gen_elixir_version: "0.11.0"

  rpc :Params, Kujira.Scheduler.QueryParamsRequest, Kujira.Scheduler.QueryParamsResponse

  rpc :Hook, Kujira.Scheduler.QueryGetHookRequest, Kujira.Scheduler.QueryGetHookResponse

  rpc :HookAll, Kujira.Scheduler.QueryAllHookRequest, Kujira.Scheduler.QueryAllHookResponse
end

defmodule Kujira.Scheduler.Query.Stub do
  @moduledoc false
  use GRPC.Stub, service: Kujira.Scheduler.Query.Service
end