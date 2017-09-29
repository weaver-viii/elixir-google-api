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

defmodule GoogleApi.StorageTransfer.V1.Model.HttpData do
  @moduledoc """
  An HttpData specifies a list of objects on the web to be transferred over HTTP.  The information of the objects to be transferred is contained in a file referenced by a URL. The first line in the file must be \&quot;TsvHttpData-1.0\&quot;, which specifies the format of the file.  Subsequent lines specify the information of the list of objects, one object per list entry. Each entry has the following tab-delimited fields:  * HTTP URL - The location of the object.  * Length - The size of the object in bytes.  * MD5 - The base64-encoded MD5 hash of the object.  For an example of a valid TSV file, see [Transferring data from URLs](https://cloud.google.com/storage/transfer/create-url-list).  When transferring data based on a URL list, keep the following in mind:  * When an object located at &#x60;http(s)://hostname:port/&lt;URL-path&gt;&#x60; is transferred to a data sink, the name of the object at the data sink is &#x60;&lt;hostname&gt;/&lt;URL-path&gt;&#x60;.  * If the specified size of an object does not match the actual size of the object fetched, the object will not be transferred.  * If the specified MD5 does not match the MD5 computed from the transferred bytes, the object transfer will fail. For more information, see [Generating MD5 hashes](https://cloud.google.com/storage/transfer/#md5)  * Ensure that each URL you specify is publicly accessible. For example, in Google Cloud Storage you can [share an object publicly] (https://cloud.google.com/storage/docs/cloud-console#_sharingdata) and get a link to it.  * Storage Transfer Service obeys &#x60;robots.txt&#x60; rules and requires the source HTTP server to support &#x60;Range&#x60; requests and to return a &#x60;Content-Length&#x60; header in each response.  * [ObjectConditions](#ObjectConditions) have no effect when filtering objects to transfer.

  ## Attributes

  - listUrl (String): The URL that points to the file that stores the object list entries. This file must allow public access.  Currently, only URLs with HTTP and HTTPS schemes are supported. Required. Defaults to: `null`.
  """

  defstruct [
    :"listUrl"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.HttpData do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.HttpData do
  def encode(value, options) do
    GoogleApi.StorageTransfer.V1.Deserializer.serialize_non_nil(value, options)
  end
end

