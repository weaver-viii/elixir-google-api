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

defmodule GoogleApi.QPXExpress.V1.Model.CityData do
  @moduledoc """
  Information about a city that might be useful to an end-user; typically the city of an airport.

  ## Attributes

  - code (String): The IATA character ID of a city. For example, for Boston this is BOS. Defaults to: `null`.
  - country (String): The two-character country code of the country the city is located in. For example, US for the United States of America. Defaults to: `null`.
  - kind (String): Identifies this as a city, typically with one or more airports. Value: the fixed string qpxexpress#cityData. Defaults to: `null`.
  - name (String): The full name of a city. An example would be: New York. Defaults to: `null`.
  """

  defstruct [
    :"code",
    :"country",
    :"kind",
    :"name"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.QPXExpress.V1.Model.CityData do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.QPXExpress.V1.Model.CityData do
  def encode(value, options) do
    GoogleApi.QPXExpress.V1.Deserializer.serialize_non_nil(value, options)
  end
end

