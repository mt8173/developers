Android ${sample.name} Sample
===================================

<#if sample.metadata.description?is_node>
${sample.metadata.description?trim?replace('\\n\\n', '\n')?replace('\\"', '"')?replace('\t+', '', 'r')?replace('(^\n+|\n+$)', '', 'r')}
<#else>
${sample.strings.intro?trim?replace('\\n\\n', '\n')?replace('\\"', '"')?replace('\t+', '', 'r')?replace('  +', '', 'r')?replace("\\\\'", "'", 'r')?replace('\\"', '"', 'r')?replace('(^\n+|\n+$)', '', 'r')}
</#if><#if sample.metadata.intro?is_node>

Introduction
------------

${sample.metadata.intro?trim?replace('\\n\\n', '\n')?replace('\\"', '"')?replace('\t+', '', 'r')?replace('(^\n+|\n+$)', '', 'r')}
</#if>

Pre-requisites
--------------

<#-- Use the compile_sdk variable as the required SDK. For Preview SDKs, skip the 'v' and 'android-' prefixes in the output. -->
- Android SDK ${compile_sdk?is_number?string('v','')}${compile_sdk?replace('"', '', 'r')?replace('android-','Preview ')}
- Android Build Tools v${build_tools_version?replace('"', '', 'r')}
- Android Support Repository
<#if sample.metadata.screenshots?has_content>

Screenshots
-------------

<#list sample.metadata.screenshots.img as img><img src="${img}" height="400" alt="Screenshot"/> </#list>
</#if>

Getting Started
---------------

This sample uses the Gradle build system. To build this project, use the
"gradlew build" command or use "Import Project" in Android Studio.

Support
-------

- Google+ Community: https://plus.google.com/communities/105153134372062985968
- Stack Overflow: http://stackoverflow.com/questions/tagged/android

If you've found an error in this sample, please file an issue:
https://github.com/googlesamples/android-${sample.name}

Patches are encouraged, and may be submitted by forking this project and
submitting a pull request through GitHub. Please see CONTRIBUTING.md for more details.

License
-------

Copyright 2016 The Android Open Source Project, Inc.

Licensed to the Apache Software Foundation (ASF) under one or more contributor
license agreements.  See the NOTICE file distributed with this work for
additional information regarding copyright ownership.  The ASF licenses this
file to you under the Apache License, Version 2.0 (the "License"); you may not
use this file except in compliance with the License.  You may obtain a copy of
the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
License for the specific language governing permissions and limitations under
the License.
