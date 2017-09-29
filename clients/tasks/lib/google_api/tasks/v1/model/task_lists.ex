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

defmodule GoogleApi.Tasks.V1.Model.TaskLists do
  @moduledoc """
  

  ## Attributes

  - etag (String): ETag of the resource. Defaults to: `null`.
  - items (List[TaskList]): Collection of task lists. Defaults to: `null`.
  - kind (String): Type of the resource. This is always \&quot;tasks#taskLists\&quot;. Defaults to: `null`.
  - nextPageToken (String): Token that can be used to request the next page of this result. Defaults to: `null`.
  """

  defstruct [
    :"etag",
    :"items",
    :"kind",
    :"nextPageToken"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Tasks.V1.Model.TaskLists do
  import GoogleApi.Tasks.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"items", :list, GoogleApi.Tasks.V1.Model.TaskList, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Tasks.V1.Model.TaskLists do
  def encode(value, options) do
    GoogleApi.Tasks.V1.Deserializer.serialize_non_nil(value, options)
  end
end

