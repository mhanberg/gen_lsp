# codegen: do not edit
defmodule GenLSP.Structures.InlayHintRegistrationOptions do
  @moduledoc """
  Inlay hint options used during static or dynamic registration.

  @since 3.17.0
  """

  import Schematic, warn: false

  use TypedStruct

  @doc """
  ## Fields

  * id: The id used to register the request. The id can be used to deregister
    the request again. See also Registration#id.
  * resolve_provider: The server provides support to resolve additional
    information for an inlay hint item.
  * document_selector: A document selector to identify the scope of the registration. If set to null
    the document selector provided on the client side will be used.
  """
  @derive Jason.Encoder
  typedstruct do
    field :id, String.t()
    field :resolve_provider, boolean()
    field :document_selector, GenLSP.TypeAlias.DocumentSelector.t() | nil, enforce: true
  end

  @doc false
  @spec schematic() :: Schematic.t()
  def schematic() do
    schema(__MODULE__, %{
      {"id", :id} => oneof([null(), str()]),
      {"resolveProvider", :resolve_provider} => oneof([null(), bool()]),
      {"documentSelector", :document_selector} =>
        oneof([GenLSP.TypeAlias.DocumentSelector.schematic(), null()])
    })
  end
end
