defmodule Alliance.Alliance.DelegateAllianceEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allianceSender, 1, type: :string, deprecated: false
  field :validator, 2, type: :string, deprecated: false
  field :coin, 3, type: Cosmos.Base.V1beta1.Coin, deprecated: false
  field :newShares, 4, type: :string, deprecated: false
end

defmodule Alliance.Alliance.UndelegateAllianceEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allianceSender, 1, type: :string, deprecated: false
  field :validator, 2, type: :string, deprecated: false
  field :coin, 3, type: Cosmos.Base.V1beta1.Coin, deprecated: false
  field :completionTime, 4, type: Google.Protobuf.Timestamp, deprecated: false
end

defmodule Alliance.Alliance.RedelegateAllianceEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allianceSender, 1, type: :string, deprecated: false
  field :sourceValidator, 2, type: :string, deprecated: false
  field :destinationValidator, 3, type: :string, deprecated: false
  field :coin, 4, type: Cosmos.Base.V1beta1.Coin, deprecated: false
  field :completionTime, 5, type: Google.Protobuf.Timestamp, deprecated: false
end

defmodule Alliance.Alliance.ClaimAllianceRewardsEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allianceSender, 1, type: :string, deprecated: false
  field :validator, 2, type: :string, deprecated: false
  field :coins, 3, repeated: true, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end

defmodule Alliance.Alliance.DeductAllianceAssetsEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :coins, 1, repeated: true, type: Cosmos.Base.V1beta1.Coin, deprecated: false
end