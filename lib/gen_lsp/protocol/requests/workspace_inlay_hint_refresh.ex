# codegen: do not edit
defmodule GenLSP.Requests.WorkspaceInlayHintRefresh do
  @moduledoc """
  @since 3.17.0

  Message Direction: serverToClient
  """

  import Schematic, warn: false

  use TypedStruct

  @derive Jason.Encoder
  typedstruct do
    field :method, String.t(), default: "workspace/inlayHint/refresh"
    field :jsonrpc, String.t(), default: "2.0"
    field :id, integer(), enforce: true
  end

  @type result :: nil

  @doc false
  @spec schematic() :: Schematic.t()
  def schematic() do
    schema(__MODULE__, %{
      method: "workspace/inlayHint/refresh",
      jsonrpc: "2.0",
      id: int()
    })
  end

  @doc false
  @spec result() :: Schematic.t()
  def result() do
    oneof([
      nil,
      GenLSP.ErrorResponse.schematic()
    ])
  end
end
