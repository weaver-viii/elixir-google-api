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

defmodule GoogleApi.Spectrum.V1explorer.Model.PawsGetSpectrumBatchRequest do
  @moduledoc """
  The request message for a batch available spectrum query protocol.

  ## Attributes

  - antenna (AntennaCharacteristics): Depending on device type and regulatory domain, antenna characteristics may be required. Defaults to: `null`.
  - capabilities (DeviceCapabilities): The master device may include its device capabilities to limit the available-spectrum batch response to the spectrum that is compatible with its capabilities. The database should not return spectrum that is incompatible with the specified capabilities. Defaults to: `null`.
  - deviceDesc (DeviceDescriptor): When the available spectrum request is made on behalf of a specific device (a master or slave device), device descriptor information for the device on whose behalf the request is made is required (in such cases, the requestType parameter must be empty). When a requestType value is specified, device descriptor information may be optional or required according to the rules of the applicable regulatory domain. Defaults to: `null`.
  - locations (List[GeoLocation]): A geolocation list is required. This allows a device to specify its current location plus additional anticipated locations when allowed by the regulatory domain. At least one location must be included. Geolocation must be given as the location of the radiation center of the device&#39;s antenna. If a location specifies a region, rather than a point, the database may return an UNIMPLEMENTED error if it does not support query by region.  There is no upper limit on the number of locations included in a available spectrum batch request, but the database may restrict the number of locations it supports by returning a response with fewer locations than specified in the batch request. Note that geolocations must be those of the master device (a device with geolocation capability that makes an available spectrum batch request), whether the master device is making the request on its own behalf or on behalf of a slave device (one without geolocation capability). Defaults to: `null`.
  - masterDeviceDesc (DeviceDescriptor): When an available spectrum batch request is made by the master device (a device with geolocation capability) on behalf of a slave device (a device without geolocation capability), the rules of the applicable regulatory domain may require the master device to provide its own device descriptor information (in addition to device descriptor information for the slave device in a separate parameter). Defaults to: `null`.
  - owner (DeviceOwner): Depending on device type and regulatory domain, device owner information may be included in an available spectrum batch request. This allows the device to register and get spectrum-availability information in a single request. Defaults to: `null`.
  - requestType (String): The request type parameter is an optional parameter that can be used to modify an available spectrum batch request, but its use depends on applicable regulatory rules. For example, It may be used to request generic slave device parameters without having to specify the device descriptor for a specific device. When the requestType parameter is missing, the request is for a specific device (master or slave), and the device descriptor parameter for the device on whose behalf the batch request is made is required. Defaults to: `null`.
  - type (String): The message type (e.g., INIT_REQ, AVAIL_SPECTRUM_REQ, ...).  Required field. Defaults to: `null`.
  - version (String): The PAWS version. Must be exactly 1.0.  Required field. Defaults to: `null`.
  """

  defstruct [
    :"antenna",
    :"capabilities",
    :"deviceDesc",
    :"locations",
    :"masterDeviceDesc",
    :"owner",
    :"requestType",
    :"type",
    :"version"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spectrum.V1explorer.Model.PawsGetSpectrumBatchRequest do
  import GoogleApi.Spectrum.V1explorer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"antenna", :struct, GoogleApi.Spectrum.V1explorer.Model.AntennaCharacteristics, options)
    |> deserialize(:"capabilities", :struct, GoogleApi.Spectrum.V1explorer.Model.DeviceCapabilities, options)
    |> deserialize(:"deviceDesc", :struct, GoogleApi.Spectrum.V1explorer.Model.DeviceDescriptor, options)
    |> deserialize(:"locations", :list, GoogleApi.Spectrum.V1explorer.Model.GeoLocation, options)
    |> deserialize(:"masterDeviceDesc", :struct, GoogleApi.Spectrum.V1explorer.Model.DeviceDescriptor, options)
    |> deserialize(:"owner", :struct, GoogleApi.Spectrum.V1explorer.Model.DeviceOwner, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spectrum.V1explorer.Model.PawsGetSpectrumBatchRequest do
  def encode(value, options) do
    GoogleApi.Spectrum.V1explorer.Deserializer.serialize_non_nil(value, options)
  end
end

