#!/bin/bash -eu
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
################################################################################

cd fuzz
make all

cp FuzzClient $OUT/FuzzClient
cp FuzzExtens $OUT/FuzzExtens
cp FuzzServer $OUT/FuzzServer
cp FuzzLeapsec $OUT/FuzzLeapsec

pushd $SRC/oss-fuzz-bloat/ntpsec/
cp FuzzClient_seed_corpus.zip $OUT/FuzzClient_seed_corpus.zip
cp FuzzExtens_seed_corpus.zip $OUT/FuzzExtens_seed_corpus.zip
cp FuzzServer_seed_corpus.zip $OUT/FuzzServer_seed_corpus.zip
cp FuzzLeapsec_seed_corpus.zip $OUT/FuzzLeapsec_seed_corpus.zip
popd
