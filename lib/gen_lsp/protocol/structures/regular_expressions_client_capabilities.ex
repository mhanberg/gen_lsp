# codegen: do not edit
defmodule GenLSP.Structures.RegularExpressionsClientCapabilities do
  @moduledoc """
  Client capabilities specific to regular expressions.

  @since 3.16.0
  """

  import Schematic, warn: false

  use TypedStruct

  @doc """
  ## Fields

  * engine: The engine's name.
  * version: The engine's version.
  """
  @derive Jason.Encoder
  typedstruct do
    field :engine, String.t(), enforce: true
    field :version, String.t()
  end

  @doc false
  @spec schematic() :: Schematic.t()
  def schematic() do
    schema(__MODULE__, %{
      {"engine", :engine} => str(),
      {"version", :version} => nullable(str())
    })
  end
end
