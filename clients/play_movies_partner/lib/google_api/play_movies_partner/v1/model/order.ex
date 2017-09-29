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

defmodule GoogleApi.PlayMoviesPartner.V1.Model.Order do
  @moduledoc """
  An Order tracks the fulfillment of an Edit when delivered using the legacy, non-component-based delivery.  Each Order is uniquely identified by an &#x60;order_id&#x60;, which is generated by Google.  Externally, Orders can also be identified by partners using its &#x60;custom_id&#x60; (when provided).

  ## Attributes

  - approvedTime (String): Timestamp when the Order was approved. Defaults to: `null`.
  - channelId (String): YouTube Channel ID that should be used to fulfill the Order. Example: \&quot;UCRG64darCZhb\&quot;. Defaults to: `null`.
  - channelName (String): YouTube Channel Name that should be used to fulfill the Order. Example: \&quot;Google_channel\&quot;. Defaults to: `null`.
  - countries (List[String]): Countries where the Order is available, using the \&quot;ISO 3166-1 alpha-2\&quot; format (example: \&quot;US\&quot;). Defaults to: `null`.
  - customId (String): ID that can be used to externally identify an Order. This ID is provided by partners when submitting the Avails. Example: &#39;GOOGLER_2006&#39; Defaults to: `null`.
  - earliestAvailStartTime (String): Timestamp of the earliest start date of the Avails linked to this Order. Defaults to: `null`.
  - episodeName (String): Default Episode name, usually in the language of the country of origin. Only available for TV Edits Example: \&quot;Googlers, The - Pilot\&quot;. Defaults to: `null`.
  - legacyPriority (String): Legacy Order priority, as defined by Google. Example: &#39;P0&#39; Defaults to: `null`.
  - name (String): Default Edit name, usually in the language of the country of origin. Example: \&quot;Googlers, The\&quot;. Defaults to: `null`.
  - normalizedPriority (String): A simpler representation of the priority. Defaults to: `null`.
    - Enum - one of [NORMALIZED_PRIORITY_UNSPECIFIED, LOW_PRIORITY, HIGH_PRIORITY]
  - orderId (String): ID internally generated by Google to uniquely identify an Order. Example: &#39;abcde12_x&#39; Defaults to: `null`.
  - orderedTime (String): Timestamp when the Order was created. Defaults to: `null`.
  - pphName (String): Name of the post-production house that manages the Edit ordered. Defaults to: `null`.
  - priority (Float): Order priority, as defined by Google. The higher the value, the higher the priority. Example: 90 Defaults to: `null`.
  - receivedTime (String): Timestamp when the Order was fulfilled. Defaults to: `null`.
  - rejectionNote (String): Field explaining why an Order has been rejected. Example: \&quot;Trailer audio is 2ch mono, please re-deliver in stereo\&quot;. Defaults to: `null`.
  - seasonName (String): Default Season name, usually in the language of the country of origin. Only available for TV Edits Example: \&quot;Googlers, The - A Brave New World\&quot;. Defaults to: `null`.
  - showName (String): Default Show name, usually in the language of the country of origin. Only available for TV Edits Example: \&quot;Googlers, The\&quot;. Defaults to: `null`.
  - status (String): High-level status of the order. Defaults to: `null`.
    - Enum - one of [STATUS_UNSPECIFIED, STATUS_APPROVED, STATUS_FAILED, STATUS_PROCESSING, STATUS_UNFULFILLED, STATUS_NOT_AVAILABLE]
  - statusDetail (String): Detailed status of the order Defaults to: `null`.
    - Enum - one of [ORDER_STATUS_UNSPECIFIED, ORDER_STATUS_QC_APPROVED, ORDER_STATUS_QC_REJECTION, ORDER_STATUS_INTERNAL_FIX, ORDER_STATUS_OPEN_ORDER, ORDER_STATUS_NOT_AVAILABLE, ORDER_STATUS_AWAITING_REDELIVERY, ORDER_STATUS_READY_FOR_QC, ORDER_STATUS_FILE_PROCESSING]
  - studioName (String): Name of the studio that owns the Edit ordered. Defaults to: `null`.
  - type (String): Type of the Edit linked to the Order. Defaults to: `null`.
    - Enum - one of [TITLE_TYPE_UNSPECIFIED, MOVIE, SEASON, EPISODE, BUNDLE]
  - videoId (String): Google-generated ID identifying the video linked to this Order, once delivered. Example: &#39;gtry456_xc&#39;. Defaults to: `null`.
  """

  defstruct [
    :"approvedTime",
    :"channelId",
    :"channelName",
    :"countries",
    :"customId",
    :"earliestAvailStartTime",
    :"episodeName",
    :"legacyPriority",
    :"name",
    :"normalizedPriority",
    :"orderId",
    :"orderedTime",
    :"pphName",
    :"priority",
    :"receivedTime",
    :"rejectionNote",
    :"seasonName",
    :"showName",
    :"status",
    :"statusDetail",
    :"studioName",
    :"type",
    :"videoId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.PlayMoviesPartner.V1.Model.Order do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlayMoviesPartner.V1.Model.Order do
  def encode(value, options) do
    GoogleApi.PlayMoviesPartner.V1.Deserializer.serialize_non_nil(value, options)
  end
end

