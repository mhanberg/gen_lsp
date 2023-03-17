# codegen: do not edit
defmodule GenLSP.Structures.WorkspaceDiagnosticReportPartialResult do
  @moduledoc """
  A partial result for a workspace diagnostic report.

  @since 3.17.0
  """

  import Schematic, warn: false

  use TypedStruct

  @doc """
  ## Fields

  * items
  """
  @derive Jason.Encoder
  typedstruct do
    field :items, list(GenLSP.TypeAlias.WorkspaceDocumentDiagnosticReport.t()), enforce: true
  end

  @doc false
  def schematic() do
    schema(__MODULE__, %{
      {"items", :items} => list(GenLSP.TypeAlias.WorkspaceDocumentDiagnosticReport.schematic())
    })
  end
end
