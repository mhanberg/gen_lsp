# codegen: do not edit
defmodule GenLSP.Requests.CodeActionResolve do
  @moduledoc """
  Request to resolve additional information for a given code action.The request's
  parameter is of type {@link CodeAction} the response
  is of type {@link CodeAction} or a Thenable that resolves to such.
  """

  import Schematic, warn: false

  use TypedStruct

  @derive Jason.Encoder
  typedstruct do
    field :method, String.t(), default: "codeAction/resolve"
    field :jsonrpc, String.t(), default: "2.0"
    field :id, integer(), enforce: true
    field :params, GenLSP.Structures.CodeAction.t()
  end

  @doc false
  def schematic() do
    schema(__MODULE__, %{
      method: str("codeAction/resolve"),
      jsonrpc: str("2.0"),
      id: int(),
      params: GenLSP.Structures.CodeAction.schematic()
    })
  end
end
