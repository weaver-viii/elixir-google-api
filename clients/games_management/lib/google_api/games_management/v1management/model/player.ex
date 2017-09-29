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

defmodule GoogleApi.GamesManagement.V1management.Model.Player do
  @moduledoc """
  This is a JSON template for a Player resource.

  ## Attributes

  - avatarImageUrl (String): The base URL for the image that represents the player. Defaults to: `null`.
  - bannerUrlLandscape (String): The url to the landscape mode player banner image. Defaults to: `null`.
  - bannerUrlPortrait (String): The url to the portrait mode player banner image. Defaults to: `null`.
  - displayName (String): The name to display for the player. Defaults to: `null`.
  - experienceInfo (GamesPlayerExperienceInfoResource): An object to represent Play Game experience information for the player. Defaults to: `null`.
  - kind (String): Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#player. Defaults to: `null`.
  - lastPlayedWith (GamesPlayedResource): Details about the last time this player played a multiplayer game with the currently authenticated player. Populated for PLAYED_WITH player collection members. Defaults to: `null`.
  - name (PlayerName):  Defaults to: `null`.
  - originalPlayerId (String): The player ID that was used for this player the first time they signed into the game in question. This is only populated for calls to player.get for the requesting player, only if the player ID has subsequently changed, and only to clients that support remapping player IDs. Defaults to: `null`.
  - playerId (String): The ID of the player. Defaults to: `null`.
  - profileSettings (ProfileSettings): The player&#39;s profile settings. Controls whether or not the player&#39;s profile is visible to other players. Defaults to: `null`.
  - title (String): The player&#39;s title rewarded for their game activities. Defaults to: `null`.
  """

  defstruct [
    :"avatarImageUrl",
    :"bannerUrlLandscape",
    :"bannerUrlPortrait",
    :"displayName",
    :"experienceInfo",
    :"kind",
    :"lastPlayedWith",
    :"name",
    :"originalPlayerId",
    :"playerId",
    :"profileSettings",
    :"title"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.GamesManagement.V1management.Model.Player do
  import GoogleApi.GamesManagement.V1management.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"experienceInfo", :struct, GoogleApi.GamesManagement.V1management.Model.GamesPlayerExperienceInfoResource, options)
    |> deserialize(:"lastPlayedWith", :struct, GoogleApi.GamesManagement.V1management.Model.GamesPlayedResource, options)
    |> deserialize(:"name", :struct, GoogleApi.GamesManagement.V1management.Model.PlayerName, options)
    |> deserialize(:"profileSettings", :struct, GoogleApi.GamesManagement.V1management.Model.ProfileSettings, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GamesManagement.V1management.Model.Player do
  def encode(value, options) do
    GoogleApi.GamesManagement.V1management.Deserializer.serialize_non_nil(value, options)
  end
end

