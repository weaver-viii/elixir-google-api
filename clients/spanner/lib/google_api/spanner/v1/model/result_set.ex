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

defmodule GoogleApi.Spanner.V1.Model.ResultSet do
  @moduledoc """
  Results from Read or ExecuteSql.

  ## Attributes

  - metadata (ResultSetMetadata): Metadata about the result set, such as row type information. Defaults to: `null`.
  - rows (List[List[ErrorUnknown]]): Each element in &#x60;rows&#x60; is a row whose format is defined by metadata.row_type. The ith element in each row matches the ith field in metadata.row_type. Elements are encoded based on type as described here. Defaults to: `null`.
  - stats (ResultSetStats): Query plan and execution statistics for the query that produced this result set. These can be requested by setting ExecuteSqlRequest.query_mode. Defaults to: `null`.
  """

  defstruct [
    :"metadata",
    :"rows",
    :"stats"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ResultSet do
  import GoogleApi.Spanner.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"metadata", :struct, GoogleApi.Spanner.V1.Model.ResultSetMetadata, options)
    |> deserialize(:"stats", :struct, GoogleApi.Spanner.V1.Model.ResultSetStats, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ResultSet do
  def encode(value, options) do
    GoogleApi.Spanner.V1.Deserializer.serialize_non_nil(value, options)
  end
end

