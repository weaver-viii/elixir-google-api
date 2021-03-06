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

defmodule GoogleApi.YouTube.V3.Model.VideoStatus do
  @moduledoc """
  Basic details about a video category, such as its localized title.

  ## Attributes

  - embeddable (boolean()): This value indicates if the video can be embedded on another website. Defaults to: `null`.
  - failureReason (String.t): This value explains why a video failed to upload. This property is only present if the uploadStatus property indicates that the upload failed. Defaults to: `null`.
    - Enum - one of [codec, conversion, emptyFile, invalidFile, tooSmall, uploadAborted]
  - license (String.t): The video&#39;s license. Defaults to: `null`.
    - Enum - one of [creativeCommon, youtube]
  - privacyStatus (String.t): The video&#39;s privacy status. Defaults to: `null`.
    - Enum - one of [private, public, unlisted]
  - publicStatsViewable (boolean()): This value indicates if the extended video statistics on the watch page can be viewed by everyone. Note that the view count, likes, etc will still be visible if this is disabled. Defaults to: `null`.
  - publishAt (DateTime.t): The date and time when the video is scheduled to publish. It can be set only if the privacy status of the video is private. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. Defaults to: `null`.
  - rejectionReason (String.t): This value explains why YouTube rejected an uploaded video. This property is only present if the uploadStatus property indicates that the upload was rejected. Defaults to: `null`.
    - Enum - one of [claim, copyright, duplicate, inappropriate, legal, length, termsOfUse, trademark, uploaderAccountClosed, uploaderAccountSuspended]
  - uploadStatus (String.t): The status of the uploaded video. Defaults to: `null`.
    - Enum - one of [deleted, failed, processed, rejected, uploaded]
  """

  defstruct [
    :embeddable,
    :failureReason,
    :license,
    :privacyStatus,
    :publicStatsViewable,
    :publishAt,
    :rejectionReason,
    :uploadStatus
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoStatus do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoStatus do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end
