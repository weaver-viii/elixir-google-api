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

defmodule GoogleApi.ServiceManagement.V1.Model.MediaUpload do
  @moduledoc """
  Defines the Media configuration for a service in case of an upload. Use this only for Scotty Requests. Do not use this for media support using Bytestream, add instead [][google.bytestream.RestByteStream] as an API to your configuration for Bytestream methods.

  ## Attributes

  - completeNotification (Boolean): A boolean that determines whether a notification for the completion of an upload should be sent to the backend. These notifications will not be seen by the client and will not consume quota. Defaults to: `null`.
  - dropzone (String): Name of the Scotty dropzone to use for the current API. Defaults to: `null`.
  - enabled (Boolean): Whether upload is enabled. Defaults to: `null`.
  - maxSize (String): Optional maximum acceptable size for an upload. The size is specified in bytes. Defaults to: `null`.
  - mimeTypes (List[String]): An array of mimetype patterns. Esf will only accept uploads that match one of the given patterns. Defaults to: `null`.
  - progressNotification (Boolean): Whether to receive a notification for progress changes of media upload. Defaults to: `null`.
  - startNotification (Boolean): Whether to receive a notification on the start of media upload. Defaults to: `null`.
  - uploadService (String): DO NOT USE FIELDS BELOW THIS LINE UNTIL THIS WARNING IS REMOVED.  Specify name of the upload service if one is used for upload. Defaults to: `null`.
  """

  defstruct [
    :"completeNotification",
    :"dropzone",
    :"enabled",
    :"maxSize",
    :"mimeTypes",
    :"progressNotification",
    :"startNotification",
    :"uploadService"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.MediaUpload do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.MediaUpload do
  def encode(value, options) do
    GoogleApi.ServiceManagement.V1.Deserializer.serialize_non_nil(value, options)
  end
end

