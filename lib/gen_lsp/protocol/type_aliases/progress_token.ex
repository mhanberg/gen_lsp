# codegen: do not edit
defmodule GenLSP.TypeAlias.ProgressToken do
  import Schematic, warn: false

  @type t :: integer() | String.t()

  @doc false
  def schematic() do
    oneof([int(), str()])
  end
end
