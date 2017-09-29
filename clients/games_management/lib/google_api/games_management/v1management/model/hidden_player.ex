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

defmodule GoogleApi.GamesManagement.V1management.Model.HiddenPlayer do
  @moduledoc """
  This is a JSON template for the HiddenPlayer resource.

  ## Attributes

  - hiddenTimeMillis (String): The time this player was hidden. Defaults to: `null`.
  - kind (String): Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#hiddenPlayer. Defaults to: `null`.
  - player (Player): The player information. Defaults to: `null`.
  """

  defstruct [
    :"hiddenTimeMillis",
    :"kind",
    :"player"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.GamesManagement.V1management.Model.HiddenPlayer do
  import GoogleApi.GamesManagement.V1management.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"player", :struct, GoogleApi.GamesManagement.V1management.Model.Player, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GamesManagement.V1management.Model.HiddenPlayer do
  def encode(value, options) do
    GoogleApi.GamesManagement.V1management.Deserializer.serialize_non_nil(value, options)
  end
end

