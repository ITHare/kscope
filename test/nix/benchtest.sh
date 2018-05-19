# Copyright (c) 2018, ITHare.com
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#  list of conditions and the following disclaimer.
# 
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# * Neither the name of the copyright holder nor the names of its
#   contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

CXX=${CXX:=g++}
CXX_LIB="${CXX_LIB:=-lstdc++}"
HIGHLIGHT="$(tput bold)$(tput setaf 2)$(tput rev)"
NOHIGHLIGHT="$(tput sgr0)"
echo "${HIGHLIGHT}===*** COMPILER BEING USED: CXX=${CXX} ***===${NOHIGHLIGHT}"
$CXX --version

echo "${HIGHLIGHT}===*** benchmark: DISABLE/FORCEINLINE ***===${NOHIGHLIGHT}"
$CXX -DITHARE_KSCOPE_TEST_BENCHMARK -DITHARE_KSCOPE_DISABLE -O3 -DNDEBUG -std=c++1z -pedantic -pedantic-errors -Wall -Wextra -Werror -DITHARE_KSCOPE_TEST_EXTENSION=\"../src/kscope_sample_extension.h\" -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS ${CXX_LIB} -o randomtest ../officialtest.cpp ../chachatest.cpp
printf "*** benchmark: DISABLE/FORCEINLINE\n" >bench.txt
./randomtest >>bench.txt

echo "${HIGHLIGHT}===*** benchmark: DISABLE/NOFORCEINLINE ***===${NOHIGHLIGHT}"
$CXX -DITHARE_KSCOPE_NOFORCEINLINE -DITHARE_KSCOPE_TEST_BENCHMARK -DITHARE_KSCOPE_DISABLE -O3 -DNDEBUG -std=c++1z -pedantic -pedantic-errors -Wall -Wextra -Werror -DITHARE_KSCOPE_TEST_EXTENSION=\"../src/kscope_sample_extension.h\" -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS ${CXX_LIB} -o randomtest ../officialtest.cpp ../chachatest.cpp
printf "\n\n*** benchmark: DISABLE/NOFORCEINLINE\n" >>bench.txt
./randomtest >>bench.txt

echo "${HIGHLIGHT}===*** benchmark: no SEED/FORCEINLINE ***===${NOHIGHLIGHT}"
$CXX -DITHARE_KSCOPE_TEST_BENCHMARK -O3 -DNDEBUG -std=c++1z -pedantic -pedantic-errors -Wall -Wextra -Werror -DITHARE_KSCOPE_TEST_EXTENSION=\"../src/kscope_sample_extension.h\" -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS ${CXX_LIB} -o randomtest ../officialtest.cpp ../chachatest.cpp
printf "\n\n*** benchmark: NO SEED/FORCEINLINE\n" >>bench.txt
./randomtest >>bench.txt

echo "${HIGHLIGHT}===*** benchmark: no SEED/NOFORCEINLINE ***===${NOHIGHLIGHT}"
$CXX -DITHARE_KSCOPE_NOFORCEINLINE -DITHARE_KSCOPE_TEST_BENCHMARK -O3 -DNDEBUG -std=c++1z -pedantic -pedantic-errors -Wall -Wextra -Werror -DITHARE_KSCOPE_TEST_EXTENSION=\"../src/kscope_sample_extension.h\" -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS ${CXX_LIB} -o randomtest ../officialtest.cpp ../chachatest.cpp
printf "\n\n*** benchmark: NO SEED/NOFORCEINLINE\n" >>bench.txt
./randomtest >>bench.txt

echo "${HIGHLIGHT}===*** benchmark: SEED/FORCEINLINE ***===${NOHIGHLIGHT}"
$CXX -DITHARE_KSCOPE_TEST_BENCHMARK -O3 -DNDEBUG -std=c++1z -pedantic -pedantic-errors -Wall -Wextra -Werror -DITHARE_KSCOPE_TEST_EXTENSION=\"../src/kscope_sample_extension.h\" -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea ${CXX_LIB} -o randomtest ../officialtest.cpp ../chachatest.cpp
printf "\n\n*** benchmark: SEED/FORCEINLINE\n" >>bench.txt
./randomtest >>bench.txt

echo "${HIGHLIGHT}===*** benchmark: SEED/NOFORCEINLINE ***===${NOHIGHLIGHT}"
$CXX -DITHARE_KSCOPE_NOFORCEINLINE -DITHARE_KSCOPE_TEST_BENCHMARK -O3 -DNDEBUG -std=c++1z -pedantic -pedantic-errors -Wall -Wextra -Werror -DITHARE_KSCOPE_TEST_EXTENSION=\"../src/kscope_sample_extension.h\" -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea ${CXX_LIB} -o randomtest ../officialtest.cpp ../chachatest.cpp
printf "\n\n*** benchmark: SEED/NOFORCEINLINE\n" >>bench.txt
./randomtest >>bench.txt
