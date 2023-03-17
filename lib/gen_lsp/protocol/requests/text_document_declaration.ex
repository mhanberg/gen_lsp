# codegen: do not edit
defmodule GenLSP.Requests.TextDocumentDeclaration do
  @moduledoc """
  A request to resolve the type definition locations of a symbol at a given text
  document position. The request's parameter is of type [TextDocumentPositionParams]
  (#TextDocumentPositionParams) the response is of type {@link Declaration}
  or a typed array of {@link DeclarationLink} or a Thenable that resolves
  to such.
  """

  import Schematic, warn: false

  use TypedStruct

  @derive Jason.Encoder
  typedstruct do
    field :method, String.t(), default: "textDocument/declaration"
    field :jsonrpc, String.t(), default: "2.0"
    field :id, integer(), enforce: true
    field :params, GenLSP.Structures.DeclarationParams.t()
  end

  @doc false
  def schematic() do
    schema(__MODULE__, %{
      method: str("textDocument/declaration"),
      jsonrpc: str("2.0"),
      id: int(),
      params: GenLSP.Structures.DeclarationParams.schematic()
    })
  end
end
