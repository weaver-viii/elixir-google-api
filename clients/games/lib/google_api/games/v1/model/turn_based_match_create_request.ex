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

defmodule GoogleApi.Games.V1.Model.TurnBasedMatchCreateRequest do
  @moduledoc """
  This is a JSON template for a turn-based match creation request.

  ## Attributes

  - autoMatchingCriteria (TurnBasedAutoMatchingCriteria): Criteria for auto-matching players into this match. Defaults to: `null`.
  - invitedPlayerIds (List[String]): The player ids to invite to the match. Defaults to: `null`.
  - kind (String): Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatchCreateRequest. Defaults to: `null`.
  - requestId (String): A randomly generated numeric ID. This number is used at the server to ensure that the request is handled correctly across retries. Defaults to: `null`.
  - variant (Integer): The variant / mode of the application to be played. This can be any integer value, or left blank. You should use a small number of variants to keep the auto-matching pool as large as possible. Defaults to: `null`.
  """

  defstruct [
    :"autoMatchingCriteria",
    :"invitedPlayerIds",
    :"kind",
    :"requestId",
    :"variant"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.TurnBasedMatchCreateRequest do
  import GoogleApi.Games.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"autoMatchingCriteria", :struct, GoogleApi.Games.V1.Model.TurnBasedAutoMatchingCriteria, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.TurnBasedMatchCreateRequest do
  def encode(value, options) do
    GoogleApi.Games.V1.Deserializer.serialize_non_nil(value, options)
  end
end

