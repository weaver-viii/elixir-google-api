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

defmodule GoogleApi.Genomics.V1.Model.ExportReadGroupSetRequest do
  @moduledoc """
  The read group set export request.

  ## Attributes

  - exportUri (String): Required. A Google Cloud Storage URI for the exported BAM file. The currently authenticated user must have write access to the new file. An error will be returned if the URI already contains data. Defaults to: `null`.
  - projectId (String): Required. The Google Cloud project ID that owns this export. The caller must have WRITE access to this project. Defaults to: `null`.
  - referenceNames (List[String]): The reference names to export. If this is not specified, all reference sequences, including unmapped reads, are exported. Use &#x60;*&#x60; to export only unmapped reads. Defaults to: `null`.
  """

  defstruct [
    :"exportUri",
    :"projectId",
    :"referenceNames"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.ExportReadGroupSetRequest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.ExportReadGroupSetRequest do
  def encode(value, options) do
    GoogleApi.Genomics.V1.Deserializer.serialize_non_nil(value, options)
  end
end

