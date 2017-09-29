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

defmodule GoogleApi.StorageTransfer.V1.Model.TransferCounters do
  @moduledoc """
  A collection of counters that report the progress of a transfer operation.

  ## Attributes

  - bytesCopiedToSink (String): Bytes that are copied to the data sink. Defaults to: `null`.
  - bytesDeletedFromSink (String): Bytes that are deleted from the data sink. Defaults to: `null`.
  - bytesDeletedFromSource (String): Bytes that are deleted from the data source. Defaults to: `null`.
  - bytesFailedToDeleteFromSink (String): Bytes that failed to be deleted from the data sink. Defaults to: `null`.
  - bytesFoundFromSource (String): Bytes found in the data source that are scheduled to be transferred, which will be copied, excluded based on conditions, or skipped due to failures. Defaults to: `null`.
  - bytesFoundOnlyFromSink (String): Bytes found only in the data sink that are scheduled to be deleted. Defaults to: `null`.
  - bytesFromSourceFailed (String): Bytes in the data source that failed during the transfer. Defaults to: `null`.
  - bytesFromSourceSkippedBySync (String): Bytes in the data source that are not transferred because they already exist in the data sink. Defaults to: `null`.
  - objectsCopiedToSink (String): Objects that are copied to the data sink. Defaults to: `null`.
  - objectsDeletedFromSink (String): Objects that are deleted from the data sink. Defaults to: `null`.
  - objectsDeletedFromSource (String): Objects that are deleted from the data source. Defaults to: `null`.
  - objectsFailedToDeleteFromSink (String): Objects that failed to be deleted from the data sink. Defaults to: `null`.
  - objectsFoundFromSource (String): Objects found in the data source that are scheduled to be transferred, which will be copied, excluded based on conditions, or skipped due to failures. Defaults to: `null`.
  - objectsFoundOnlyFromSink (String): Objects found only in the data sink that are scheduled to be deleted. Defaults to: `null`.
  - objectsFromSourceFailed (String): Objects in the data source that failed during the transfer. Defaults to: `null`.
  - objectsFromSourceSkippedBySync (String): Objects in the data source that are not transferred because they already exist in the data sink. Defaults to: `null`.
  """

  defstruct [
    :"bytesCopiedToSink",
    :"bytesDeletedFromSink",
    :"bytesDeletedFromSource",
    :"bytesFailedToDeleteFromSink",
    :"bytesFoundFromSource",
    :"bytesFoundOnlyFromSink",
    :"bytesFromSourceFailed",
    :"bytesFromSourceSkippedBySync",
    :"objectsCopiedToSink",
    :"objectsDeletedFromSink",
    :"objectsDeletedFromSource",
    :"objectsFailedToDeleteFromSink",
    :"objectsFoundFromSource",
    :"objectsFoundOnlyFromSink",
    :"objectsFromSourceFailed",
    :"objectsFromSourceSkippedBySync"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.TransferCounters do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.TransferCounters do
  def encode(value, options) do
    GoogleApi.StorageTransfer.V1.Deserializer.serialize_non_nil(value, options)
  end
end

