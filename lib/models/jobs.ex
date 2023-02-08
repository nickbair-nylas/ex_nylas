defmodule Models.Job do
  @moduledoc """
  A struct representing a job.
  """
  use TypedStruct

  typedstruct do
    @typedoc "A job"
    field :account_id,    String.t()
    field :action,        String.t()
    field :created_at,    non_neg_integer()
    field :id,            String.t()
    field :job_status_id, String.t()
    field :object,        String.t()
    field :status,        String.t()
    field :reason,        String.t()
  end

end

defmodule Models.Jobs do
  @moduledoc """
  Interface for Nylas job.
  """

  use ExNylas,
    object: "jobs",
    struct: ExNylas.Job,
    include: [:list, :first, :find]

end
