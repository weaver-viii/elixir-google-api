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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidDetailRow do
  @moduledoc """
  The number of filtered bids with the specified dimension values, among those filtered due to the requested filtering reason (i.e. creative status), that have the specified detail.

  ## Attributes

  - bidCount (MetricValue): The number of bids with the specified detail. Defaults to: `null`.
  - detailId (Integer): The ID of the detail. The associated value can be looked up in the dictionary file corresponding to the DetailType in the response message. Defaults to: `null`.
  - rowDimensions (RowDimensions): The values of all dimensions associated with metric values in this row. Defaults to: `null`.
  """

  defstruct [
    :"bidCount",
    :"detailId",
    :"rowDimensions"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidDetailRow do
  import GoogleApi.AdExchangeBuyer.V2beta1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"bidCount", :struct, GoogleApi.AdExchangeBuyer.V2beta1.Model.MetricValue, options)
    |> deserialize(:"rowDimensions", :struct, GoogleApi.AdExchangeBuyer.V2beta1.Model.RowDimensions, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidDetailRow do
  def encode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end
