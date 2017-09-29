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

defmodule GoogleApi.Games.V1.Model.RoomModification do
  @moduledoc """
  This is a JSON template for room modification metadata.

  ## Attributes

  - kind (String): Uniquely identifies the type of this resource. Value is always the fixed string games#roomModification. Defaults to: `null`.
  - modifiedTimestampMillis (String): The timestamp at which they modified the room, in milliseconds since the epoch in UTC. Defaults to: `null`.
  - participantId (String): The ID of the participant that modified the room. Defaults to: `null`.
  """

  defstruct [
    :"kind",
    :"modifiedTimestampMillis",
    :"participantId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.RoomModification do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.RoomModification do
  def encode(value, options) do
    GoogleApi.Games.V1.Deserializer.serialize_non_nil(value, options)
  end
end

