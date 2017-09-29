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

defmodule GoogleApi.Surveys.V2.Model.SurveyAudience do
  @moduledoc """
  Specifications for the target audience of a survey run through the API.

  ## Attributes

  - ages (List[String]): Optional list of age buckets to target. Supported age buckets are: [&#39;18-24&#39;, &#39;25-34&#39;, &#39;35-44&#39;, &#39;45-54&#39;, &#39;55-64&#39;, &#39;65+&#39;] Defaults to: `null`.
  - country (String): Required country code that surveys should be targeted to. Accepts standard ISO 3166-1 2 character language codes. For instance, &#39;US&#39; for the United States, and &#39;GB&#39; for the United Kingdom. Defaults to: `null`.
  - countrySubdivision (String): Country subdivision (states/provinces/etc) that surveys should be targeted to. For all countries except GB, ISO-3166-2 subdivision code is required (eg. &#39;US-OH&#39; for Ohio, United States). For GB, NUTS 1 statistical region codes for the United Kingdom is required (eg. &#39;UK-UKC&#39; for North East England). Defaults to: `null`.
  - gender (String): Optional gender to target. Defaults to: `null`.
  - languages (List[String]): Language code that surveys should be targeted to. For instance, &#39;en-US&#39;. Surveys may target bilingual users by specifying a list of language codes (for example, &#39;de&#39; and &#39;en-US&#39;). In that case, all languages will be used for targeting users but the survey content (which is displayed) must match the first language listed. Accepts standard BCP47 language codes. See specification. Defaults to: `null`.
  - mobileAppPanelId (String): Key for predefined panel that causes survey to be sent to a predefined set of Opinion Rewards App users. You must set PopulationSource to ANDROID_APP_PANEL to use this field. Defaults to: `null`.
  - populationSource (String): Online population source where the respondents are sampled from. Defaults to: `null`.
  """

  defstruct [
    :"ages",
    :"country",
    :"countrySubdivision",
    :"gender",
    :"languages",
    :"mobileAppPanelId",
    :"populationSource"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Surveys.V2.Model.SurveyAudience do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Surveys.V2.Model.SurveyAudience do
  def encode(value, options) do
    GoogleApi.Surveys.V2.Deserializer.serialize_non_nil(value, options)
  end
end

