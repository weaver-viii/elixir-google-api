# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Slides.V1.Model.TableRow do
  @moduledoc """
  Properties and contents of each row in a table.

  ## Attributes

  - rowHeight (Dimension): Height of a row. Defaults to: `null`.
  - tableCells (List[TableCell]): Properties and contents of each cell.  Cells that span multiple columns are represented only once with a column_span greater than 1. As a result, the length of this collection does not always match the number of columns of the entire table. Defaults to: `null`.
  """

  defstruct [
    :"rowHeight",
    :"tableCells"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.TableRow do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"rowHeight", :struct, GoogleApi.Slides.V1.Model.Dimension, options)
    |> deserialize(:"tableCells", :list, GoogleApi.Slides.V1.Model.TableCell, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.TableRow do
  def encode(value, options) do
    GoogleApi.Slides.V1.Deserializer.serialize_non_nil(value, options)
  end
end

