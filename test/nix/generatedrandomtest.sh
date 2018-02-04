#!/bin/sh
CXX="${CXX:=g++}"
HIGHLIGHT='\033[32m\033[1m\033[7m'
NOHIGHLIGHT='\033[0m'
echo "${HIGHLIGHT}===*** COMPILER BEING USED: CXX=${CXX} ***===${NOHIGHLIGHT}"
$CXX --version
echo "${HIGHLIGHT}=== kscope -Define Test 1/12 (DEBUG, -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT, write_output::stable) ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp >../kscope.txt"
./testapp >../kscope.txt
if [ ! $? -eq 0 ]; then
  echo "./testapp >../kscope.txt">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp >../kscope.txt"
./testapp >../kscope.txt
if [ ! $? -eq 0 ]; then
  echo "./testapp >../kscope.txt">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT -m32 -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT -m32 -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT -m32 -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp >../kscope.txt"
./testapp >../kscope.txt
if [ ! $? -eq 0 ]; then
  echo "./testapp >../kscope.txt">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT -m32 -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT -m32 -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT -m32 -DITHARE_KSCOPE_SEED=0x4b295ebab3333abc -DITHARE_KSCOPE_SEED2=0x36e007a38ae8e0ea -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp >../kscope.txt"
./testapp >../kscope.txt
if [ ! $? -eq 0 ]; then
  echo "./testapp >../kscope.txt">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== kscope -Define Test 2/12 (RELEASE, -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2, write_output::random)===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2 -DITHARE_KSCOPE_SEED=0xc1087419eeb4f161 -DITHARE_KSCOPE_SEED2=0xc31471e234b5dc50 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2 -DITHARE_KSCOPE_SEED=0xc1087419eeb4f161 -DITHARE_KSCOPE_SEED2=0xc31471e234b5dc50 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2 -DITHARE_KSCOPE_SEED=0xc1087419eeb4f161 -DITHARE_KSCOPE_SEED2=0xc31471e234b5dc50 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp >local_kscope.txt"
./testapp >local_kscope.txt
if [ ! $? -eq 0 ]; then
  echo "./testapp >local_kscope.txt">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2 -DITHARE_KSCOPE_SEED=0x0e0c62639cb88799 -DITHARE_KSCOPE_SEED2=0x6867baadda033e2f -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2 -DITHARE_KSCOPE_SEED=0x0e0c62639cb88799 -DITHARE_KSCOPE_SEED2=0x6867baadda033e2f -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2 -DITHARE_KSCOPE_SEED=0x0e0c62639cb88799 -DITHARE_KSCOPE_SEED2=0x6867baadda033e2f -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp >local_kscope.txt"
./testapp >local_kscope.txt
if [ ! $? -eq 0 ]; then
  echo "./testapp >local_kscope.txt">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2 -m32 -DITHARE_KSCOPE_SEED=0x76363b16dda6a4e0 -DITHARE_KSCOPE_SEED2=0x5721949e4820419b -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2 -m32 -DITHARE_KSCOPE_SEED=0x76363b16dda6a4e0 -DITHARE_KSCOPE_SEED2=0x5721949e4820419b -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2 -m32 -DITHARE_KSCOPE_SEED=0x76363b16dda6a4e0 -DITHARE_KSCOPE_SEED2=0x5721949e4820419b -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp >local_kscope.txt"
./testapp >local_kscope.txt
if [ ! $? -eq 0 ]; then
  echo "./testapp >local_kscope.txt">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2 -m32 -DITHARE_KSCOPE_SEED=0x99ac6edc975c9209 -DITHARE_KSCOPE_SEED2=0x5e81e5f0c2ac4210 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2 -m32 -DITHARE_KSCOPE_SEED=0x99ac6edc975c9209 -DITHARE_KSCOPE_SEED2=0x5e81e5f0c2ac4210 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT=2 -m32 -DITHARE_KSCOPE_SEED=0x99ac6edc975c9209 -DITHARE_KSCOPE_SEED2=0x5e81e5f0c2ac4210 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp >local_kscope.txt"
./testapp >local_kscope.txt
if [ ! $? -eq 0 ]; then
  echo "./testapp >local_kscope.txt">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== kscope -Define Test 3/12 (DEBUG, no ITHARE_KSCOPE_SEED) ===${NOHIGHLIGHT}"
echo "$CXX  -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -m32 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -m32 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -m32 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== kscope -Define Test 4/12 (RELEASE, no ITHARE_KSCOPE_SEED) ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== kscope -Define Test 5/12 (DEBUG, single ITHARE_KSCOPE_SEED) ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc6507309e3648e22 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc6507309e3648e22 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc6507309e3648e22 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -DITHARE_KSCOPE_SEED=0x26c460b5eb156aa4 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x26c460b5eb156aa4 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x26c460b5eb156aa4 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -m32 -DITHARE_KSCOPE_SEED=0xd1d981fd7fae4e9b -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -m32 -DITHARE_KSCOPE_SEED=0xd1d981fd7fae4e9b -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -m32 -DITHARE_KSCOPE_SEED=0xd1d981fd7fae4e9b -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -m32 -DITHARE_KSCOPE_SEED=0x233941e6923e1ef7 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -m32 -DITHARE_KSCOPE_SEED=0x233941e6923e1ef7 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -m32 -DITHARE_KSCOPE_SEED=0x233941e6923e1ef7 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== kscope -Define Test 6/12 (RELEASE, single ITHARE_KSCOPE_SEED) ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2924abb16a33d390 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2924abb16a33d390 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2924abb16a33d390 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe195eb20d72cad26 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe195eb20d72cad26 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe195eb20d72cad26 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_SEED=0xe740ace147bba1df -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_SEED=0xe740ace147bba1df -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_SEED=0xe740ace147bba1df -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_SEED=0x082990b8840da445 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_SEED=0x082990b8840da445 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_SEED=0x082990b8840da445 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== kscope -Define Test 7/12 (DEBUG) ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xa5a8383d17fd8095 -DITHARE_KSCOPE_SEED2=0xc714ef3c78aa715b -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xa5a8383d17fd8095 -DITHARE_KSCOPE_SEED2=0xc714ef3c78aa715b -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xa5a8383d17fd8095 -DITHARE_KSCOPE_SEED2=0xc714ef3c78aa715b -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -DITHARE_KSCOPE_SEED=0xcf88be1d31626c19 -DITHARE_KSCOPE_SEED2=0x95348e0528c104f7 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xcf88be1d31626c19 -DITHARE_KSCOPE_SEED2=0x95348e0528c104f7 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xcf88be1d31626c19 -DITHARE_KSCOPE_SEED2=0x95348e0528c104f7 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -m32 -DITHARE_KSCOPE_SEED=0x0d18349ee7a1b06c -DITHARE_KSCOPE_SEED2=0x923df83ffe878751 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -m32 -DITHARE_KSCOPE_SEED=0x0d18349ee7a1b06c -DITHARE_KSCOPE_SEED2=0x923df83ffe878751 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -m32 -DITHARE_KSCOPE_SEED=0x0d18349ee7a1b06c -DITHARE_KSCOPE_SEED2=0x923df83ffe878751 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -m32 -DITHARE_KSCOPE_SEED=0x17dfc0ba8fbe6ba4 -DITHARE_KSCOPE_SEED2=0xedc6478c1b347a53 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -m32 -DITHARE_KSCOPE_SEED=0x17dfc0ba8fbe6ba4 -DITHARE_KSCOPE_SEED2=0xedc6478c1b347a53 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -m32 -DITHARE_KSCOPE_SEED=0x17dfc0ba8fbe6ba4 -DITHARE_KSCOPE_SEED2=0xedc6478c1b347a53 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== kscope -Define Test 8/12 (RELEASE) ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d1e1214c609c604 -DITHARE_KSCOPE_SEED2=0x1ca130a12567bf97 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d1e1214c609c604 -DITHARE_KSCOPE_SEED2=0x1ca130a12567bf97 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d1e1214c609c604 -DITHARE_KSCOPE_SEED2=0x1ca130a12567bf97 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x03f812f5ea7c921e -DITHARE_KSCOPE_SEED2=0x5e1540ed4d2e22b0 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x03f812f5ea7c921e -DITHARE_KSCOPE_SEED2=0x5e1540ed4d2e22b0 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x03f812f5ea7c921e -DITHARE_KSCOPE_SEED2=0x5e1540ed4d2e22b0 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_SEED=0xe804cec399ffebbb -DITHARE_KSCOPE_SEED2=0xde37dccd19b3bb78 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_SEED=0xe804cec399ffebbb -DITHARE_KSCOPE_SEED2=0xde37dccd19b3bb78 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_SEED=0xe804cec399ffebbb -DITHARE_KSCOPE_SEED2=0xde37dccd19b3bb78 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_SEED=0xdc0304f11f22f214 -DITHARE_KSCOPE_SEED2=0xd87e5a1f6c231e8a -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_SEED=0xdc0304f11f22f214 -DITHARE_KSCOPE_SEED2=0xd87e5a1f6c231e8a -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -m32 -DITHARE_KSCOPE_SEED=0xdc0304f11f22f214 -DITHARE_KSCOPE_SEED2=0xd87e5a1f6c231e8a -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== kscope -Define Test 9/12 (DEBUG, -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS) ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -DITHARE_KSCOPE_SEED=0x01b44cf81a6c06e2 -DITHARE_KSCOPE_SEED2=0x0a6fc99a65fd0d17 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -DITHARE_KSCOPE_SEED=0x01b44cf81a6c06e2 -DITHARE_KSCOPE_SEED2=0x0a6fc99a65fd0d17 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -DITHARE_KSCOPE_SEED=0x01b44cf81a6c06e2 -DITHARE_KSCOPE_SEED2=0x0a6fc99a65fd0d17 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -DITHARE_KSCOPE_SEED=0x00f72691be362218 -DITHARE_KSCOPE_SEED2=0x68c4d1472476c7f2 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -DITHARE_KSCOPE_SEED=0x00f72691be362218 -DITHARE_KSCOPE_SEED2=0x68c4d1472476c7f2 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -DITHARE_KSCOPE_SEED=0x00f72691be362218 -DITHARE_KSCOPE_SEED2=0x68c4d1472476c7f2 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -DITHARE_KSCOPE_SEED=0x43377c8b057f1e5c -DITHARE_KSCOPE_SEED2=0x1ab8c7534a24252b -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -DITHARE_KSCOPE_SEED=0x43377c8b057f1e5c -DITHARE_KSCOPE_SEED2=0x1ab8c7534a24252b -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -DITHARE_KSCOPE_SEED=0x43377c8b057f1e5c -DITHARE_KSCOPE_SEED2=0x1ab8c7534a24252b -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -DITHARE_KSCOPE_SEED=0x70db95041dc8e2e6 -DITHARE_KSCOPE_SEED2=0x49b3d52f34718c87 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -DITHARE_KSCOPE_SEED=0x70db95041dc8e2e6 -DITHARE_KSCOPE_SEED2=0x49b3d52f34718c87 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -DITHARE_KSCOPE_SEED=0x70db95041dc8e2e6 -DITHARE_KSCOPE_SEED2=0x49b3d52f34718c87 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== kscope -Define Test 10/12 (RELEASE, -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS) ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -DITHARE_KSCOPE_SEED=0xea09cb4df3a6bb5f -DITHARE_KSCOPE_SEED2=0xb8cead7442922e2c -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -DITHARE_KSCOPE_SEED=0xea09cb4df3a6bb5f -DITHARE_KSCOPE_SEED2=0xb8cead7442922e2c -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -DITHARE_KSCOPE_SEED=0xea09cb4df3a6bb5f -DITHARE_KSCOPE_SEED2=0xb8cead7442922e2c -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -DITHARE_KSCOPE_SEED=0xb01055efea33c8c9 -DITHARE_KSCOPE_SEED2=0x49514de49764277a -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -DITHARE_KSCOPE_SEED=0xb01055efea33c8c9 -DITHARE_KSCOPE_SEED2=0x49514de49764277a -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -DITHARE_KSCOPE_SEED=0xb01055efea33c8c9 -DITHARE_KSCOPE_SEED2=0x49514de49764277a -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -DITHARE_KSCOPE_SEED=0xed1177b06d540467 -DITHARE_KSCOPE_SEED2=0x6744e7238c085069 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -DITHARE_KSCOPE_SEED=0xed1177b06d540467 -DITHARE_KSCOPE_SEED2=0x6744e7238c085069 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -DITHARE_KSCOPE_SEED=0xed1177b06d540467 -DITHARE_KSCOPE_SEED2=0x6744e7238c085069 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -DITHARE_KSCOPE_SEED=0x85e300b19e911407 -DITHARE_KSCOPE_SEED2=0x1b9a1aa6dddb28ea -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -DITHARE_KSCOPE_SEED=0x85e300b19e911407 -DITHARE_KSCOPE_SEED2=0x1b9a1aa6dddb28ea -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -DITHARE_KSCOPE_SEED=0x85e300b19e911407 -DITHARE_KSCOPE_SEED2=0x1b9a1aa6dddb28ea -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== kscope -Define Test 11/12 (DEBUG, -DITHARE_KSCOPE_CRYPTO_PRNG) ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_CRYPTO_PRNG -DITHARE_KSCOPE_SEED=0xdaa428f75b71792e -DITHARE_KSCOPE_SEED2=0xc8aefaf3b2703d06 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_CRYPTO_PRNG -DITHARE_KSCOPE_SEED=0xdaa428f75b71792e -DITHARE_KSCOPE_SEED2=0xc8aefaf3b2703d06 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_CRYPTO_PRNG -DITHARE_KSCOPE_SEED=0xdaa428f75b71792e -DITHARE_KSCOPE_SEED2=0xc8aefaf3b2703d06 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -DITHARE_KSCOPE_CRYPTO_PRNG -DITHARE_KSCOPE_SEED=0x387a7189ff7ac801 -DITHARE_KSCOPE_SEED2=0x6b52b6af36563e35 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_CRYPTO_PRNG -DITHARE_KSCOPE_SEED=0x387a7189ff7ac801 -DITHARE_KSCOPE_SEED2=0x6b52b6af36563e35 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_CRYPTO_PRNG -DITHARE_KSCOPE_SEED=0x387a7189ff7ac801 -DITHARE_KSCOPE_SEED2=0x6b52b6af36563e35 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -DITHARE_KSCOPE_CRYPTO_PRNG -m32 -DITHARE_KSCOPE_SEED=0xdad791e315b7256d -DITHARE_KSCOPE_SEED2=0x5f9d162c923d4453 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_CRYPTO_PRNG -m32 -DITHARE_KSCOPE_SEED=0xdad791e315b7256d -DITHARE_KSCOPE_SEED2=0x5f9d162c923d4453 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_CRYPTO_PRNG -m32 -DITHARE_KSCOPE_SEED=0xdad791e315b7256d -DITHARE_KSCOPE_SEED2=0x5f9d162c923d4453 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX  -DITHARE_KSCOPE_CRYPTO_PRNG -m32 -DITHARE_KSCOPE_SEED=0x6a82a4b3c6bcf26b -DITHARE_KSCOPE_SEED2=0x4b9399ef992f6c2c -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_CRYPTO_PRNG -m32 -DITHARE_KSCOPE_SEED=0x6a82a4b3c6bcf26b -DITHARE_KSCOPE_SEED2=0x4b9399ef992f6c2c -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_CRYPTO_PRNG -m32 -DITHARE_KSCOPE_SEED=0x6a82a4b3c6bcf26b -DITHARE_KSCOPE_SEED2=0x4b9399ef992f6c2c -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== kscope -Define Test 12/12 (RELEASE, -DITHARE_KSCOPE_CRYPTO_PRNG) ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CRYPTO_PRNG -DITHARE_KSCOPE_SEED=0xc0aa031a148650e9 -DITHARE_KSCOPE_SEED2=0x7bce0073cfb84597 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CRYPTO_PRNG -DITHARE_KSCOPE_SEED=0xc0aa031a148650e9 -DITHARE_KSCOPE_SEED2=0x7bce0073cfb84597 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CRYPTO_PRNG -DITHARE_KSCOPE_SEED=0xc0aa031a148650e9 -DITHARE_KSCOPE_SEED2=0x7bce0073cfb84597 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CRYPTO_PRNG -DITHARE_KSCOPE_SEED=0x2490a142a459130c -DITHARE_KSCOPE_SEED2=0xe2eca0cc01e1ae80 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CRYPTO_PRNG -DITHARE_KSCOPE_SEED=0x2490a142a459130c -DITHARE_KSCOPE_SEED2=0xe2eca0cc01e1ae80 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CRYPTO_PRNG -DITHARE_KSCOPE_SEED=0x2490a142a459130c -DITHARE_KSCOPE_SEED2=0xe2eca0cc01e1ae80 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CRYPTO_PRNG -m32 -DITHARE_KSCOPE_SEED=0x7e695c8cebbc3841 -DITHARE_KSCOPE_SEED2=0xec0b6c9f5b8abf34 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CRYPTO_PRNG -m32 -DITHARE_KSCOPE_SEED=0x7e695c8cebbc3841 -DITHARE_KSCOPE_SEED2=0xec0b6c9f5b8abf34 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CRYPTO_PRNG -m32 -DITHARE_KSCOPE_SEED=0x7e695c8cebbc3841 -DITHARE_KSCOPE_SEED2=0xec0b6c9f5b8abf34 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CRYPTO_PRNG -m32 -DITHARE_KSCOPE_SEED=0x775a341160e1422e -DITHARE_KSCOPE_SEED2=0x2f4a4f6784309529 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CRYPTO_PRNG -m32 -DITHARE_KSCOPE_SEED=0x775a341160e1422e -DITHARE_KSCOPE_SEED2=0x2f4a4f6784309529 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_CRYPTO_PRNG -m32 -DITHARE_KSCOPE_SEED=0x775a341160e1422e -DITHARE_KSCOPE_SEED2=0x2f4a4f6784309529 -DITHARE_KSCOPE_TEST_NO_NAMESPACE -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x509eb4d716a0dcec -DITHARE_KSCOPE_SEED2=0xda21ee06d01bc2a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x509eb4d716a0dcec -DITHARE_KSCOPE_SEED2=0xda21ee06d01bc2a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x509eb4d716a0dcec -DITHARE_KSCOPE_SEED2=0xda21ee06d01bc2a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 2/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb437eb75c14c9cd5 -DITHARE_KSCOPE_SEED2=0xf28aecf0d7418c39 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb437eb75c14c9cd5 -DITHARE_KSCOPE_SEED2=0xf28aecf0d7418c39 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb437eb75c14c9cd5 -DITHARE_KSCOPE_SEED2=0xf28aecf0d7418c39 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 3/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x09935473928d6d72 -DITHARE_KSCOPE_SEED2=0x7c290817a3461e3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x09935473928d6d72 -DITHARE_KSCOPE_SEED2=0x7c290817a3461e3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x09935473928d6d72 -DITHARE_KSCOPE_SEED2=0x7c290817a3461e3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 4/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44961cea6da51642 -DITHARE_KSCOPE_SEED2=0xc0cde706c5ff7ffb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44961cea6da51642 -DITHARE_KSCOPE_SEED2=0xc0cde706c5ff7ffb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44961cea6da51642 -DITHARE_KSCOPE_SEED2=0xc0cde706c5ff7ffb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 5/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc10209be1f2f7086 -DITHARE_KSCOPE_SEED2=0x339dc378ba6b2541 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc10209be1f2f7086 -DITHARE_KSCOPE_SEED2=0x339dc378ba6b2541 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc10209be1f2f7086 -DITHARE_KSCOPE_SEED2=0x339dc378ba6b2541 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 6/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x52001b553b1f29c5 -DITHARE_KSCOPE_SEED2=0x97fafa9dba471b12 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x52001b553b1f29c5 -DITHARE_KSCOPE_SEED2=0x97fafa9dba471b12 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x52001b553b1f29c5 -DITHARE_KSCOPE_SEED2=0x97fafa9dba471b12 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 7/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaeb3d4b3ccbb2ff7 -DITHARE_KSCOPE_SEED2=0x08a1866043376084 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaeb3d4b3ccbb2ff7 -DITHARE_KSCOPE_SEED2=0x08a1866043376084 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaeb3d4b3ccbb2ff7 -DITHARE_KSCOPE_SEED2=0x08a1866043376084 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 8/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x97e642dc8de61e2d -DITHARE_KSCOPE_SEED2=0x8529b466d99ac579 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x97e642dc8de61e2d -DITHARE_KSCOPE_SEED2=0x8529b466d99ac579 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x97e642dc8de61e2d -DITHARE_KSCOPE_SEED2=0x8529b466d99ac579 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 9/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb92a55eabff75cad -DITHARE_KSCOPE_SEED2=0x16d45d55a3921185 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb92a55eabff75cad -DITHARE_KSCOPE_SEED2=0x16d45d55a3921185 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb92a55eabff75cad -DITHARE_KSCOPE_SEED2=0x16d45d55a3921185 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 10/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x62615dba4b506a43 -DITHARE_KSCOPE_SEED2=0x0d3e4deb3a811624 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x62615dba4b506a43 -DITHARE_KSCOPE_SEED2=0x0d3e4deb3a811624 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x62615dba4b506a43 -DITHARE_KSCOPE_SEED2=0x0d3e4deb3a811624 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 11/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3c2da4bda79e0078 -DITHARE_KSCOPE_SEED2=0x5f54f25ebf44c350 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3c2da4bda79e0078 -DITHARE_KSCOPE_SEED2=0x5f54f25ebf44c350 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3c2da4bda79e0078 -DITHARE_KSCOPE_SEED2=0x5f54f25ebf44c350 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 12/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x40cefa4ecf986ced -DITHARE_KSCOPE_SEED2=0xba9b700efa821ca5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x40cefa4ecf986ced -DITHARE_KSCOPE_SEED2=0xba9b700efa821ca5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x40cefa4ecf986ced -DITHARE_KSCOPE_SEED2=0xba9b700efa821ca5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 13/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x357bdfba407d2128 -DITHARE_KSCOPE_SEED2=0x20d524ef51b4c0b4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x357bdfba407d2128 -DITHARE_KSCOPE_SEED2=0x20d524ef51b4c0b4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x357bdfba407d2128 -DITHARE_KSCOPE_SEED2=0x20d524ef51b4c0b4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 14/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x50fe405103a61320 -DITHARE_KSCOPE_SEED2=0xea3d082e63ce97ee -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x50fe405103a61320 -DITHARE_KSCOPE_SEED2=0xea3d082e63ce97ee -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x50fe405103a61320 -DITHARE_KSCOPE_SEED2=0xea3d082e63ce97ee -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 15/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc98f83a754d4cc99 -DITHARE_KSCOPE_SEED2=0x1289b214023e15dc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc98f83a754d4cc99 -DITHARE_KSCOPE_SEED2=0x1289b214023e15dc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc98f83a754d4cc99 -DITHARE_KSCOPE_SEED2=0x1289b214023e15dc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 16/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4ea567d81d9e60ff -DITHARE_KSCOPE_SEED2=0x05c9abf8a12509cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4ea567d81d9e60ff -DITHARE_KSCOPE_SEED2=0x05c9abf8a12509cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4ea567d81d9e60ff -DITHARE_KSCOPE_SEED2=0x05c9abf8a12509cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 17/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xe7178dc0974077c5 -DITHARE_KSCOPE_SEED2=0xc2b736c252cc227f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xe7178dc0974077c5 -DITHARE_KSCOPE_SEED2=0xc2b736c252cc227f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xe7178dc0974077c5 -DITHARE_KSCOPE_SEED2=0xc2b736c252cc227f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 18/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1c441fb618456fae -DITHARE_KSCOPE_SEED2=0xe6b6f80c69a2fdfd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1c441fb618456fae -DITHARE_KSCOPE_SEED2=0xe6b6f80c69a2fdfd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1c441fb618456fae -DITHARE_KSCOPE_SEED2=0xe6b6f80c69a2fdfd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 19/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x296b4a1aa8f5e3f3 -DITHARE_KSCOPE_SEED2=0xff4903d64f37e217 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x296b4a1aa8f5e3f3 -DITHARE_KSCOPE_SEED2=0xff4903d64f37e217 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x296b4a1aa8f5e3f3 -DITHARE_KSCOPE_SEED2=0xff4903d64f37e217 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 20/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb3fce9c2e500483d -DITHARE_KSCOPE_SEED2=0xf82d2c9f6ded812e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb3fce9c2e500483d -DITHARE_KSCOPE_SEED2=0xf82d2c9f6ded812e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb3fce9c2e500483d -DITHARE_KSCOPE_SEED2=0xf82d2c9f6ded812e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 21/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x4d60739c0f0078b2 -DITHARE_KSCOPE_SEED2=0x5be2144d2086b977 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x4d60739c0f0078b2 -DITHARE_KSCOPE_SEED2=0x5be2144d2086b977 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x4d60739c0f0078b2 -DITHARE_KSCOPE_SEED2=0x5be2144d2086b977 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 22/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa43740c773e6ebf1 -DITHARE_KSCOPE_SEED2=0x984f585063cf2a3f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa43740c773e6ebf1 -DITHARE_KSCOPE_SEED2=0x984f585063cf2a3f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa43740c773e6ebf1 -DITHARE_KSCOPE_SEED2=0x984f585063cf2a3f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 23/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x41ae045dee1fc503 -DITHARE_KSCOPE_SEED2=0xce6ac29147c3b8e1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x41ae045dee1fc503 -DITHARE_KSCOPE_SEED2=0xce6ac29147c3b8e1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x41ae045dee1fc503 -DITHARE_KSCOPE_SEED2=0xce6ac29147c3b8e1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 24/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcf74267b54b0e934 -DITHARE_KSCOPE_SEED2=0xbb42787fc31c563a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcf74267b54b0e934 -DITHARE_KSCOPE_SEED2=0xbb42787fc31c563a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcf74267b54b0e934 -DITHARE_KSCOPE_SEED2=0xbb42787fc31c563a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 25/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xf07bae52c1ae0bba -DITHARE_KSCOPE_SEED2=0xc0e0e3e563911edc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xf07bae52c1ae0bba -DITHARE_KSCOPE_SEED2=0xc0e0e3e563911edc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xf07bae52c1ae0bba -DITHARE_KSCOPE_SEED2=0xc0e0e3e563911edc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 26/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdbd88e500e37fe85 -DITHARE_KSCOPE_SEED2=0x5df94aea4b3b359d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdbd88e500e37fe85 -DITHARE_KSCOPE_SEED2=0x5df94aea4b3b359d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdbd88e500e37fe85 -DITHARE_KSCOPE_SEED2=0x5df94aea4b3b359d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 27/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x13a20aeb29dddf95 -DITHARE_KSCOPE_SEED2=0x81b170910f71df0b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x13a20aeb29dddf95 -DITHARE_KSCOPE_SEED2=0x81b170910f71df0b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x13a20aeb29dddf95 -DITHARE_KSCOPE_SEED2=0x81b170910f71df0b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 28/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc76ba30fd94a7de7 -DITHARE_KSCOPE_SEED2=0xd2e11a26dd188d18 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc76ba30fd94a7de7 -DITHARE_KSCOPE_SEED2=0xd2e11a26dd188d18 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc76ba30fd94a7de7 -DITHARE_KSCOPE_SEED2=0xd2e11a26dd188d18 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 29/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xdf1e444f8b0826a8 -DITHARE_KSCOPE_SEED2=0x7501fe13b8758722 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xdf1e444f8b0826a8 -DITHARE_KSCOPE_SEED2=0x7501fe13b8758722 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xdf1e444f8b0826a8 -DITHARE_KSCOPE_SEED2=0x7501fe13b8758722 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 30/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb9bfc6492c7d7f2f -DITHARE_KSCOPE_SEED2=0x045ef1622d70fd60 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb9bfc6492c7d7f2f -DITHARE_KSCOPE_SEED2=0x045ef1622d70fd60 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb9bfc6492c7d7f2f -DITHARE_KSCOPE_SEED2=0x045ef1622d70fd60 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 31/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3d733756d5e9e37e -DITHARE_KSCOPE_SEED2=0x0522bb6323f1dc1a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3d733756d5e9e37e -DITHARE_KSCOPE_SEED2=0x0522bb6323f1dc1a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3d733756d5e9e37e -DITHARE_KSCOPE_SEED2=0x0522bb6323f1dc1a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 32/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3f9628d033c6d1bf -DITHARE_KSCOPE_SEED2=0x21f9060e9a03e615 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3f9628d033c6d1bf -DITHARE_KSCOPE_SEED2=0x21f9060e9a03e615 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3f9628d033c6d1bf -DITHARE_KSCOPE_SEED2=0x21f9060e9a03e615 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 33/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x8994fdae170901bb -DITHARE_KSCOPE_SEED2=0x9317b98d3495e55c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x8994fdae170901bb -DITHARE_KSCOPE_SEED2=0x9317b98d3495e55c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x8994fdae170901bb -DITHARE_KSCOPE_SEED2=0x9317b98d3495e55c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 34/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x098c61e36aba68c1 -DITHARE_KSCOPE_SEED2=0x244f2fb41b4f6ff3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x098c61e36aba68c1 -DITHARE_KSCOPE_SEED2=0x244f2fb41b4f6ff3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x098c61e36aba68c1 -DITHARE_KSCOPE_SEED2=0x244f2fb41b4f6ff3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 35/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x82114a89aaa91693 -DITHARE_KSCOPE_SEED2=0x15d1d03f8f1eb92b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x82114a89aaa91693 -DITHARE_KSCOPE_SEED2=0x15d1d03f8f1eb92b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x82114a89aaa91693 -DITHARE_KSCOPE_SEED2=0x15d1d03f8f1eb92b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 36/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfb439f47103aef15 -DITHARE_KSCOPE_SEED2=0x0881bc3ff95f39ce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfb439f47103aef15 -DITHARE_KSCOPE_SEED2=0x0881bc3ff95f39ce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfb439f47103aef15 -DITHARE_KSCOPE_SEED2=0x0881bc3ff95f39ce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 37/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x6544af6451e3ed3b -DITHARE_KSCOPE_SEED2=0xc69d3cef999eba9e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x6544af6451e3ed3b -DITHARE_KSCOPE_SEED2=0xc69d3cef999eba9e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x6544af6451e3ed3b -DITHARE_KSCOPE_SEED2=0xc69d3cef999eba9e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 38/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x964aa0c57a39ed4b -DITHARE_KSCOPE_SEED2=0xe8bc6d7fe1d524a0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x964aa0c57a39ed4b -DITHARE_KSCOPE_SEED2=0xe8bc6d7fe1d524a0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x964aa0c57a39ed4b -DITHARE_KSCOPE_SEED2=0xe8bc6d7fe1d524a0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 39/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0772a3c3191cf139 -DITHARE_KSCOPE_SEED2=0x3ae3545c3cbbc45d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0772a3c3191cf139 -DITHARE_KSCOPE_SEED2=0x3ae3545c3cbbc45d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0772a3c3191cf139 -DITHARE_KSCOPE_SEED2=0x3ae3545c3cbbc45d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 40/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4c2208cee42ad2d1 -DITHARE_KSCOPE_SEED2=0xe1c01475036ab802 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4c2208cee42ad2d1 -DITHARE_KSCOPE_SEED2=0xe1c01475036ab802 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4c2208cee42ad2d1 -DITHARE_KSCOPE_SEED2=0xe1c01475036ab802 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 41/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xa986fc991083f410 -DITHARE_KSCOPE_SEED2=0xbd3f69350d745aa9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xa986fc991083f410 -DITHARE_KSCOPE_SEED2=0xbd3f69350d745aa9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xa986fc991083f410 -DITHARE_KSCOPE_SEED2=0xbd3f69350d745aa9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 42/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0ca6eb548054d11a -DITHARE_KSCOPE_SEED2=0x79fd7eba39892a28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0ca6eb548054d11a -DITHARE_KSCOPE_SEED2=0x79fd7eba39892a28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0ca6eb548054d11a -DITHARE_KSCOPE_SEED2=0x79fd7eba39892a28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 43/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf28423cdd0e29211 -DITHARE_KSCOPE_SEED2=0xd61f4a0268240f28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf28423cdd0e29211 -DITHARE_KSCOPE_SEED2=0xd61f4a0268240f28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf28423cdd0e29211 -DITHARE_KSCOPE_SEED2=0xd61f4a0268240f28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 44/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4230e611b81b1e68 -DITHARE_KSCOPE_SEED2=0xcf72a918ffe72bc6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4230e611b81b1e68 -DITHARE_KSCOPE_SEED2=0xcf72a918ffe72bc6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4230e611b81b1e68 -DITHARE_KSCOPE_SEED2=0xcf72a918ffe72bc6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 45/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x90dac3e6680626b6 -DITHARE_KSCOPE_SEED2=0x0242927c40c62635 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x90dac3e6680626b6 -DITHARE_KSCOPE_SEED2=0x0242927c40c62635 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x90dac3e6680626b6 -DITHARE_KSCOPE_SEED2=0x0242927c40c62635 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 46/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8e5b509df532c674 -DITHARE_KSCOPE_SEED2=0x1def57774d8e371e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8e5b509df532c674 -DITHARE_KSCOPE_SEED2=0x1def57774d8e371e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8e5b509df532c674 -DITHARE_KSCOPE_SEED2=0x1def57774d8e371e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 47/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6d9d9d21a535f82d -DITHARE_KSCOPE_SEED2=0x01a96c0ad81b7321 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6d9d9d21a535f82d -DITHARE_KSCOPE_SEED2=0x01a96c0ad81b7321 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6d9d9d21a535f82d -DITHARE_KSCOPE_SEED2=0x01a96c0ad81b7321 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 48/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa3b14c10ffe93c74 -DITHARE_KSCOPE_SEED2=0x5b22fd7a717679a0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa3b14c10ffe93c74 -DITHARE_KSCOPE_SEED2=0x5b22fd7a717679a0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa3b14c10ffe93c74 -DITHARE_KSCOPE_SEED2=0x5b22fd7a717679a0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 49/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x443199e713c1d2df -DITHARE_KSCOPE_SEED2=0xd3e3dda1d3a031b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x443199e713c1d2df -DITHARE_KSCOPE_SEED2=0xd3e3dda1d3a031b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x443199e713c1d2df -DITHARE_KSCOPE_SEED2=0xd3e3dda1d3a031b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 50/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8d30dcdf96de45b6 -DITHARE_KSCOPE_SEED2=0xe25eda432bb05b50 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8d30dcdf96de45b6 -DITHARE_KSCOPE_SEED2=0xe25eda432bb05b50 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8d30dcdf96de45b6 -DITHARE_KSCOPE_SEED2=0xe25eda432bb05b50 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 51/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1b39d4c19ca03353 -DITHARE_KSCOPE_SEED2=0xdb42fe3780b30586 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1b39d4c19ca03353 -DITHARE_KSCOPE_SEED2=0xdb42fe3780b30586 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1b39d4c19ca03353 -DITHARE_KSCOPE_SEED2=0xdb42fe3780b30586 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 52/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x620ee6db6d31a727 -DITHARE_KSCOPE_SEED2=0x3de76408c97edf2d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x620ee6db6d31a727 -DITHARE_KSCOPE_SEED2=0x3de76408c97edf2d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x620ee6db6d31a727 -DITHARE_KSCOPE_SEED2=0x3de76408c97edf2d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 53/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xfabab1cbeb234bfb -DITHARE_KSCOPE_SEED2=0x31f66f49488de853 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xfabab1cbeb234bfb -DITHARE_KSCOPE_SEED2=0x31f66f49488de853 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xfabab1cbeb234bfb -DITHARE_KSCOPE_SEED2=0x31f66f49488de853 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 54/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf9a1644cc74cc5c9 -DITHARE_KSCOPE_SEED2=0x241aa6f240e9a09c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf9a1644cc74cc5c9 -DITHARE_KSCOPE_SEED2=0x241aa6f240e9a09c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf9a1644cc74cc5c9 -DITHARE_KSCOPE_SEED2=0x241aa6f240e9a09c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 55/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa98ab6203d6c3d91 -DITHARE_KSCOPE_SEED2=0xc784a96e1a79da24 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa98ab6203d6c3d91 -DITHARE_KSCOPE_SEED2=0xc784a96e1a79da24 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa98ab6203d6c3d91 -DITHARE_KSCOPE_SEED2=0xc784a96e1a79da24 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 56/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x203e2fb7b4638a73 -DITHARE_KSCOPE_SEED2=0xd0adf9d8ff8643aa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x203e2fb7b4638a73 -DITHARE_KSCOPE_SEED2=0xd0adf9d8ff8643aa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x203e2fb7b4638a73 -DITHARE_KSCOPE_SEED2=0xd0adf9d8ff8643aa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 57/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xf3a7a9c3d6af1396 -DITHARE_KSCOPE_SEED2=0x4db8d61c183e4072 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xf3a7a9c3d6af1396 -DITHARE_KSCOPE_SEED2=0x4db8d61c183e4072 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xf3a7a9c3d6af1396 -DITHARE_KSCOPE_SEED2=0x4db8d61c183e4072 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 58/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb196abef002745b3 -DITHARE_KSCOPE_SEED2=0x065bcd2d610700e7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb196abef002745b3 -DITHARE_KSCOPE_SEED2=0x065bcd2d610700e7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb196abef002745b3 -DITHARE_KSCOPE_SEED2=0x065bcd2d610700e7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 59/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x43ceb15aec6c8277 -DITHARE_KSCOPE_SEED2=0x6e0562c9026a0f3f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x43ceb15aec6c8277 -DITHARE_KSCOPE_SEED2=0x6e0562c9026a0f3f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x43ceb15aec6c8277 -DITHARE_KSCOPE_SEED2=0x6e0562c9026a0f3f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 60/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x160961cb8021ace1 -DITHARE_KSCOPE_SEED2=0x4dfbc6c5410828b2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x160961cb8021ace1 -DITHARE_KSCOPE_SEED2=0x4dfbc6c5410828b2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x160961cb8021ace1 -DITHARE_KSCOPE_SEED2=0x4dfbc6c5410828b2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 61/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xdbc33216867a0adb -DITHARE_KSCOPE_SEED2=0x6d3c52077cc1f907 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xdbc33216867a0adb -DITHARE_KSCOPE_SEED2=0x6d3c52077cc1f907 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xdbc33216867a0adb -DITHARE_KSCOPE_SEED2=0x6d3c52077cc1f907 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 62/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x21b87cd617f7ab86 -DITHARE_KSCOPE_SEED2=0xe69c7dd81a237850 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x21b87cd617f7ab86 -DITHARE_KSCOPE_SEED2=0xe69c7dd81a237850 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x21b87cd617f7ab86 -DITHARE_KSCOPE_SEED2=0xe69c7dd81a237850 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 63/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x40e895add409adc5 -DITHARE_KSCOPE_SEED2=0x6af6dcebda3c9878 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x40e895add409adc5 -DITHARE_KSCOPE_SEED2=0x6af6dcebda3c9878 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x40e895add409adc5 -DITHARE_KSCOPE_SEED2=0x6af6dcebda3c9878 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 64/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf9437fc7add236e1 -DITHARE_KSCOPE_SEED2=0x9a7798768d3e5ddc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf9437fc7add236e1 -DITHARE_KSCOPE_SEED2=0x9a7798768d3e5ddc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf9437fc7add236e1 -DITHARE_KSCOPE_SEED2=0x9a7798768d3e5ddc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 65/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x9e795ef4380fd85f -DITHARE_KSCOPE_SEED2=0xeeb2acbf353da79a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x9e795ef4380fd85f -DITHARE_KSCOPE_SEED2=0xeeb2acbf353da79a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x9e795ef4380fd85f -DITHARE_KSCOPE_SEED2=0xeeb2acbf353da79a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 66/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2df52979476bb0ea -DITHARE_KSCOPE_SEED2=0xe49696840e38c073 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2df52979476bb0ea -DITHARE_KSCOPE_SEED2=0xe49696840e38c073 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2df52979476bb0ea -DITHARE_KSCOPE_SEED2=0xe49696840e38c073 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 67/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x58f0062eaddf9ff7 -DITHARE_KSCOPE_SEED2=0xc96ea5c65033041d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x58f0062eaddf9ff7 -DITHARE_KSCOPE_SEED2=0xc96ea5c65033041d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x58f0062eaddf9ff7 -DITHARE_KSCOPE_SEED2=0xc96ea5c65033041d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 68/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaf61883aa8aab8ea -DITHARE_KSCOPE_SEED2=0xcd17dadf53eac643 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaf61883aa8aab8ea -DITHARE_KSCOPE_SEED2=0xcd17dadf53eac643 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaf61883aa8aab8ea -DITHARE_KSCOPE_SEED2=0xcd17dadf53eac643 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 69/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x3e8238c450064fe1 -DITHARE_KSCOPE_SEED2=0x69b1103bd431e0d5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x3e8238c450064fe1 -DITHARE_KSCOPE_SEED2=0x69b1103bd431e0d5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x3e8238c450064fe1 -DITHARE_KSCOPE_SEED2=0x69b1103bd431e0d5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 70/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x054b9e6486773f61 -DITHARE_KSCOPE_SEED2=0x2f053ee4cad1eb12 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x054b9e6486773f61 -DITHARE_KSCOPE_SEED2=0x2f053ee4cad1eb12 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x054b9e6486773f61 -DITHARE_KSCOPE_SEED2=0x2f053ee4cad1eb12 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 71/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf4c4cec03929b321 -DITHARE_KSCOPE_SEED2=0xc57b3ad49c28cbe7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf4c4cec03929b321 -DITHARE_KSCOPE_SEED2=0xc57b3ad49c28cbe7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf4c4cec03929b321 -DITHARE_KSCOPE_SEED2=0xc57b3ad49c28cbe7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 72/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc2038855936f8b4 -DITHARE_KSCOPE_SEED2=0xc6663c6c460e2006 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc2038855936f8b4 -DITHARE_KSCOPE_SEED2=0xc6663c6c460e2006 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc2038855936f8b4 -DITHARE_KSCOPE_SEED2=0xc6663c6c460e2006 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 73/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x6e47eab171d540f3 -DITHARE_KSCOPE_SEED2=0x6cf327a1ee6d8c51 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x6e47eab171d540f3 -DITHARE_KSCOPE_SEED2=0x6cf327a1ee6d8c51 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x6e47eab171d540f3 -DITHARE_KSCOPE_SEED2=0x6cf327a1ee6d8c51 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 74/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x33728e314bb83a5d -DITHARE_KSCOPE_SEED2=0xc490e59e3c63c4b0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x33728e314bb83a5d -DITHARE_KSCOPE_SEED2=0xc490e59e3c63c4b0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x33728e314bb83a5d -DITHARE_KSCOPE_SEED2=0xc490e59e3c63c4b0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 75/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f478ebb188ce350 -DITHARE_KSCOPE_SEED2=0x2a5d5d0de1ac9b59 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f478ebb188ce350 -DITHARE_KSCOPE_SEED2=0x2a5d5d0de1ac9b59 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f478ebb188ce350 -DITHARE_KSCOPE_SEED2=0x2a5d5d0de1ac9b59 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 76/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc94f3ac8b39915fb -DITHARE_KSCOPE_SEED2=0x52eb992121c6cda0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc94f3ac8b39915fb -DITHARE_KSCOPE_SEED2=0x52eb992121c6cda0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc94f3ac8b39915fb -DITHARE_KSCOPE_SEED2=0x52eb992121c6cda0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 77/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc6f98328f1ace462 -DITHARE_KSCOPE_SEED2=0xbcdfd6010e80e137 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc6f98328f1ace462 -DITHARE_KSCOPE_SEED2=0xbcdfd6010e80e137 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc6f98328f1ace462 -DITHARE_KSCOPE_SEED2=0xbcdfd6010e80e137 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 78/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6ad565f5a9f1f528 -DITHARE_KSCOPE_SEED2=0x1eec558595146cbc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6ad565f5a9f1f528 -DITHARE_KSCOPE_SEED2=0x1eec558595146cbc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6ad565f5a9f1f528 -DITHARE_KSCOPE_SEED2=0x1eec558595146cbc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 79/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa0f3ff1ddf5c6221 -DITHARE_KSCOPE_SEED2=0x11136dfb11d80455 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa0f3ff1ddf5c6221 -DITHARE_KSCOPE_SEED2=0x11136dfb11d80455 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa0f3ff1ddf5c6221 -DITHARE_KSCOPE_SEED2=0x11136dfb11d80455 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 80/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb9a0dd956f5d6a4c -DITHARE_KSCOPE_SEED2=0xf0f10ab7c3598057 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb9a0dd956f5d6a4c -DITHARE_KSCOPE_SEED2=0xf0f10ab7c3598057 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb9a0dd956f5d6a4c -DITHARE_KSCOPE_SEED2=0xf0f10ab7c3598057 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 81/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xe892f01b2faa5929 -DITHARE_KSCOPE_SEED2=0x54627006f629cf40 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xe892f01b2faa5929 -DITHARE_KSCOPE_SEED2=0x54627006f629cf40 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xe892f01b2faa5929 -DITHARE_KSCOPE_SEED2=0x54627006f629cf40 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 82/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x77679314bf99177e -DITHARE_KSCOPE_SEED2=0x027448191e27b5fb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x77679314bf99177e -DITHARE_KSCOPE_SEED2=0x027448191e27b5fb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x77679314bf99177e -DITHARE_KSCOPE_SEED2=0x027448191e27b5fb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 83/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8a28a8c73eb510ca -DITHARE_KSCOPE_SEED2=0x4c3fee88103b1e50 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8a28a8c73eb510ca -DITHARE_KSCOPE_SEED2=0x4c3fee88103b1e50 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8a28a8c73eb510ca -DITHARE_KSCOPE_SEED2=0x4c3fee88103b1e50 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 84/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x895ae7745ff24bbd -DITHARE_KSCOPE_SEED2=0x4f7f81c6a4e21e87 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x895ae7745ff24bbd -DITHARE_KSCOPE_SEED2=0x4f7f81c6a4e21e87 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x895ae7745ff24bbd -DITHARE_KSCOPE_SEED2=0x4f7f81c6a4e21e87 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 85/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x0bc722898d72ded5 -DITHARE_KSCOPE_SEED2=0xa5ff1ad89fcb170d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x0bc722898d72ded5 -DITHARE_KSCOPE_SEED2=0xa5ff1ad89fcb170d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x0bc722898d72ded5 -DITHARE_KSCOPE_SEED2=0xa5ff1ad89fcb170d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 86/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x25f8ab91b1fe8a2c -DITHARE_KSCOPE_SEED2=0xae9ee9c6a3c5c083 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x25f8ab91b1fe8a2c -DITHARE_KSCOPE_SEED2=0xae9ee9c6a3c5c083 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x25f8ab91b1fe8a2c -DITHARE_KSCOPE_SEED2=0xae9ee9c6a3c5c083 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 87/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x40dd5c67b7b93d38 -DITHARE_KSCOPE_SEED2=0x7cc4f3027e101625 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x40dd5c67b7b93d38 -DITHARE_KSCOPE_SEED2=0x7cc4f3027e101625 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x40dd5c67b7b93d38 -DITHARE_KSCOPE_SEED2=0x7cc4f3027e101625 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 88/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc56356013fa25807 -DITHARE_KSCOPE_SEED2=0xb2213a9919c6f052 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc56356013fa25807 -DITHARE_KSCOPE_SEED2=0xb2213a9919c6f052 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc56356013fa25807 -DITHARE_KSCOPE_SEED2=0xb2213a9919c6f052 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 89/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x391947ae96709ad0 -DITHARE_KSCOPE_SEED2=0x3c946d3c156d4687 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x391947ae96709ad0 -DITHARE_KSCOPE_SEED2=0x3c946d3c156d4687 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x391947ae96709ad0 -DITHARE_KSCOPE_SEED2=0x3c946d3c156d4687 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 90/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb55a1df91a7bf32 -DITHARE_KSCOPE_SEED2=0x7492b8a79d50973a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb55a1df91a7bf32 -DITHARE_KSCOPE_SEED2=0x7492b8a79d50973a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb55a1df91a7bf32 -DITHARE_KSCOPE_SEED2=0x7492b8a79d50973a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 91/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1f579a2784a87978 -DITHARE_KSCOPE_SEED2=0x7c4e065527fe4e3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1f579a2784a87978 -DITHARE_KSCOPE_SEED2=0x7c4e065527fe4e3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1f579a2784a87978 -DITHARE_KSCOPE_SEED2=0x7c4e065527fe4e3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 92/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x20402c87c4e52dd9 -DITHARE_KSCOPE_SEED2=0xba7564891bcbc26c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x20402c87c4e52dd9 -DITHARE_KSCOPE_SEED2=0xba7564891bcbc26c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x20402c87c4e52dd9 -DITHARE_KSCOPE_SEED2=0xba7564891bcbc26c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 93/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xa6be06eca8441f6f -DITHARE_KSCOPE_SEED2=0xab57ba7ee4c9d595 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xa6be06eca8441f6f -DITHARE_KSCOPE_SEED2=0xab57ba7ee4c9d595 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xa6be06eca8441f6f -DITHARE_KSCOPE_SEED2=0xab57ba7ee4c9d595 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 94/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc4a9158b236adf1 -DITHARE_KSCOPE_SEED2=0x1a1b838ae257d619 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc4a9158b236adf1 -DITHARE_KSCOPE_SEED2=0x1a1b838ae257d619 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc4a9158b236adf1 -DITHARE_KSCOPE_SEED2=0x1a1b838ae257d619 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 95/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x10376029e872b9d4 -DITHARE_KSCOPE_SEED2=0xe97d7cc12cac47f2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x10376029e872b9d4 -DITHARE_KSCOPE_SEED2=0xe97d7cc12cac47f2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x10376029e872b9d4 -DITHARE_KSCOPE_SEED2=0xe97d7cc12cac47f2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 96/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf14e68a92c8524f9 -DITHARE_KSCOPE_SEED2=0x32b349a0ccae0a1e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf14e68a92c8524f9 -DITHARE_KSCOPE_SEED2=0x32b349a0ccae0a1e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf14e68a92c8524f9 -DITHARE_KSCOPE_SEED2=0x32b349a0ccae0a1e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 97/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x48b793aa11aeb630 -DITHARE_KSCOPE_SEED2=0xbe407537b85b5832 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x48b793aa11aeb630 -DITHARE_KSCOPE_SEED2=0xbe407537b85b5832 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x48b793aa11aeb630 -DITHARE_KSCOPE_SEED2=0xbe407537b85b5832 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 98/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x722e73680f7ff584 -DITHARE_KSCOPE_SEED2=0x2f440842aac00cfa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x722e73680f7ff584 -DITHARE_KSCOPE_SEED2=0x2f440842aac00cfa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x722e73680f7ff584 -DITHARE_KSCOPE_SEED2=0x2f440842aac00cfa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 99/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb1bf6d69da639e61 -DITHARE_KSCOPE_SEED2=0x292fa9dd178f58c7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb1bf6d69da639e61 -DITHARE_KSCOPE_SEED2=0x292fa9dd178f58c7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb1bf6d69da639e61 -DITHARE_KSCOPE_SEED2=0x292fa9dd178f58c7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 100/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0054cb937fecc4f1 -DITHARE_KSCOPE_SEED2=0x0e4cf9ca68784428 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0054cb937fecc4f1 -DITHARE_KSCOPE_SEED2=0x0e4cf9ca68784428 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0054cb937fecc4f1 -DITHARE_KSCOPE_SEED2=0x0e4cf9ca68784428 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 101/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x421c5c307ed1dbbe -DITHARE_KSCOPE_SEED2=0xa897030e90bcbe91 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x421c5c307ed1dbbe -DITHARE_KSCOPE_SEED2=0xa897030e90bcbe91 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x421c5c307ed1dbbe -DITHARE_KSCOPE_SEED2=0xa897030e90bcbe91 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 102/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x16dac00a62ce15e2 -DITHARE_KSCOPE_SEED2=0xfc78d7c5b0121094 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x16dac00a62ce15e2 -DITHARE_KSCOPE_SEED2=0xfc78d7c5b0121094 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x16dac00a62ce15e2 -DITHARE_KSCOPE_SEED2=0xfc78d7c5b0121094 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 103/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc86c26e890af6d09 -DITHARE_KSCOPE_SEED2=0x5db2b76597378318 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc86c26e890af6d09 -DITHARE_KSCOPE_SEED2=0x5db2b76597378318 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc86c26e890af6d09 -DITHARE_KSCOPE_SEED2=0x5db2b76597378318 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 104/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85c5d3769a6cae60 -DITHARE_KSCOPE_SEED2=0x7bc974b060ddecb5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85c5d3769a6cae60 -DITHARE_KSCOPE_SEED2=0x7bc974b060ddecb5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85c5d3769a6cae60 -DITHARE_KSCOPE_SEED2=0x7bc974b060ddecb5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 105/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x5a04916783746f2a -DITHARE_KSCOPE_SEED2=0x0a6d431deff9612b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x5a04916783746f2a -DITHARE_KSCOPE_SEED2=0x0a6d431deff9612b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x5a04916783746f2a -DITHARE_KSCOPE_SEED2=0x0a6d431deff9612b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 106/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcaf436a12fb89cda -DITHARE_KSCOPE_SEED2=0x9ee7d95de422cf84 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcaf436a12fb89cda -DITHARE_KSCOPE_SEED2=0x9ee7d95de422cf84 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcaf436a12fb89cda -DITHARE_KSCOPE_SEED2=0x9ee7d95de422cf84 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 107/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb0b5b98978bcc665 -DITHARE_KSCOPE_SEED2=0x1353acb748167a22 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb0b5b98978bcc665 -DITHARE_KSCOPE_SEED2=0x1353acb748167a22 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb0b5b98978bcc665 -DITHARE_KSCOPE_SEED2=0x1353acb748167a22 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 108/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x551aa8d6ec54089e -DITHARE_KSCOPE_SEED2=0x74a41ce1d9939dc5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x551aa8d6ec54089e -DITHARE_KSCOPE_SEED2=0x74a41ce1d9939dc5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x551aa8d6ec54089e -DITHARE_KSCOPE_SEED2=0x74a41ce1d9939dc5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 109/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x1ccbbf413d20e84a -DITHARE_KSCOPE_SEED2=0x4477578fa7b99102 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x1ccbbf413d20e84a -DITHARE_KSCOPE_SEED2=0x4477578fa7b99102 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x1ccbbf413d20e84a -DITHARE_KSCOPE_SEED2=0x4477578fa7b99102 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 110/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbd90d88987467ce4 -DITHARE_KSCOPE_SEED2=0x82b1742cff1972ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbd90d88987467ce4 -DITHARE_KSCOPE_SEED2=0x82b1742cff1972ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbd90d88987467ce4 -DITHARE_KSCOPE_SEED2=0x82b1742cff1972ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 111/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xebbd07339c41c110 -DITHARE_KSCOPE_SEED2=0x6cfd47996d462cf8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xebbd07339c41c110 -DITHARE_KSCOPE_SEED2=0x6cfd47996d462cf8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xebbd07339c41c110 -DITHARE_KSCOPE_SEED2=0x6cfd47996d462cf8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 112/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3192948348f2d1fe -DITHARE_KSCOPE_SEED2=0x956c737395ed1708 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3192948348f2d1fe -DITHARE_KSCOPE_SEED2=0x956c737395ed1708 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3192948348f2d1fe -DITHARE_KSCOPE_SEED2=0x956c737395ed1708 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 113/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x768990275e8939ed -DITHARE_KSCOPE_SEED2=0x8df9de4f1380ea2b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x768990275e8939ed -DITHARE_KSCOPE_SEED2=0x8df9de4f1380ea2b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x768990275e8939ed -DITHARE_KSCOPE_SEED2=0x8df9de4f1380ea2b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 114/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe6e3bdf6605ab597 -DITHARE_KSCOPE_SEED2=0x9ccb4861dc569855 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe6e3bdf6605ab597 -DITHARE_KSCOPE_SEED2=0x9ccb4861dc569855 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe6e3bdf6605ab597 -DITHARE_KSCOPE_SEED2=0x9ccb4861dc569855 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 115/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb9c2334a1b511c55 -DITHARE_KSCOPE_SEED2=0x8990f834862ea8f6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb9c2334a1b511c55 -DITHARE_KSCOPE_SEED2=0x8990f834862ea8f6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb9c2334a1b511c55 -DITHARE_KSCOPE_SEED2=0x8990f834862ea8f6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 116/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3429f89f1b60211d -DITHARE_KSCOPE_SEED2=0x1993a87f67e81dc4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3429f89f1b60211d -DITHARE_KSCOPE_SEED2=0x1993a87f67e81dc4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3429f89f1b60211d -DITHARE_KSCOPE_SEED2=0x1993a87f67e81dc4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 117/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xaeb04387544dafc0 -DITHARE_KSCOPE_SEED2=0xdb1125a524ee29a7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xaeb04387544dafc0 -DITHARE_KSCOPE_SEED2=0xdb1125a524ee29a7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xaeb04387544dafc0 -DITHARE_KSCOPE_SEED2=0xdb1125a524ee29a7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 118/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1642a12d21ea1e77 -DITHARE_KSCOPE_SEED2=0x88186995c3140901 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1642a12d21ea1e77 -DITHARE_KSCOPE_SEED2=0x88186995c3140901 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1642a12d21ea1e77 -DITHARE_KSCOPE_SEED2=0x88186995c3140901 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 119/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x61cc0d7e5e08454f -DITHARE_KSCOPE_SEED2=0xcbb3aa83b528059d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x61cc0d7e5e08454f -DITHARE_KSCOPE_SEED2=0xcbb3aa83b528059d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x61cc0d7e5e08454f -DITHARE_KSCOPE_SEED2=0xcbb3aa83b528059d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 120/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8627ca23c45a7d0c -DITHARE_KSCOPE_SEED2=0x58e9bea3f389f9cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8627ca23c45a7d0c -DITHARE_KSCOPE_SEED2=0x58e9bea3f389f9cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8627ca23c45a7d0c -DITHARE_KSCOPE_SEED2=0x58e9bea3f389f9cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 121/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x88e3150003829620 -DITHARE_KSCOPE_SEED2=0x583448d7d07dda69 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x88e3150003829620 -DITHARE_KSCOPE_SEED2=0x583448d7d07dda69 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x88e3150003829620 -DITHARE_KSCOPE_SEED2=0x583448d7d07dda69 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 122/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x80cb713f6116300a -DITHARE_KSCOPE_SEED2=0xad32b1b33c342fcc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x80cb713f6116300a -DITHARE_KSCOPE_SEED2=0xad32b1b33c342fcc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x80cb713f6116300a -DITHARE_KSCOPE_SEED2=0xad32b1b33c342fcc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 123/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb7a9062b7d34f62f -DITHARE_KSCOPE_SEED2=0x2e0ba81b1a31093c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb7a9062b7d34f62f -DITHARE_KSCOPE_SEED2=0x2e0ba81b1a31093c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb7a9062b7d34f62f -DITHARE_KSCOPE_SEED2=0x2e0ba81b1a31093c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 124/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x091bc05bdee21c65 -DITHARE_KSCOPE_SEED2=0x2ba79e3547a1d3df -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x091bc05bdee21c65 -DITHARE_KSCOPE_SEED2=0x2ba79e3547a1d3df -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x091bc05bdee21c65 -DITHARE_KSCOPE_SEED2=0x2ba79e3547a1d3df -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 125/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xbb08102a21d173c5 -DITHARE_KSCOPE_SEED2=0x9fa49f27abf30700 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xbb08102a21d173c5 -DITHARE_KSCOPE_SEED2=0x9fa49f27abf30700 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xbb08102a21d173c5 -DITHARE_KSCOPE_SEED2=0x9fa49f27abf30700 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 126/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc4e941ef6d220f88 -DITHARE_KSCOPE_SEED2=0x4b790b635454b2cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc4e941ef6d220f88 -DITHARE_KSCOPE_SEED2=0x4b790b635454b2cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc4e941ef6d220f88 -DITHARE_KSCOPE_SEED2=0x4b790b635454b2cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 127/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x08a42805182acd22 -DITHARE_KSCOPE_SEED2=0x78d143dae6dea22d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x08a42805182acd22 -DITHARE_KSCOPE_SEED2=0x78d143dae6dea22d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x08a42805182acd22 -DITHARE_KSCOPE_SEED2=0x78d143dae6dea22d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 128/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x441d70aed2fd8541 -DITHARE_KSCOPE_SEED2=0xb2301c27bc7ec232 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x441d70aed2fd8541 -DITHARE_KSCOPE_SEED2=0xb2301c27bc7ec232 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x441d70aed2fd8541 -DITHARE_KSCOPE_SEED2=0xb2301c27bc7ec232 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 129/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x62a8edb58f276015 -DITHARE_KSCOPE_SEED2=0x61bffcd0ec84df6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x62a8edb58f276015 -DITHARE_KSCOPE_SEED2=0x61bffcd0ec84df6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x62a8edb58f276015 -DITHARE_KSCOPE_SEED2=0x61bffcd0ec84df6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 130/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x66c59aeec331398d -DITHARE_KSCOPE_SEED2=0x4fc1ffada2c5c043 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x66c59aeec331398d -DITHARE_KSCOPE_SEED2=0x4fc1ffada2c5c043 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x66c59aeec331398d -DITHARE_KSCOPE_SEED2=0x4fc1ffada2c5c043 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 131/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5da96266f2f26a95 -DITHARE_KSCOPE_SEED2=0xf4388e543220f78c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5da96266f2f26a95 -DITHARE_KSCOPE_SEED2=0xf4388e543220f78c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5da96266f2f26a95 -DITHARE_KSCOPE_SEED2=0xf4388e543220f78c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 132/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1d712a7cc2122f88 -DITHARE_KSCOPE_SEED2=0x802f8316ff51763a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1d712a7cc2122f88 -DITHARE_KSCOPE_SEED2=0x802f8316ff51763a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1d712a7cc2122f88 -DITHARE_KSCOPE_SEED2=0x802f8316ff51763a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 133/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x10a002e16292ad88 -DITHARE_KSCOPE_SEED2=0xd9547c3b0502d592 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x10a002e16292ad88 -DITHARE_KSCOPE_SEED2=0xd9547c3b0502d592 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x10a002e16292ad88 -DITHARE_KSCOPE_SEED2=0xd9547c3b0502d592 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 134/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x67f62b773690e027 -DITHARE_KSCOPE_SEED2=0x1e0376c336cbeaa9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x67f62b773690e027 -DITHARE_KSCOPE_SEED2=0x1e0376c336cbeaa9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x67f62b773690e027 -DITHARE_KSCOPE_SEED2=0x1e0376c336cbeaa9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 135/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa9b2d2d610f9f6c3 -DITHARE_KSCOPE_SEED2=0x42c17beeac2ab1c7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa9b2d2d610f9f6c3 -DITHARE_KSCOPE_SEED2=0x42c17beeac2ab1c7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa9b2d2d610f9f6c3 -DITHARE_KSCOPE_SEED2=0x42c17beeac2ab1c7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 136/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x27858034bd2246f0 -DITHARE_KSCOPE_SEED2=0x39b06487a7eccb52 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x27858034bd2246f0 -DITHARE_KSCOPE_SEED2=0x39b06487a7eccb52 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x27858034bd2246f0 -DITHARE_KSCOPE_SEED2=0x39b06487a7eccb52 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 137/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x9169247a9a1c964b -DITHARE_KSCOPE_SEED2=0xc3d44ee161005bf1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x9169247a9a1c964b -DITHARE_KSCOPE_SEED2=0xc3d44ee161005bf1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x9169247a9a1c964b -DITHARE_KSCOPE_SEED2=0xc3d44ee161005bf1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 138/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x62f142ab0ec8739c -DITHARE_KSCOPE_SEED2=0x67b1f15ff736a8d4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x62f142ab0ec8739c -DITHARE_KSCOPE_SEED2=0x67b1f15ff736a8d4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x62f142ab0ec8739c -DITHARE_KSCOPE_SEED2=0x67b1f15ff736a8d4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 139/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa84f546ee013da69 -DITHARE_KSCOPE_SEED2=0xf6f7e3a92454ce22 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa84f546ee013da69 -DITHARE_KSCOPE_SEED2=0xf6f7e3a92454ce22 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa84f546ee013da69 -DITHARE_KSCOPE_SEED2=0xf6f7e3a92454ce22 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 140/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x20ade04116ff79a9 -DITHARE_KSCOPE_SEED2=0x06b213c750f28040 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x20ade04116ff79a9 -DITHARE_KSCOPE_SEED2=0x06b213c750f28040 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x20ade04116ff79a9 -DITHARE_KSCOPE_SEED2=0x06b213c750f28040 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 141/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x71755085a55b985e -DITHARE_KSCOPE_SEED2=0x08c2aae618e04f28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x71755085a55b985e -DITHARE_KSCOPE_SEED2=0x08c2aae618e04f28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x71755085a55b985e -DITHARE_KSCOPE_SEED2=0x08c2aae618e04f28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 142/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf7ab4634f7a11b29 -DITHARE_KSCOPE_SEED2=0x9b909a94a12d0bf7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf7ab4634f7a11b29 -DITHARE_KSCOPE_SEED2=0x9b909a94a12d0bf7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf7ab4634f7a11b29 -DITHARE_KSCOPE_SEED2=0x9b909a94a12d0bf7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 143/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc418777968819945 -DITHARE_KSCOPE_SEED2=0x64de00826eb12b05 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc418777968819945 -DITHARE_KSCOPE_SEED2=0x64de00826eb12b05 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc418777968819945 -DITHARE_KSCOPE_SEED2=0x64de00826eb12b05 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 144/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x53929fdec1639302 -DITHARE_KSCOPE_SEED2=0x77016a9351262ddc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x53929fdec1639302 -DITHARE_KSCOPE_SEED2=0x77016a9351262ddc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x53929fdec1639302 -DITHARE_KSCOPE_SEED2=0x77016a9351262ddc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 145/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb262585f4981ffe1 -DITHARE_KSCOPE_SEED2=0x95364edc3474cfa8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb262585f4981ffe1 -DITHARE_KSCOPE_SEED2=0x95364edc3474cfa8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb262585f4981ffe1 -DITHARE_KSCOPE_SEED2=0x95364edc3474cfa8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 146/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8cbf7324f141fba7 -DITHARE_KSCOPE_SEED2=0x10de4eb501b454bc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8cbf7324f141fba7 -DITHARE_KSCOPE_SEED2=0x10de4eb501b454bc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8cbf7324f141fba7 -DITHARE_KSCOPE_SEED2=0x10de4eb501b454bc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 147/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbd76ae988d25310 -DITHARE_KSCOPE_SEED2=0x74e6556689a4404d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbd76ae988d25310 -DITHARE_KSCOPE_SEED2=0x74e6556689a4404d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbd76ae988d25310 -DITHARE_KSCOPE_SEED2=0x74e6556689a4404d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 148/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa6c81278dca43794 -DITHARE_KSCOPE_SEED2=0x5452b24e9864589f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa6c81278dca43794 -DITHARE_KSCOPE_SEED2=0x5452b24e9864589f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa6c81278dca43794 -DITHARE_KSCOPE_SEED2=0x5452b24e9864589f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 149/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x6a8b635db08c0995 -DITHARE_KSCOPE_SEED2=0x40b451479df75ccb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x6a8b635db08c0995 -DITHARE_KSCOPE_SEED2=0x40b451479df75ccb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x6a8b635db08c0995 -DITHARE_KSCOPE_SEED2=0x40b451479df75ccb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 150/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5d79ead1f487ca15 -DITHARE_KSCOPE_SEED2=0xe008b7b834e6b682 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5d79ead1f487ca15 -DITHARE_KSCOPE_SEED2=0xe008b7b834e6b682 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5d79ead1f487ca15 -DITHARE_KSCOPE_SEED2=0xe008b7b834e6b682 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 151/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x83cdeacfdae1dc63 -DITHARE_KSCOPE_SEED2=0xa4709dcea148ac99 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x83cdeacfdae1dc63 -DITHARE_KSCOPE_SEED2=0xa4709dcea148ac99 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x83cdeacfdae1dc63 -DITHARE_KSCOPE_SEED2=0xa4709dcea148ac99 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 152/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe3c0f2e41c188783 -DITHARE_KSCOPE_SEED2=0x52b08d45d3eef389 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe3c0f2e41c188783 -DITHARE_KSCOPE_SEED2=0x52b08d45d3eef389 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe3c0f2e41c188783 -DITHARE_KSCOPE_SEED2=0x52b08d45d3eef389 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 153/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x0c3efe534711cb96 -DITHARE_KSCOPE_SEED2=0x8520c05481765ccc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x0c3efe534711cb96 -DITHARE_KSCOPE_SEED2=0x8520c05481765ccc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x0c3efe534711cb96 -DITHARE_KSCOPE_SEED2=0x8520c05481765ccc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 154/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x42c5b64903d03454 -DITHARE_KSCOPE_SEED2=0x259e410dc1bc8db3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x42c5b64903d03454 -DITHARE_KSCOPE_SEED2=0x259e410dc1bc8db3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x42c5b64903d03454 -DITHARE_KSCOPE_SEED2=0x259e410dc1bc8db3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 155/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x475fddd6ed362e21 -DITHARE_KSCOPE_SEED2=0x49faf0781c7935de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x475fddd6ed362e21 -DITHARE_KSCOPE_SEED2=0x49faf0781c7935de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x475fddd6ed362e21 -DITHARE_KSCOPE_SEED2=0x49faf0781c7935de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 156/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5df9671db3a23f28 -DITHARE_KSCOPE_SEED2=0xc5939c97a740664c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5df9671db3a23f28 -DITHARE_KSCOPE_SEED2=0xc5939c97a740664c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5df9671db3a23f28 -DITHARE_KSCOPE_SEED2=0xc5939c97a740664c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 157/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xbef7103e62d2daf9 -DITHARE_KSCOPE_SEED2=0x3a2e0f9a4fea7a33 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xbef7103e62d2daf9 -DITHARE_KSCOPE_SEED2=0x3a2e0f9a4fea7a33 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xbef7103e62d2daf9 -DITHARE_KSCOPE_SEED2=0x3a2e0f9a4fea7a33 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 158/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb971a679d2127f8e -DITHARE_KSCOPE_SEED2=0x905f4228f2257daa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb971a679d2127f8e -DITHARE_KSCOPE_SEED2=0x905f4228f2257daa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb971a679d2127f8e -DITHARE_KSCOPE_SEED2=0x905f4228f2257daa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 159/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x819f3bb155319418 -DITHARE_KSCOPE_SEED2=0xdd45e9c8b143aa49 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x819f3bb155319418 -DITHARE_KSCOPE_SEED2=0xdd45e9c8b143aa49 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x819f3bb155319418 -DITHARE_KSCOPE_SEED2=0xdd45e9c8b143aa49 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 160/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4e95f75d3b5ae4be -DITHARE_KSCOPE_SEED2=0x74554d5195d8f73a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4e95f75d3b5ae4be -DITHARE_KSCOPE_SEED2=0x74554d5195d8f73a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4e95f75d3b5ae4be -DITHARE_KSCOPE_SEED2=0x74554d5195d8f73a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 161/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x79c31216b90a2e9a -DITHARE_KSCOPE_SEED2=0xb0c8eab47d97a0b9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x79c31216b90a2e9a -DITHARE_KSCOPE_SEED2=0xb0c8eab47d97a0b9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x79c31216b90a2e9a -DITHARE_KSCOPE_SEED2=0xb0c8eab47d97a0b9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 162/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x20ddf6d6199d06d5 -DITHARE_KSCOPE_SEED2=0xf503615e5691b547 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x20ddf6d6199d06d5 -DITHARE_KSCOPE_SEED2=0xf503615e5691b547 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x20ddf6d6199d06d5 -DITHARE_KSCOPE_SEED2=0xf503615e5691b547 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 163/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb263c15f9cb56e8c -DITHARE_KSCOPE_SEED2=0xe74c958eb85488a8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb263c15f9cb56e8c -DITHARE_KSCOPE_SEED2=0xe74c958eb85488a8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb263c15f9cb56e8c -DITHARE_KSCOPE_SEED2=0xe74c958eb85488a8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 164/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0d214e265a8b46df -DITHARE_KSCOPE_SEED2=0x9097d2fa8d767da4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0d214e265a8b46df -DITHARE_KSCOPE_SEED2=0x9097d2fa8d767da4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0d214e265a8b46df -DITHARE_KSCOPE_SEED2=0x9097d2fa8d767da4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 165/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x6a735dea44a38ff1 -DITHARE_KSCOPE_SEED2=0xb8406277f6e47fb1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x6a735dea44a38ff1 -DITHARE_KSCOPE_SEED2=0xb8406277f6e47fb1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x6a735dea44a38ff1 -DITHARE_KSCOPE_SEED2=0xb8406277f6e47fb1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 166/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa755478a90e7f39f -DITHARE_KSCOPE_SEED2=0xf38e03263b744edc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa755478a90e7f39f -DITHARE_KSCOPE_SEED2=0xf38e03263b744edc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa755478a90e7f39f -DITHARE_KSCOPE_SEED2=0xf38e03263b744edc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 167/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd2ad096f37a75721 -DITHARE_KSCOPE_SEED2=0x0e17001d35d69756 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd2ad096f37a75721 -DITHARE_KSCOPE_SEED2=0x0e17001d35d69756 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd2ad096f37a75721 -DITHARE_KSCOPE_SEED2=0x0e17001d35d69756 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 168/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd30cfc0b7df48471 -DITHARE_KSCOPE_SEED2=0xc45bff3ffda73930 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd30cfc0b7df48471 -DITHARE_KSCOPE_SEED2=0xc45bff3ffda73930 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd30cfc0b7df48471 -DITHARE_KSCOPE_SEED2=0xc45bff3ffda73930 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 169/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xae6303d39883b7ce -DITHARE_KSCOPE_SEED2=0xd704b4f49467be55 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xae6303d39883b7ce -DITHARE_KSCOPE_SEED2=0xd704b4f49467be55 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xae6303d39883b7ce -DITHARE_KSCOPE_SEED2=0xd704b4f49467be55 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 170/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9b75c6f154acdd49 -DITHARE_KSCOPE_SEED2=0xc3b110e47e9b38db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9b75c6f154acdd49 -DITHARE_KSCOPE_SEED2=0xc3b110e47e9b38db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9b75c6f154acdd49 -DITHARE_KSCOPE_SEED2=0xc3b110e47e9b38db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 171/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2e9a5153cc5dea6e -DITHARE_KSCOPE_SEED2=0xa8d03b635db8ee8d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2e9a5153cc5dea6e -DITHARE_KSCOPE_SEED2=0xa8d03b635db8ee8d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2e9a5153cc5dea6e -DITHARE_KSCOPE_SEED2=0xa8d03b635db8ee8d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 172/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc0728a470298ae13 -DITHARE_KSCOPE_SEED2=0x69023ebd80fbf7a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc0728a470298ae13 -DITHARE_KSCOPE_SEED2=0x69023ebd80fbf7a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc0728a470298ae13 -DITHARE_KSCOPE_SEED2=0x69023ebd80fbf7a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 173/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x70e6ed0cf6e58134 -DITHARE_KSCOPE_SEED2=0x7ea47ae02a5c9614 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x70e6ed0cf6e58134 -DITHARE_KSCOPE_SEED2=0x7ea47ae02a5c9614 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x70e6ed0cf6e58134 -DITHARE_KSCOPE_SEED2=0x7ea47ae02a5c9614 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 174/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe8ed84a466108927 -DITHARE_KSCOPE_SEED2=0xa5764963cec902eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe8ed84a466108927 -DITHARE_KSCOPE_SEED2=0xa5764963cec902eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe8ed84a466108927 -DITHARE_KSCOPE_SEED2=0xa5764963cec902eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 175/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x39ca2ca718e8d9e9 -DITHARE_KSCOPE_SEED2=0x1fa7c5300db02432 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x39ca2ca718e8d9e9 -DITHARE_KSCOPE_SEED2=0x1fa7c5300db02432 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x39ca2ca718e8d9e9 -DITHARE_KSCOPE_SEED2=0x1fa7c5300db02432 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 176/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd1aa4961ed0b783b -DITHARE_KSCOPE_SEED2=0xb9c00d0311ec980f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd1aa4961ed0b783b -DITHARE_KSCOPE_SEED2=0xb9c00d0311ec980f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd1aa4961ed0b783b -DITHARE_KSCOPE_SEED2=0xb9c00d0311ec980f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 177/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xe324357014cb3fe7 -DITHARE_KSCOPE_SEED2=0x7793595c19b19223 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xe324357014cb3fe7 -DITHARE_KSCOPE_SEED2=0x7793595c19b19223 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xe324357014cb3fe7 -DITHARE_KSCOPE_SEED2=0x7793595c19b19223 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 178/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x26431406c4238ae4 -DITHARE_KSCOPE_SEED2=0x6f42d9228eb5421b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x26431406c4238ae4 -DITHARE_KSCOPE_SEED2=0x6f42d9228eb5421b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x26431406c4238ae4 -DITHARE_KSCOPE_SEED2=0x6f42d9228eb5421b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 179/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x483ba4a99cbaeabe -DITHARE_KSCOPE_SEED2=0xbfa36ada7ded3f62 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x483ba4a99cbaeabe -DITHARE_KSCOPE_SEED2=0xbfa36ada7ded3f62 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x483ba4a99cbaeabe -DITHARE_KSCOPE_SEED2=0xbfa36ada7ded3f62 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 180/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb2d3b80cb3086241 -DITHARE_KSCOPE_SEED2=0xf87ffbc306e281a6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb2d3b80cb3086241 -DITHARE_KSCOPE_SEED2=0xf87ffbc306e281a6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb2d3b80cb3086241 -DITHARE_KSCOPE_SEED2=0xf87ffbc306e281a6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 181/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x0b3aa1457fdaf151 -DITHARE_KSCOPE_SEED2=0x118a7f22eac8144a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x0b3aa1457fdaf151 -DITHARE_KSCOPE_SEED2=0x118a7f22eac8144a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x0b3aa1457fdaf151 -DITHARE_KSCOPE_SEED2=0x118a7f22eac8144a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 182/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf08b0718c2944831 -DITHARE_KSCOPE_SEED2=0x048b5dae8f30ab07 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf08b0718c2944831 -DITHARE_KSCOPE_SEED2=0x048b5dae8f30ab07 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf08b0718c2944831 -DITHARE_KSCOPE_SEED2=0x048b5dae8f30ab07 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 183/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa8c56af8268295e9 -DITHARE_KSCOPE_SEED2=0xc6e851e97e5cb39f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa8c56af8268295e9 -DITHARE_KSCOPE_SEED2=0xc6e851e97e5cb39f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa8c56af8268295e9 -DITHARE_KSCOPE_SEED2=0xc6e851e97e5cb39f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 184/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x238025b4934bd891 -DITHARE_KSCOPE_SEED2=0x98fa9c2535691be2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x238025b4934bd891 -DITHARE_KSCOPE_SEED2=0x98fa9c2535691be2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x238025b4934bd891 -DITHARE_KSCOPE_SEED2=0x98fa9c2535691be2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 185/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x6fe8705bd3038a3f -DITHARE_KSCOPE_SEED2=0x1eb2ffbea73b1bcb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x6fe8705bd3038a3f -DITHARE_KSCOPE_SEED2=0x1eb2ffbea73b1bcb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x6fe8705bd3038a3f -DITHARE_KSCOPE_SEED2=0x1eb2ffbea73b1bcb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 186/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9b69f3b3442f7d95 -DITHARE_KSCOPE_SEED2=0xf1e75baa8645de46 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9b69f3b3442f7d95 -DITHARE_KSCOPE_SEED2=0xf1e75baa8645de46 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9b69f3b3442f7d95 -DITHARE_KSCOPE_SEED2=0xf1e75baa8645de46 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 187/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe21cf64e9eba8317 -DITHARE_KSCOPE_SEED2=0x197b23ae0afc7887 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe21cf64e9eba8317 -DITHARE_KSCOPE_SEED2=0x197b23ae0afc7887 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe21cf64e9eba8317 -DITHARE_KSCOPE_SEED2=0x197b23ae0afc7887 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 188/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe65a5e71b822e14e -DITHARE_KSCOPE_SEED2=0xf145f36e41380c2a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe65a5e71b822e14e -DITHARE_KSCOPE_SEED2=0xf145f36e41380c2a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe65a5e71b822e14e -DITHARE_KSCOPE_SEED2=0xf145f36e41380c2a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 189/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x5dee902db1694420 -DITHARE_KSCOPE_SEED2=0xf70aa2048a23d7ff -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x5dee902db1694420 -DITHARE_KSCOPE_SEED2=0xf70aa2048a23d7ff -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x5dee902db1694420 -DITHARE_KSCOPE_SEED2=0xf70aa2048a23d7ff -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 190/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcb5aee3e1ca24bc9 -DITHARE_KSCOPE_SEED2=0x1a6ade8d05045a65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcb5aee3e1ca24bc9 -DITHARE_KSCOPE_SEED2=0x1a6ade8d05045a65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcb5aee3e1ca24bc9 -DITHARE_KSCOPE_SEED2=0x1a6ade8d05045a65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 191/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2ad4a3ea2bc91a45 -DITHARE_KSCOPE_SEED2=0x1ffff2d33070194c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2ad4a3ea2bc91a45 -DITHARE_KSCOPE_SEED2=0x1ffff2d33070194c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2ad4a3ea2bc91a45 -DITHARE_KSCOPE_SEED2=0x1ffff2d33070194c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 192/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0d9a7e82f2355821 -DITHARE_KSCOPE_SEED2=0x31a70337de05191e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0d9a7e82f2355821 -DITHARE_KSCOPE_SEED2=0x31a70337de05191e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0d9a7e82f2355821 -DITHARE_KSCOPE_SEED2=0x31a70337de05191e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 193/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x14fe887015db091e -DITHARE_KSCOPE_SEED2=0x0362b4c9c13f4887 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x14fe887015db091e -DITHARE_KSCOPE_SEED2=0x0362b4c9c13f4887 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x14fe887015db091e -DITHARE_KSCOPE_SEED2=0x0362b4c9c13f4887 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 194/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x93b1b04355cc844e -DITHARE_KSCOPE_SEED2=0x98221ea54ceab30f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x93b1b04355cc844e -DITHARE_KSCOPE_SEED2=0x98221ea54ceab30f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x93b1b04355cc844e -DITHARE_KSCOPE_SEED2=0x98221ea54ceab30f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 195/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x374e80f66014b2e4 -DITHARE_KSCOPE_SEED2=0xc28e912ad1b3b15a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x374e80f66014b2e4 -DITHARE_KSCOPE_SEED2=0xc28e912ad1b3b15a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x374e80f66014b2e4 -DITHARE_KSCOPE_SEED2=0xc28e912ad1b3b15a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 196/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x24f9f026158bc676 -DITHARE_KSCOPE_SEED2=0x1ab2c3eef01f34f4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x24f9f026158bc676 -DITHARE_KSCOPE_SEED2=0x1ab2c3eef01f34f4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x24f9f026158bc676 -DITHARE_KSCOPE_SEED2=0x1ab2c3eef01f34f4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 197/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x91375f79ac3881a7 -DITHARE_KSCOPE_SEED2=0x0e3453660737c9e4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x91375f79ac3881a7 -DITHARE_KSCOPE_SEED2=0x0e3453660737c9e4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x91375f79ac3881a7 -DITHARE_KSCOPE_SEED2=0x0e3453660737c9e4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 198/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2f4eaacc3e0c00a3 -DITHARE_KSCOPE_SEED2=0x923408ad1210625d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2f4eaacc3e0c00a3 -DITHARE_KSCOPE_SEED2=0x923408ad1210625d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2f4eaacc3e0c00a3 -DITHARE_KSCOPE_SEED2=0x923408ad1210625d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 199/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbf2eae9f91777e37 -DITHARE_KSCOPE_SEED2=0x8c0ad4e55d7efe84 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbf2eae9f91777e37 -DITHARE_KSCOPE_SEED2=0x8c0ad4e55d7efe84 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbf2eae9f91777e37 -DITHARE_KSCOPE_SEED2=0x8c0ad4e55d7efe84 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 200/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe7a0e3ff6d6fa9fb -DITHARE_KSCOPE_SEED2=0x040a9302866f7f07 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe7a0e3ff6d6fa9fb -DITHARE_KSCOPE_SEED2=0x040a9302866f7f07 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe7a0e3ff6d6fa9fb -DITHARE_KSCOPE_SEED2=0x040a9302866f7f07 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 201/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x61dc2e4e8d0085ab -DITHARE_KSCOPE_SEED2=0x743a108da217067c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x61dc2e4e8d0085ab -DITHARE_KSCOPE_SEED2=0x743a108da217067c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x61dc2e4e8d0085ab -DITHARE_KSCOPE_SEED2=0x743a108da217067c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 202/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x35cbd3bfea8672c2 -DITHARE_KSCOPE_SEED2=0xa4c8b5b2a1236526 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x35cbd3bfea8672c2 -DITHARE_KSCOPE_SEED2=0xa4c8b5b2a1236526 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x35cbd3bfea8672c2 -DITHARE_KSCOPE_SEED2=0xa4c8b5b2a1236526 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 203/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x881f5edcd9a1fae5 -DITHARE_KSCOPE_SEED2=0x84d0fa09c7907151 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x881f5edcd9a1fae5 -DITHARE_KSCOPE_SEED2=0x84d0fa09c7907151 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x881f5edcd9a1fae5 -DITHARE_KSCOPE_SEED2=0x84d0fa09c7907151 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 204/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x95f085b8e0d80472 -DITHARE_KSCOPE_SEED2=0xac0cc10e93ff8406 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x95f085b8e0d80472 -DITHARE_KSCOPE_SEED2=0xac0cc10e93ff8406 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x95f085b8e0d80472 -DITHARE_KSCOPE_SEED2=0xac0cc10e93ff8406 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 205/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xdfc01cd1cae73ead -DITHARE_KSCOPE_SEED2=0x0dbfae86b24efe47 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xdfc01cd1cae73ead -DITHARE_KSCOPE_SEED2=0x0dbfae86b24efe47 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xdfc01cd1cae73ead -DITHARE_KSCOPE_SEED2=0x0dbfae86b24efe47 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 206/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x86f63cd8a414d03e -DITHARE_KSCOPE_SEED2=0x6ee71257c3a3833f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x86f63cd8a414d03e -DITHARE_KSCOPE_SEED2=0x6ee71257c3a3833f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x86f63cd8a414d03e -DITHARE_KSCOPE_SEED2=0x6ee71257c3a3833f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 207/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x74141729ec2c4cff -DITHARE_KSCOPE_SEED2=0xd184d12a52590c46 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x74141729ec2c4cff -DITHARE_KSCOPE_SEED2=0xd184d12a52590c46 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x74141729ec2c4cff -DITHARE_KSCOPE_SEED2=0xd184d12a52590c46 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 208/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb054fe739515708e -DITHARE_KSCOPE_SEED2=0xc01dc90af99c6296 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb054fe739515708e -DITHARE_KSCOPE_SEED2=0xc01dc90af99c6296 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb054fe739515708e -DITHARE_KSCOPE_SEED2=0xc01dc90af99c6296 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 209/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb4369008cb57ca52 -DITHARE_KSCOPE_SEED2=0xc20c31da157b7ee3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb4369008cb57ca52 -DITHARE_KSCOPE_SEED2=0xc20c31da157b7ee3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb4369008cb57ca52 -DITHARE_KSCOPE_SEED2=0xc20c31da157b7ee3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 210/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x89147a1a100f325b -DITHARE_KSCOPE_SEED2=0x343fd55c6f3ad80b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x89147a1a100f325b -DITHARE_KSCOPE_SEED2=0x343fd55c6f3ad80b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x89147a1a100f325b -DITHARE_KSCOPE_SEED2=0x343fd55c6f3ad80b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 211/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8fa9ca1c37c21137 -DITHARE_KSCOPE_SEED2=0x9cae699c11b6163f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8fa9ca1c37c21137 -DITHARE_KSCOPE_SEED2=0x9cae699c11b6163f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8fa9ca1c37c21137 -DITHARE_KSCOPE_SEED2=0x9cae699c11b6163f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 212/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7b66b51f3ecaceae -DITHARE_KSCOPE_SEED2=0xa7c949405757c938 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7b66b51f3ecaceae -DITHARE_KSCOPE_SEED2=0xa7c949405757c938 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7b66b51f3ecaceae -DITHARE_KSCOPE_SEED2=0xa7c949405757c938 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 213/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x1fadd8dd23341f21 -DITHARE_KSCOPE_SEED2=0x95f7e0bbd22b1853 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x1fadd8dd23341f21 -DITHARE_KSCOPE_SEED2=0x95f7e0bbd22b1853 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x1fadd8dd23341f21 -DITHARE_KSCOPE_SEED2=0x95f7e0bbd22b1853 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 214/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2b0195118c1f9556 -DITHARE_KSCOPE_SEED2=0x5e73d31e3877547d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2b0195118c1f9556 -DITHARE_KSCOPE_SEED2=0x5e73d31e3877547d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2b0195118c1f9556 -DITHARE_KSCOPE_SEED2=0x5e73d31e3877547d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 215/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xee5dcc9d5ff38abe -DITHARE_KSCOPE_SEED2=0x6504973b3aa08080 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xee5dcc9d5ff38abe -DITHARE_KSCOPE_SEED2=0x6504973b3aa08080 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xee5dcc9d5ff38abe -DITHARE_KSCOPE_SEED2=0x6504973b3aa08080 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 216/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcf382393c5cb55fa -DITHARE_KSCOPE_SEED2=0x6a5fdd6746759a3a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcf382393c5cb55fa -DITHARE_KSCOPE_SEED2=0x6a5fdd6746759a3a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcf382393c5cb55fa -DITHARE_KSCOPE_SEED2=0x6a5fdd6746759a3a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 217/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xbecda3c560cce856 -DITHARE_KSCOPE_SEED2=0xd1be547237bbf64f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xbecda3c560cce856 -DITHARE_KSCOPE_SEED2=0xd1be547237bbf64f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xbecda3c560cce856 -DITHARE_KSCOPE_SEED2=0xd1be547237bbf64f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 218/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x50ec67a3dd4d5076 -DITHARE_KSCOPE_SEED2=0x9f2bb745c97f0e21 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x50ec67a3dd4d5076 -DITHARE_KSCOPE_SEED2=0x9f2bb745c97f0e21 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x50ec67a3dd4d5076 -DITHARE_KSCOPE_SEED2=0x9f2bb745c97f0e21 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 219/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1377d49e58e24d7c -DITHARE_KSCOPE_SEED2=0xedb8078e42e652a6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1377d49e58e24d7c -DITHARE_KSCOPE_SEED2=0xedb8078e42e652a6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1377d49e58e24d7c -DITHARE_KSCOPE_SEED2=0xedb8078e42e652a6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 220/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5f5f28c08091e441 -DITHARE_KSCOPE_SEED2=0x88e037e56f8f738b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5f5f28c08091e441 -DITHARE_KSCOPE_SEED2=0x88e037e56f8f738b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5f5f28c08091e441 -DITHARE_KSCOPE_SEED2=0x88e037e56f8f738b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 221/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xeda67ef9c2b24e30 -DITHARE_KSCOPE_SEED2=0x5641779b7f907e37 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xeda67ef9c2b24e30 -DITHARE_KSCOPE_SEED2=0x5641779b7f907e37 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xeda67ef9c2b24e30 -DITHARE_KSCOPE_SEED2=0x5641779b7f907e37 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 222/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x561c3c45dba79046 -DITHARE_KSCOPE_SEED2=0x57df30573c348159 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x561c3c45dba79046 -DITHARE_KSCOPE_SEED2=0x57df30573c348159 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x561c3c45dba79046 -DITHARE_KSCOPE_SEED2=0x57df30573c348159 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 223/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd70acd58b9f50234 -DITHARE_KSCOPE_SEED2=0x710a4af49aae60f9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd70acd58b9f50234 -DITHARE_KSCOPE_SEED2=0x710a4af49aae60f9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd70acd58b9f50234 -DITHARE_KSCOPE_SEED2=0x710a4af49aae60f9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 224/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbb1e0af78649d0e2 -DITHARE_KSCOPE_SEED2=0x90d1bba458e1a921 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbb1e0af78649d0e2 -DITHARE_KSCOPE_SEED2=0x90d1bba458e1a921 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbb1e0af78649d0e2 -DITHARE_KSCOPE_SEED2=0x90d1bba458e1a921 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 225/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xe0207de0f8a079b8 -DITHARE_KSCOPE_SEED2=0x707cba48a6907129 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xe0207de0f8a079b8 -DITHARE_KSCOPE_SEED2=0x707cba48a6907129 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xe0207de0f8a079b8 -DITHARE_KSCOPE_SEED2=0x707cba48a6907129 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 226/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x04d63cec79736570 -DITHARE_KSCOPE_SEED2=0xd7c10a4f0eb46781 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x04d63cec79736570 -DITHARE_KSCOPE_SEED2=0xd7c10a4f0eb46781 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x04d63cec79736570 -DITHARE_KSCOPE_SEED2=0xd7c10a4f0eb46781 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 227/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd36d4956ceafa495 -DITHARE_KSCOPE_SEED2=0x02b15a0729e91629 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd36d4956ceafa495 -DITHARE_KSCOPE_SEED2=0x02b15a0729e91629 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd36d4956ceafa495 -DITHARE_KSCOPE_SEED2=0x02b15a0729e91629 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 228/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe026e4740e57f6d4 -DITHARE_KSCOPE_SEED2=0xe09a22477be5352d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe026e4740e57f6d4 -DITHARE_KSCOPE_SEED2=0xe09a22477be5352d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe026e4740e57f6d4 -DITHARE_KSCOPE_SEED2=0xe09a22477be5352d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 229/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x36bc758dafb78e20 -DITHARE_KSCOPE_SEED2=0x01623d2c0ee615c4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x36bc758dafb78e20 -DITHARE_KSCOPE_SEED2=0x01623d2c0ee615c4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x36bc758dafb78e20 -DITHARE_KSCOPE_SEED2=0x01623d2c0ee615c4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 230/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x875c25d3d6744950 -DITHARE_KSCOPE_SEED2=0x639cc1374f23bf7b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x875c25d3d6744950 -DITHARE_KSCOPE_SEED2=0x639cc1374f23bf7b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x875c25d3d6744950 -DITHARE_KSCOPE_SEED2=0x639cc1374f23bf7b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 231/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xddb0de43028eb748 -DITHARE_KSCOPE_SEED2=0x5b5e6ac0f85c37b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xddb0de43028eb748 -DITHARE_KSCOPE_SEED2=0x5b5e6ac0f85c37b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xddb0de43028eb748 -DITHARE_KSCOPE_SEED2=0x5b5e6ac0f85c37b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 232/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3da59f3b1fc07918 -DITHARE_KSCOPE_SEED2=0x7733c31038ac010d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3da59f3b1fc07918 -DITHARE_KSCOPE_SEED2=0x7733c31038ac010d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3da59f3b1fc07918 -DITHARE_KSCOPE_SEED2=0x7733c31038ac010d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 233/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x0c8eee1800a22a7c -DITHARE_KSCOPE_SEED2=0xb10dce44ca08cc4b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x0c8eee1800a22a7c -DITHARE_KSCOPE_SEED2=0xb10dce44ca08cc4b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x0c8eee1800a22a7c -DITHARE_KSCOPE_SEED2=0xb10dce44ca08cc4b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 234/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x03899d5596826c40 -DITHARE_KSCOPE_SEED2=0x5579b2e520b3bc12 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x03899d5596826c40 -DITHARE_KSCOPE_SEED2=0x5579b2e520b3bc12 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x03899d5596826c40 -DITHARE_KSCOPE_SEED2=0x5579b2e520b3bc12 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 235/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6441ef53b847be1e -DITHARE_KSCOPE_SEED2=0x73b337a125ee0d75 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6441ef53b847be1e -DITHARE_KSCOPE_SEED2=0x73b337a125ee0d75 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6441ef53b847be1e -DITHARE_KSCOPE_SEED2=0x73b337a125ee0d75 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 236/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x319c1499005f0a43 -DITHARE_KSCOPE_SEED2=0xce5cf467ed09b01a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x319c1499005f0a43 -DITHARE_KSCOPE_SEED2=0xce5cf467ed09b01a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x319c1499005f0a43 -DITHARE_KSCOPE_SEED2=0xce5cf467ed09b01a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 237/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x1852678d65f83fe2 -DITHARE_KSCOPE_SEED2=0x0c819235cef5633e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x1852678d65f83fe2 -DITHARE_KSCOPE_SEED2=0x0c819235cef5633e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x1852678d65f83fe2 -DITHARE_KSCOPE_SEED2=0x0c819235cef5633e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 238/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcfce36eb964d9dcd -DITHARE_KSCOPE_SEED2=0x0b4baaee8986c64b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcfce36eb964d9dcd -DITHARE_KSCOPE_SEED2=0x0b4baaee8986c64b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcfce36eb964d9dcd -DITHARE_KSCOPE_SEED2=0x0b4baaee8986c64b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 239/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x68a28e6204064c8f -DITHARE_KSCOPE_SEED2=0x142b3f02ecf71196 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x68a28e6204064c8f -DITHARE_KSCOPE_SEED2=0x142b3f02ecf71196 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x68a28e6204064c8f -DITHARE_KSCOPE_SEED2=0x142b3f02ecf71196 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 240/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x574d58a7ff5772b4 -DITHARE_KSCOPE_SEED2=0x9de84660a94235de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x574d58a7ff5772b4 -DITHARE_KSCOPE_SEED2=0x9de84660a94235de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x574d58a7ff5772b4 -DITHARE_KSCOPE_SEED2=0x9de84660a94235de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 241/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xd4e140be36d94c13 -DITHARE_KSCOPE_SEED2=0x89d6bad2b5827e16 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xd4e140be36d94c13 -DITHARE_KSCOPE_SEED2=0x89d6bad2b5827e16 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xd4e140be36d94c13 -DITHARE_KSCOPE_SEED2=0x89d6bad2b5827e16 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 242/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x358302f4675e1190 -DITHARE_KSCOPE_SEED2=0x9541bad40c0b97c5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x358302f4675e1190 -DITHARE_KSCOPE_SEED2=0x9541bad40c0b97c5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x358302f4675e1190 -DITHARE_KSCOPE_SEED2=0x9541bad40c0b97c5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 243/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7dbb322c6c4763a9 -DITHARE_KSCOPE_SEED2=0xe70b400ad24d72ed -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7dbb322c6c4763a9 -DITHARE_KSCOPE_SEED2=0xe70b400ad24d72ed -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7dbb322c6c4763a9 -DITHARE_KSCOPE_SEED2=0xe70b400ad24d72ed -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 244/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x60d5e07e58b03d91 -DITHARE_KSCOPE_SEED2=0x3ad37fca6d767614 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x60d5e07e58b03d91 -DITHARE_KSCOPE_SEED2=0x3ad37fca6d767614 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x60d5e07e58b03d91 -DITHARE_KSCOPE_SEED2=0x3ad37fca6d767614 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 245/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x924ab3257f68a8e6 -DITHARE_KSCOPE_SEED2=0x705ebd3f94742073 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x924ab3257f68a8e6 -DITHARE_KSCOPE_SEED2=0x705ebd3f94742073 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x924ab3257f68a8e6 -DITHARE_KSCOPE_SEED2=0x705ebd3f94742073 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 246/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc9e31934f2f563f1 -DITHARE_KSCOPE_SEED2=0x4fec8c387852eca3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc9e31934f2f563f1 -DITHARE_KSCOPE_SEED2=0x4fec8c387852eca3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc9e31934f2f563f1 -DITHARE_KSCOPE_SEED2=0x4fec8c387852eca3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 247/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd653d8db292e8305 -DITHARE_KSCOPE_SEED2=0x8a75fe23560e6e0f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd653d8db292e8305 -DITHARE_KSCOPE_SEED2=0x8a75fe23560e6e0f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd653d8db292e8305 -DITHARE_KSCOPE_SEED2=0x8a75fe23560e6e0f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 248/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa67d3cb89ee99af8 -DITHARE_KSCOPE_SEED2=0xfce4ebecd71a178d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa67d3cb89ee99af8 -DITHARE_KSCOPE_SEED2=0xfce4ebecd71a178d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa67d3cb89ee99af8 -DITHARE_KSCOPE_SEED2=0xfce4ebecd71a178d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 249/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x8bd5024bcc717f47 -DITHARE_KSCOPE_SEED2=0xdbab6db540d70e54 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x8bd5024bcc717f47 -DITHARE_KSCOPE_SEED2=0xdbab6db540d70e54 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x8bd5024bcc717f47 -DITHARE_KSCOPE_SEED2=0xdbab6db540d70e54 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 250/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x23013f1793ade1e9 -DITHARE_KSCOPE_SEED2=0x780654302452a78b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x23013f1793ade1e9 -DITHARE_KSCOPE_SEED2=0x780654302452a78b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x23013f1793ade1e9 -DITHARE_KSCOPE_SEED2=0x780654302452a78b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 251/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x31589115f953e75d -DITHARE_KSCOPE_SEED2=0xde0e59f56bd8042a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x31589115f953e75d -DITHARE_KSCOPE_SEED2=0xde0e59f56bd8042a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x31589115f953e75d -DITHARE_KSCOPE_SEED2=0xde0e59f56bd8042a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 252/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xccd6fdf956cd1aa1 -DITHARE_KSCOPE_SEED2=0x62b7e06940b0edf0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xccd6fdf956cd1aa1 -DITHARE_KSCOPE_SEED2=0x62b7e06940b0edf0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xccd6fdf956cd1aa1 -DITHARE_KSCOPE_SEED2=0x62b7e06940b0edf0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 253/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x463f3d47c4b74133 -DITHARE_KSCOPE_SEED2=0xdfc2a99a20f6a82c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x463f3d47c4b74133 -DITHARE_KSCOPE_SEED2=0xdfc2a99a20f6a82c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x463f3d47c4b74133 -DITHARE_KSCOPE_SEED2=0xdfc2a99a20f6a82c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 254/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x39b03c4242fe9974 -DITHARE_KSCOPE_SEED2=0xcf9157527333608b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x39b03c4242fe9974 -DITHARE_KSCOPE_SEED2=0xcf9157527333608b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x39b03c4242fe9974 -DITHARE_KSCOPE_SEED2=0xcf9157527333608b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 255/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe4c309dbbaa3cd22 -DITHARE_KSCOPE_SEED2=0x46ce15a9b225efaf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe4c309dbbaa3cd22 -DITHARE_KSCOPE_SEED2=0x46ce15a9b225efaf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe4c309dbbaa3cd22 -DITHARE_KSCOPE_SEED2=0x46ce15a9b225efaf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 256/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3aa0d7e68e3efa87 -DITHARE_KSCOPE_SEED2=0xa5f030813a38c715 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3aa0d7e68e3efa87 -DITHARE_KSCOPE_SEED2=0xa5f030813a38c715 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3aa0d7e68e3efa87 -DITHARE_KSCOPE_SEED2=0xa5f030813a38c715 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 257/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xbd47c385344b0ee2 -DITHARE_KSCOPE_SEED2=0xff7f8f998b78768f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xbd47c385344b0ee2 -DITHARE_KSCOPE_SEED2=0xff7f8f998b78768f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xbd47c385344b0ee2 -DITHARE_KSCOPE_SEED2=0xff7f8f998b78768f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 258/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2e60ea1f2bff1647 -DITHARE_KSCOPE_SEED2=0xf62deadcc868f861 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2e60ea1f2bff1647 -DITHARE_KSCOPE_SEED2=0xf62deadcc868f861 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2e60ea1f2bff1647 -DITHARE_KSCOPE_SEED2=0xf62deadcc868f861 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 259/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbd08fab143d80e5a -DITHARE_KSCOPE_SEED2=0x4f0bb944ab6e5eb3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbd08fab143d80e5a -DITHARE_KSCOPE_SEED2=0x4f0bb944ab6e5eb3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbd08fab143d80e5a -DITHARE_KSCOPE_SEED2=0x4f0bb944ab6e5eb3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 260/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0879568c33030030 -DITHARE_KSCOPE_SEED2=0x4d7c56e366498a95 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0879568c33030030 -DITHARE_KSCOPE_SEED2=0x4d7c56e366498a95 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0879568c33030030 -DITHARE_KSCOPE_SEED2=0x4d7c56e366498a95 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 261/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x642aa81868045e66 -DITHARE_KSCOPE_SEED2=0xb114642bf527c806 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x642aa81868045e66 -DITHARE_KSCOPE_SEED2=0xb114642bf527c806 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x642aa81868045e66 -DITHARE_KSCOPE_SEED2=0xb114642bf527c806 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 262/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2f7197912b9961ab -DITHARE_KSCOPE_SEED2=0x856107de5d297096 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2f7197912b9961ab -DITHARE_KSCOPE_SEED2=0x856107de5d297096 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2f7197912b9961ab -DITHARE_KSCOPE_SEED2=0x856107de5d297096 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 263/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa48d1147de6fdf1a -DITHARE_KSCOPE_SEED2=0xfe650f06ed5c1c0e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa48d1147de6fdf1a -DITHARE_KSCOPE_SEED2=0xfe650f06ed5c1c0e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa48d1147de6fdf1a -DITHARE_KSCOPE_SEED2=0xfe650f06ed5c1c0e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 264/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1b58a10961eb81bd -DITHARE_KSCOPE_SEED2=0x5f9f9461bf9ed051 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1b58a10961eb81bd -DITHARE_KSCOPE_SEED2=0x5f9f9461bf9ed051 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1b58a10961eb81bd -DITHARE_KSCOPE_SEED2=0x5f9f9461bf9ed051 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 265/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x118eea2bf2b53c32 -DITHARE_KSCOPE_SEED2=0x8b55ef507ea8c070 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x118eea2bf2b53c32 -DITHARE_KSCOPE_SEED2=0x8b55ef507ea8c070 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x118eea2bf2b53c32 -DITHARE_KSCOPE_SEED2=0x8b55ef507ea8c070 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 266/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa8379c99ac7a6cc0 -DITHARE_KSCOPE_SEED2=0xbd78c1f4fc7b60a0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa8379c99ac7a6cc0 -DITHARE_KSCOPE_SEED2=0xbd78c1f4fc7b60a0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa8379c99ac7a6cc0 -DITHARE_KSCOPE_SEED2=0xbd78c1f4fc7b60a0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 267/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ed9f172bfca252d -DITHARE_KSCOPE_SEED2=0xf26f2b63431cd5a9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ed9f172bfca252d -DITHARE_KSCOPE_SEED2=0xf26f2b63431cd5a9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ed9f172bfca252d -DITHARE_KSCOPE_SEED2=0xf26f2b63431cd5a9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 268/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x40367e11bbdb9737 -DITHARE_KSCOPE_SEED2=0x8f71d4aaa84f7cce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x40367e11bbdb9737 -DITHARE_KSCOPE_SEED2=0x8f71d4aaa84f7cce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x40367e11bbdb9737 -DITHARE_KSCOPE_SEED2=0x8f71d4aaa84f7cce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 269/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x4464a179d8845744 -DITHARE_KSCOPE_SEED2=0x667a577004f5eb04 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x4464a179d8845744 -DITHARE_KSCOPE_SEED2=0x667a577004f5eb04 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x4464a179d8845744 -DITHARE_KSCOPE_SEED2=0x667a577004f5eb04 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 270/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7f5ac480d875a459 -DITHARE_KSCOPE_SEED2=0xd7ff9205ede11157 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7f5ac480d875a459 -DITHARE_KSCOPE_SEED2=0xd7ff9205ede11157 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7f5ac480d875a459 -DITHARE_KSCOPE_SEED2=0xd7ff9205ede11157 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 271/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x864ad8820088351f -DITHARE_KSCOPE_SEED2=0xb68a90771da8006d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x864ad8820088351f -DITHARE_KSCOPE_SEED2=0xb68a90771da8006d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x864ad8820088351f -DITHARE_KSCOPE_SEED2=0xb68a90771da8006d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 272/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf4adcd638bf13614 -DITHARE_KSCOPE_SEED2=0x7452b3d078fc0b39 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf4adcd638bf13614 -DITHARE_KSCOPE_SEED2=0x7452b3d078fc0b39 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf4adcd638bf13614 -DITHARE_KSCOPE_SEED2=0x7452b3d078fc0b39 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 273/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xf3f7437fb64d15b7 -DITHARE_KSCOPE_SEED2=0xa032598392376c31 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xf3f7437fb64d15b7 -DITHARE_KSCOPE_SEED2=0xa032598392376c31 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xf3f7437fb64d15b7 -DITHARE_KSCOPE_SEED2=0xa032598392376c31 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 274/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbb2da71499fe102b -DITHARE_KSCOPE_SEED2=0x582d334547819607 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbb2da71499fe102b -DITHARE_KSCOPE_SEED2=0x582d334547819607 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbb2da71499fe102b -DITHARE_KSCOPE_SEED2=0x582d334547819607 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 275/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x03739501b8a90f32 -DITHARE_KSCOPE_SEED2=0x0f4bc49242d1106b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x03739501b8a90f32 -DITHARE_KSCOPE_SEED2=0x0f4bc49242d1106b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x03739501b8a90f32 -DITHARE_KSCOPE_SEED2=0x0f4bc49242d1106b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 276/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x702ab91cc6aa39fa -DITHARE_KSCOPE_SEED2=0x13672b4307ee8c17 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x702ab91cc6aa39fa -DITHARE_KSCOPE_SEED2=0x13672b4307ee8c17 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x702ab91cc6aa39fa -DITHARE_KSCOPE_SEED2=0x13672b4307ee8c17 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 277/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x2fa7a3525f24d981 -DITHARE_KSCOPE_SEED2=0xf98f70b20a06b9fe -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x2fa7a3525f24d981 -DITHARE_KSCOPE_SEED2=0xf98f70b20a06b9fe -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x2fa7a3525f24d981 -DITHARE_KSCOPE_SEED2=0xf98f70b20a06b9fe -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 278/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x595e4ef8c4d94786 -DITHARE_KSCOPE_SEED2=0x849399eb1f88de54 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x595e4ef8c4d94786 -DITHARE_KSCOPE_SEED2=0x849399eb1f88de54 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x595e4ef8c4d94786 -DITHARE_KSCOPE_SEED2=0x849399eb1f88de54 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 279/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0ac443de64051268 -DITHARE_KSCOPE_SEED2=0xc6ffc07759657058 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0ac443de64051268 -DITHARE_KSCOPE_SEED2=0xc6ffc07759657058 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0ac443de64051268 -DITHARE_KSCOPE_SEED2=0xc6ffc07759657058 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 280/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x05f332a93951fefa -DITHARE_KSCOPE_SEED2=0x03015631f4d3e102 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x05f332a93951fefa -DITHARE_KSCOPE_SEED2=0x03015631f4d3e102 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x05f332a93951fefa -DITHARE_KSCOPE_SEED2=0x03015631f4d3e102 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 281/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x32d852838a2b0267 -DITHARE_KSCOPE_SEED2=0xee61b22de8b90e41 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x32d852838a2b0267 -DITHARE_KSCOPE_SEED2=0xee61b22de8b90e41 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x32d852838a2b0267 -DITHARE_KSCOPE_SEED2=0xee61b22de8b90e41 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 282/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x241c30fff3e439d0 -DITHARE_KSCOPE_SEED2=0x0f98497991b49df3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x241c30fff3e439d0 -DITHARE_KSCOPE_SEED2=0x0f98497991b49df3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x241c30fff3e439d0 -DITHARE_KSCOPE_SEED2=0x0f98497991b49df3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 283/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6c9a7cc59fc9aff0 -DITHARE_KSCOPE_SEED2=0x4c61581e23de16d7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6c9a7cc59fc9aff0 -DITHARE_KSCOPE_SEED2=0x4c61581e23de16d7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6c9a7cc59fc9aff0 -DITHARE_KSCOPE_SEED2=0x4c61581e23de16d7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 284/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9fe209edee981b10 -DITHARE_KSCOPE_SEED2=0x2a57e9c95f21f322 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9fe209edee981b10 -DITHARE_KSCOPE_SEED2=0x2a57e9c95f21f322 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9fe209edee981b10 -DITHARE_KSCOPE_SEED2=0x2a57e9c95f21f322 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 285/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x4634a87464c49cf8 -DITHARE_KSCOPE_SEED2=0x6704da6b23d48eb6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x4634a87464c49cf8 -DITHARE_KSCOPE_SEED2=0x6704da6b23d48eb6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x4634a87464c49cf8 -DITHARE_KSCOPE_SEED2=0x6704da6b23d48eb6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 286/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x517e978c8f7667f3 -DITHARE_KSCOPE_SEED2=0x8e82b3847e912f4b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x517e978c8f7667f3 -DITHARE_KSCOPE_SEED2=0x8e82b3847e912f4b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x517e978c8f7667f3 -DITHARE_KSCOPE_SEED2=0x8e82b3847e912f4b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 287/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc875275b8d090bb9 -DITHARE_KSCOPE_SEED2=0x7241d84946db563c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc875275b8d090bb9 -DITHARE_KSCOPE_SEED2=0x7241d84946db563c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc875275b8d090bb9 -DITHARE_KSCOPE_SEED2=0x7241d84946db563c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 288/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaae6ab444f768ec5 -DITHARE_KSCOPE_SEED2=0x8fea9a60c3d81aea -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaae6ab444f768ec5 -DITHARE_KSCOPE_SEED2=0x8fea9a60c3d81aea -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaae6ab444f768ec5 -DITHARE_KSCOPE_SEED2=0x8fea9a60c3d81aea -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 289/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x19f054c3dbc46145 -DITHARE_KSCOPE_SEED2=0x6c3d79c945eade33 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x19f054c3dbc46145 -DITHARE_KSCOPE_SEED2=0x6c3d79c945eade33 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x19f054c3dbc46145 -DITHARE_KSCOPE_SEED2=0x6c3d79c945eade33 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 290/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd204aaae1b3332dc -DITHARE_KSCOPE_SEED2=0x8254219841e0e9e5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd204aaae1b3332dc -DITHARE_KSCOPE_SEED2=0x8254219841e0e9e5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd204aaae1b3332dc -DITHARE_KSCOPE_SEED2=0x8254219841e0e9e5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 291/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6722ad585c0c76f6 -DITHARE_KSCOPE_SEED2=0x6ea2574342a20c36 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6722ad585c0c76f6 -DITHARE_KSCOPE_SEED2=0x6ea2574342a20c36 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6722ad585c0c76f6 -DITHARE_KSCOPE_SEED2=0x6ea2574342a20c36 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 292/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbcfe4762aeb13140 -DITHARE_KSCOPE_SEED2=0x2fb77bf6bf0c49d6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbcfe4762aeb13140 -DITHARE_KSCOPE_SEED2=0x2fb77bf6bf0c49d6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbcfe4762aeb13140 -DITHARE_KSCOPE_SEED2=0x2fb77bf6bf0c49d6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 293/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x49fc9f1568a7a824 -DITHARE_KSCOPE_SEED2=0x40028c4f70a6c755 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x49fc9f1568a7a824 -DITHARE_KSCOPE_SEED2=0x40028c4f70a6c755 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x49fc9f1568a7a824 -DITHARE_KSCOPE_SEED2=0x40028c4f70a6c755 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 294/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6b22dcd40b50b028 -DITHARE_KSCOPE_SEED2=0xa554081006e612bc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6b22dcd40b50b028 -DITHARE_KSCOPE_SEED2=0xa554081006e612bc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6b22dcd40b50b028 -DITHARE_KSCOPE_SEED2=0xa554081006e612bc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 295/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x792163e5d40b0d65 -DITHARE_KSCOPE_SEED2=0x30411c3633b0666e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x792163e5d40b0d65 -DITHARE_KSCOPE_SEED2=0x30411c3633b0666e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x792163e5d40b0d65 -DITHARE_KSCOPE_SEED2=0x30411c3633b0666e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 296/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5eb798f6d858b4fb -DITHARE_KSCOPE_SEED2=0x0dfba9e5082a1d87 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5eb798f6d858b4fb -DITHARE_KSCOPE_SEED2=0x0dfba9e5082a1d87 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5eb798f6d858b4fb -DITHARE_KSCOPE_SEED2=0x0dfba9e5082a1d87 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 297/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xf5a29a5b2f401975 -DITHARE_KSCOPE_SEED2=0xe6421c3f48c591a2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xf5a29a5b2f401975 -DITHARE_KSCOPE_SEED2=0xe6421c3f48c591a2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xf5a29a5b2f401975 -DITHARE_KSCOPE_SEED2=0xe6421c3f48c591a2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 298/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4aa33c3c2d4d9f3b -DITHARE_KSCOPE_SEED2=0x8d72cf512156c4d6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4aa33c3c2d4d9f3b -DITHARE_KSCOPE_SEED2=0x8d72cf512156c4d6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4aa33c3c2d4d9f3b -DITHARE_KSCOPE_SEED2=0x8d72cf512156c4d6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 299/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x92b3f2a4a9932ad0 -DITHARE_KSCOPE_SEED2=0xfb704b9b51c28de2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x92b3f2a4a9932ad0 -DITHARE_KSCOPE_SEED2=0xfb704b9b51c28de2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x92b3f2a4a9932ad0 -DITHARE_KSCOPE_SEED2=0xfb704b9b51c28de2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 300/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x269309eae286f914 -DITHARE_KSCOPE_SEED2=0x12da03d8d7e93d6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x269309eae286f914 -DITHARE_KSCOPE_SEED2=0x12da03d8d7e93d6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x269309eae286f914 -DITHARE_KSCOPE_SEED2=0x12da03d8d7e93d6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 301/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x4133a69780f35931 -DITHARE_KSCOPE_SEED2=0x99ba6fc8e0f8b8cd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x4133a69780f35931 -DITHARE_KSCOPE_SEED2=0x99ba6fc8e0f8b8cd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x4133a69780f35931 -DITHARE_KSCOPE_SEED2=0x99ba6fc8e0f8b8cd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 302/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x979819eaaae3339e -DITHARE_KSCOPE_SEED2=0x79549cfd9eea20d6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x979819eaaae3339e -DITHARE_KSCOPE_SEED2=0x79549cfd9eea20d6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x979819eaaae3339e -DITHARE_KSCOPE_SEED2=0x79549cfd9eea20d6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 303/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0b5f9feb857b7abf -DITHARE_KSCOPE_SEED2=0x4dc531a4bf6dafb7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0b5f9feb857b7abf -DITHARE_KSCOPE_SEED2=0x4dc531a4bf6dafb7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0b5f9feb857b7abf -DITHARE_KSCOPE_SEED2=0x4dc531a4bf6dafb7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 304/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd2d32163911d614a -DITHARE_KSCOPE_SEED2=0x4b08bb74f95fe9ac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd2d32163911d614a -DITHARE_KSCOPE_SEED2=0x4b08bb74f95fe9ac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd2d32163911d614a -DITHARE_KSCOPE_SEED2=0x4b08bb74f95fe9ac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 305/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xda96fa3fd6f6359a -DITHARE_KSCOPE_SEED2=0xa50cd5819b84f6df -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xda96fa3fd6f6359a -DITHARE_KSCOPE_SEED2=0xa50cd5819b84f6df -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xda96fa3fd6f6359a -DITHARE_KSCOPE_SEED2=0xa50cd5819b84f6df -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 306/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe515659f73550838 -DITHARE_KSCOPE_SEED2=0x669413739559ee71 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe515659f73550838 -DITHARE_KSCOPE_SEED2=0x669413739559ee71 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe515659f73550838 -DITHARE_KSCOPE_SEED2=0x669413739559ee71 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 307/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x374a70635c6e9026 -DITHARE_KSCOPE_SEED2=0xe534edca3a570163 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x374a70635c6e9026 -DITHARE_KSCOPE_SEED2=0xe534edca3a570163 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x374a70635c6e9026 -DITHARE_KSCOPE_SEED2=0xe534edca3a570163 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 308/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x033c6d4e457e42c7 -DITHARE_KSCOPE_SEED2=0x648eb5be44b91d3d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x033c6d4e457e42c7 -DITHARE_KSCOPE_SEED2=0x648eb5be44b91d3d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x033c6d4e457e42c7 -DITHARE_KSCOPE_SEED2=0x648eb5be44b91d3d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 309/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xebaa889dc566be20 -DITHARE_KSCOPE_SEED2=0x751e60c81caa7b76 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xebaa889dc566be20 -DITHARE_KSCOPE_SEED2=0x751e60c81caa7b76 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xebaa889dc566be20 -DITHARE_KSCOPE_SEED2=0x751e60c81caa7b76 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 310/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4e05eb3348810eae -DITHARE_KSCOPE_SEED2=0x72cbd0600694252a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4e05eb3348810eae -DITHARE_KSCOPE_SEED2=0x72cbd0600694252a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4e05eb3348810eae -DITHARE_KSCOPE_SEED2=0x72cbd0600694252a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 311/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa25fae7a17ea851a -DITHARE_KSCOPE_SEED2=0x05e81886b515026a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa25fae7a17ea851a -DITHARE_KSCOPE_SEED2=0x05e81886b515026a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa25fae7a17ea851a -DITHARE_KSCOPE_SEED2=0x05e81886b515026a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 312/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x368898dfba7bb1c7 -DITHARE_KSCOPE_SEED2=0x913f6cfbaba03fe5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x368898dfba7bb1c7 -DITHARE_KSCOPE_SEED2=0x913f6cfbaba03fe5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x368898dfba7bb1c7 -DITHARE_KSCOPE_SEED2=0x913f6cfbaba03fe5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 313/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x0ae9174d68f3feeb -DITHARE_KSCOPE_SEED2=0x5871d9fb5e834820 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x0ae9174d68f3feeb -DITHARE_KSCOPE_SEED2=0x5871d9fb5e834820 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x0ae9174d68f3feeb -DITHARE_KSCOPE_SEED2=0x5871d9fb5e834820 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 314/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3a1e1e03bf75320d -DITHARE_KSCOPE_SEED2=0xda9f91aee809330b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3a1e1e03bf75320d -DITHARE_KSCOPE_SEED2=0xda9f91aee809330b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3a1e1e03bf75320d -DITHARE_KSCOPE_SEED2=0xda9f91aee809330b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 315/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf218a43fee726888 -DITHARE_KSCOPE_SEED2=0xe5086f30e8b00c20 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf218a43fee726888 -DITHARE_KSCOPE_SEED2=0xe5086f30e8b00c20 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf218a43fee726888 -DITHARE_KSCOPE_SEED2=0xe5086f30e8b00c20 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 316/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8431648b203bb82d -DITHARE_KSCOPE_SEED2=0x8e5b69086338fb8b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8431648b203bb82d -DITHARE_KSCOPE_SEED2=0x8e5b69086338fb8b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8431648b203bb82d -DITHARE_KSCOPE_SEED2=0x8e5b69086338fb8b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 317/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x50d85e90c2b0327e -DITHARE_KSCOPE_SEED2=0xbce6cbb2de2c73ce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x50d85e90c2b0327e -DITHARE_KSCOPE_SEED2=0xbce6cbb2de2c73ce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x50d85e90c2b0327e -DITHARE_KSCOPE_SEED2=0xbce6cbb2de2c73ce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 318/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9a80d42931ed6576 -DITHARE_KSCOPE_SEED2=0xa5e125aaee437858 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9a80d42931ed6576 -DITHARE_KSCOPE_SEED2=0xa5e125aaee437858 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9a80d42931ed6576 -DITHARE_KSCOPE_SEED2=0xa5e125aaee437858 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 319/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7afbb94e0173d152 -DITHARE_KSCOPE_SEED2=0x100da2d6b0de65ab -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7afbb94e0173d152 -DITHARE_KSCOPE_SEED2=0x100da2d6b0de65ab -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7afbb94e0173d152 -DITHARE_KSCOPE_SEED2=0x100da2d6b0de65ab -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 320/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4ec1bfb74eccfdb1 -DITHARE_KSCOPE_SEED2=0xcc50b46da36fcc3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4ec1bfb74eccfdb1 -DITHARE_KSCOPE_SEED2=0xcc50b46da36fcc3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4ec1bfb74eccfdb1 -DITHARE_KSCOPE_SEED2=0xcc50b46da36fcc3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 321/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x58ae74533f80c23b -DITHARE_KSCOPE_SEED2=0xd324d6f0c4bfdeac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x58ae74533f80c23b -DITHARE_KSCOPE_SEED2=0xd324d6f0c4bfdeac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x58ae74533f80c23b -DITHARE_KSCOPE_SEED2=0xd324d6f0c4bfdeac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 322/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa3b89d6102f2a53a -DITHARE_KSCOPE_SEED2=0xf743e6ed01f2e982 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa3b89d6102f2a53a -DITHARE_KSCOPE_SEED2=0xf743e6ed01f2e982 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa3b89d6102f2a53a -DITHARE_KSCOPE_SEED2=0xf743e6ed01f2e982 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 323/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe2f74ff8f3ac53d7 -DITHARE_KSCOPE_SEED2=0x4796f4b2c5dab6ec -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe2f74ff8f3ac53d7 -DITHARE_KSCOPE_SEED2=0x4796f4b2c5dab6ec -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe2f74ff8f3ac53d7 -DITHARE_KSCOPE_SEED2=0x4796f4b2c5dab6ec -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 324/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x050f3265357cd637 -DITHARE_KSCOPE_SEED2=0x4701020a6611f5dc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x050f3265357cd637 -DITHARE_KSCOPE_SEED2=0x4701020a6611f5dc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x050f3265357cd637 -DITHARE_KSCOPE_SEED2=0x4701020a6611f5dc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 325/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x56f7f8fd5e1fe7ce -DITHARE_KSCOPE_SEED2=0xb061de83259c116e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x56f7f8fd5e1fe7ce -DITHARE_KSCOPE_SEED2=0xb061de83259c116e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x56f7f8fd5e1fe7ce -DITHARE_KSCOPE_SEED2=0xb061de83259c116e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 326/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9deb67bc88e8b0ca -DITHARE_KSCOPE_SEED2=0x77e720fbf3a66719 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9deb67bc88e8b0ca -DITHARE_KSCOPE_SEED2=0x77e720fbf3a66719 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9deb67bc88e8b0ca -DITHARE_KSCOPE_SEED2=0x77e720fbf3a66719 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 327/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4b39b2c05292baaf -DITHARE_KSCOPE_SEED2=0x0732486603b499f4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4b39b2c05292baaf -DITHARE_KSCOPE_SEED2=0x0732486603b499f4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4b39b2c05292baaf -DITHARE_KSCOPE_SEED2=0x0732486603b499f4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 328/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x59fa088656e06b28 -DITHARE_KSCOPE_SEED2=0x9231e9b05cf95189 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x59fa088656e06b28 -DITHARE_KSCOPE_SEED2=0x9231e9b05cf95189 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x59fa088656e06b28 -DITHARE_KSCOPE_SEED2=0x9231e9b05cf95189 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 329/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x026cf05fdd6e6fa9 -DITHARE_KSCOPE_SEED2=0x6f0a776bbf194d56 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x026cf05fdd6e6fa9 -DITHARE_KSCOPE_SEED2=0x6f0a776bbf194d56 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x026cf05fdd6e6fa9 -DITHARE_KSCOPE_SEED2=0x6f0a776bbf194d56 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 330/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x649bb1a4a5bf0e73 -DITHARE_KSCOPE_SEED2=0xac010dd54f1e7f9b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x649bb1a4a5bf0e73 -DITHARE_KSCOPE_SEED2=0xac010dd54f1e7f9b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x649bb1a4a5bf0e73 -DITHARE_KSCOPE_SEED2=0xac010dd54f1e7f9b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 331/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1926b544652d6300 -DITHARE_KSCOPE_SEED2=0x972882f64bc79fe8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1926b544652d6300 -DITHARE_KSCOPE_SEED2=0x972882f64bc79fe8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1926b544652d6300 -DITHARE_KSCOPE_SEED2=0x972882f64bc79fe8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 332/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0145191825ee8857 -DITHARE_KSCOPE_SEED2=0x9165bf8c2ee45b52 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0145191825ee8857 -DITHARE_KSCOPE_SEED2=0x9165bf8c2ee45b52 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0145191825ee8857 -DITHARE_KSCOPE_SEED2=0x9165bf8c2ee45b52 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 333/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xe2bac8053ef23a43 -DITHARE_KSCOPE_SEED2=0xc307c6b2cfc00fff -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xe2bac8053ef23a43 -DITHARE_KSCOPE_SEED2=0xc307c6b2cfc00fff -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xe2bac8053ef23a43 -DITHARE_KSCOPE_SEED2=0xc307c6b2cfc00fff -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 334/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x216dcb9d5b6c93a8 -DITHARE_KSCOPE_SEED2=0xe69831d3db14fd7a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x216dcb9d5b6c93a8 -DITHARE_KSCOPE_SEED2=0xe69831d3db14fd7a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x216dcb9d5b6c93a8 -DITHARE_KSCOPE_SEED2=0xe69831d3db14fd7a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 335/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x130275d127d08007 -DITHARE_KSCOPE_SEED2=0x05535403bca801e5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x130275d127d08007 -DITHARE_KSCOPE_SEED2=0x05535403bca801e5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x130275d127d08007 -DITHARE_KSCOPE_SEED2=0x05535403bca801e5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 336/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb8e10c26b1cdcb50 -DITHARE_KSCOPE_SEED2=0x38a2a1483c172c1b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb8e10c26b1cdcb50 -DITHARE_KSCOPE_SEED2=0x38a2a1483c172c1b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb8e10c26b1cdcb50 -DITHARE_KSCOPE_SEED2=0x38a2a1483c172c1b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 337/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x1bbee5fad1ac9e16 -DITHARE_KSCOPE_SEED2=0x4496693d7d218cc5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x1bbee5fad1ac9e16 -DITHARE_KSCOPE_SEED2=0x4496693d7d218cc5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x1bbee5fad1ac9e16 -DITHARE_KSCOPE_SEED2=0x4496693d7d218cc5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 338/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x87e11463e818c5d0 -DITHARE_KSCOPE_SEED2=0xd2ade32d46f6111a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x87e11463e818c5d0 -DITHARE_KSCOPE_SEED2=0xd2ade32d46f6111a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x87e11463e818c5d0 -DITHARE_KSCOPE_SEED2=0xd2ade32d46f6111a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 339/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x828967fcbe3700c8 -DITHARE_KSCOPE_SEED2=0x6e4f820f1c0c1e60 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x828967fcbe3700c8 -DITHARE_KSCOPE_SEED2=0x6e4f820f1c0c1e60 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x828967fcbe3700c8 -DITHARE_KSCOPE_SEED2=0x6e4f820f1c0c1e60 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 340/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa3c3da268afb1855 -DITHARE_KSCOPE_SEED2=0x5e9f1bb77af7f87b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa3c3da268afb1855 -DITHARE_KSCOPE_SEED2=0x5e9f1bb77af7f87b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa3c3da268afb1855 -DITHARE_KSCOPE_SEED2=0x5e9f1bb77af7f87b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 341/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x749d573045319ce0 -DITHARE_KSCOPE_SEED2=0x675192e8f473a02b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x749d573045319ce0 -DITHARE_KSCOPE_SEED2=0x675192e8f473a02b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x749d573045319ce0 -DITHARE_KSCOPE_SEED2=0x675192e8f473a02b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 342/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc613fecab333bf9c -DITHARE_KSCOPE_SEED2=0xcfb402d4868759d2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc613fecab333bf9c -DITHARE_KSCOPE_SEED2=0xcfb402d4868759d2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc613fecab333bf9c -DITHARE_KSCOPE_SEED2=0xcfb402d4868759d2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 343/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ddab68c7461c9fb -DITHARE_KSCOPE_SEED2=0xba07de1055c5132f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ddab68c7461c9fb -DITHARE_KSCOPE_SEED2=0xba07de1055c5132f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ddab68c7461c9fb -DITHARE_KSCOPE_SEED2=0xba07de1055c5132f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 344/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0c9c36d7c32c6f8e -DITHARE_KSCOPE_SEED2=0xe2b8452dd599ad12 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0c9c36d7c32c6f8e -DITHARE_KSCOPE_SEED2=0xe2b8452dd599ad12 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0c9c36d7c32c6f8e -DITHARE_KSCOPE_SEED2=0xe2b8452dd599ad12 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 345/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x0f15225bfaf2faff -DITHARE_KSCOPE_SEED2=0xdc80b39d1bd01153 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x0f15225bfaf2faff -DITHARE_KSCOPE_SEED2=0xdc80b39d1bd01153 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x0f15225bfaf2faff -DITHARE_KSCOPE_SEED2=0xdc80b39d1bd01153 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 346/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8579f891590d0b28 -DITHARE_KSCOPE_SEED2=0x58ba5285c85aeabb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8579f891590d0b28 -DITHARE_KSCOPE_SEED2=0x58ba5285c85aeabb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8579f891590d0b28 -DITHARE_KSCOPE_SEED2=0x58ba5285c85aeabb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 347/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa81555f33b5f2b40 -DITHARE_KSCOPE_SEED2=0xcb736b5b9b361bca -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa81555f33b5f2b40 -DITHARE_KSCOPE_SEED2=0xcb736b5b9b361bca -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa81555f33b5f2b40 -DITHARE_KSCOPE_SEED2=0xcb736b5b9b361bca -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 348/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x42b2db3c6bcb9b2d -DITHARE_KSCOPE_SEED2=0x5594f8bc5cde571b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x42b2db3c6bcb9b2d -DITHARE_KSCOPE_SEED2=0x5594f8bc5cde571b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x42b2db3c6bcb9b2d -DITHARE_KSCOPE_SEED2=0x5594f8bc5cde571b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 349/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xbc15475c3967273a -DITHARE_KSCOPE_SEED2=0xc1e46d2f53689b27 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xbc15475c3967273a -DITHARE_KSCOPE_SEED2=0xc1e46d2f53689b27 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xbc15475c3967273a -DITHARE_KSCOPE_SEED2=0xc1e46d2f53689b27 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 350/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x22e4edf48e7ab12c -DITHARE_KSCOPE_SEED2=0x3932f618367ca0d1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x22e4edf48e7ab12c -DITHARE_KSCOPE_SEED2=0x3932f618367ca0d1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x22e4edf48e7ab12c -DITHARE_KSCOPE_SEED2=0x3932f618367ca0d1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 351/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4c8f5936a7e0301a -DITHARE_KSCOPE_SEED2=0xc97426be0434d79d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4c8f5936a7e0301a -DITHARE_KSCOPE_SEED2=0xc97426be0434d79d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4c8f5936a7e0301a -DITHARE_KSCOPE_SEED2=0xc97426be0434d79d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 352/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbbca899fecbf1766 -DITHARE_KSCOPE_SEED2=0x3ad2ef990b0c144a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbbca899fecbf1766 -DITHARE_KSCOPE_SEED2=0x3ad2ef990b0c144a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbbca899fecbf1766 -DITHARE_KSCOPE_SEED2=0x3ad2ef990b0c144a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 353/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x3dad25ca978be74f -DITHARE_KSCOPE_SEED2=0x95331d0d5478962b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x3dad25ca978be74f -DITHARE_KSCOPE_SEED2=0x95331d0d5478962b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x3dad25ca978be74f -DITHARE_KSCOPE_SEED2=0x95331d0d5478962b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 354/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x59b07e93f6806a53 -DITHARE_KSCOPE_SEED2=0x38cc44a510c2f30d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x59b07e93f6806a53 -DITHARE_KSCOPE_SEED2=0x38cc44a510c2f30d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x59b07e93f6806a53 -DITHARE_KSCOPE_SEED2=0x38cc44a510c2f30d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 355/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x90609e41133454d1 -DITHARE_KSCOPE_SEED2=0xfaae6bdebad74faf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x90609e41133454d1 -DITHARE_KSCOPE_SEED2=0xfaae6bdebad74faf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x90609e41133454d1 -DITHARE_KSCOPE_SEED2=0xfaae6bdebad74faf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 356/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xef4a0fc632d1f638 -DITHARE_KSCOPE_SEED2=0xc2018bee6e22158a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xef4a0fc632d1f638 -DITHARE_KSCOPE_SEED2=0xc2018bee6e22158a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xef4a0fc632d1f638 -DITHARE_KSCOPE_SEED2=0xc2018bee6e22158a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 357/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x0109e90379e865c7 -DITHARE_KSCOPE_SEED2=0xa831c342bfc034e5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x0109e90379e865c7 -DITHARE_KSCOPE_SEED2=0xa831c342bfc034e5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x0109e90379e865c7 -DITHARE_KSCOPE_SEED2=0xa831c342bfc034e5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 358/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f1c7b64d710f042 -DITHARE_KSCOPE_SEED2=0xc978da011eddd914 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f1c7b64d710f042 -DITHARE_KSCOPE_SEED2=0xc978da011eddd914 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f1c7b64d710f042 -DITHARE_KSCOPE_SEED2=0xc978da011eddd914 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 359/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0813d8c69a03c869 -DITHARE_KSCOPE_SEED2=0xb22d10e5ef87e569 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0813d8c69a03c869 -DITHARE_KSCOPE_SEED2=0xb22d10e5ef87e569 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0813d8c69a03c869 -DITHARE_KSCOPE_SEED2=0xb22d10e5ef87e569 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 360/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf37fb23970f042d9 -DITHARE_KSCOPE_SEED2=0xd84a4ec141f3a4dc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf37fb23970f042d9 -DITHARE_KSCOPE_SEED2=0xd84a4ec141f3a4dc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf37fb23970f042d9 -DITHARE_KSCOPE_SEED2=0xd84a4ec141f3a4dc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 361/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x8d457cd06b13b34b -DITHARE_KSCOPE_SEED2=0x1dac889155965f89 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x8d457cd06b13b34b -DITHARE_KSCOPE_SEED2=0x1dac889155965f89 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x8d457cd06b13b34b -DITHARE_KSCOPE_SEED2=0x1dac889155965f89 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 362/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcc6ee883ce47a8ae -DITHARE_KSCOPE_SEED2=0x0032a8bec4a28596 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcc6ee883ce47a8ae -DITHARE_KSCOPE_SEED2=0x0032a8bec4a28596 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcc6ee883ce47a8ae -DITHARE_KSCOPE_SEED2=0x0032a8bec4a28596 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 363/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe78e5e654ddd2df5 -DITHARE_KSCOPE_SEED2=0x91df9df97b370f2e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe78e5e654ddd2df5 -DITHARE_KSCOPE_SEED2=0x91df9df97b370f2e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe78e5e654ddd2df5 -DITHARE_KSCOPE_SEED2=0x91df9df97b370f2e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 364/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x57d3cafbbf1ac068 -DITHARE_KSCOPE_SEED2=0x04ec1c006aa94a95 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x57d3cafbbf1ac068 -DITHARE_KSCOPE_SEED2=0x04ec1c006aa94a95 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x57d3cafbbf1ac068 -DITHARE_KSCOPE_SEED2=0x04ec1c006aa94a95 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 365/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc1f9c8cad26e2cd1 -DITHARE_KSCOPE_SEED2=0x5c646fac7a61ae93 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc1f9c8cad26e2cd1 -DITHARE_KSCOPE_SEED2=0x5c646fac7a61ae93 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc1f9c8cad26e2cd1 -DITHARE_KSCOPE_SEED2=0x5c646fac7a61ae93 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 366/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xee74b6a2f64b6360 -DITHARE_KSCOPE_SEED2=0x5473c416fae91e8b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xee74b6a2f64b6360 -DITHARE_KSCOPE_SEED2=0x5473c416fae91e8b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xee74b6a2f64b6360 -DITHARE_KSCOPE_SEED2=0x5473c416fae91e8b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 367/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xed59cdcd3fbcd911 -DITHARE_KSCOPE_SEED2=0xcdd39f401b850074 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xed59cdcd3fbcd911 -DITHARE_KSCOPE_SEED2=0xcdd39f401b850074 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xed59cdcd3fbcd911 -DITHARE_KSCOPE_SEED2=0xcdd39f401b850074 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 368/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f394c6b1522c617 -DITHARE_KSCOPE_SEED2=0x820d5942ac0f15a2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f394c6b1522c617 -DITHARE_KSCOPE_SEED2=0x820d5942ac0f15a2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f394c6b1522c617 -DITHARE_KSCOPE_SEED2=0x820d5942ac0f15a2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 369/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xd64c313938f9cb8b -DITHARE_KSCOPE_SEED2=0xf69076034f364e1b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xd64c313938f9cb8b -DITHARE_KSCOPE_SEED2=0xf69076034f364e1b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xd64c313938f9cb8b -DITHARE_KSCOPE_SEED2=0xf69076034f364e1b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 370/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x90b3b89fb32780c9 -DITHARE_KSCOPE_SEED2=0xd2270a5e93008efe -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x90b3b89fb32780c9 -DITHARE_KSCOPE_SEED2=0xd2270a5e93008efe -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x90b3b89fb32780c9 -DITHARE_KSCOPE_SEED2=0xd2270a5e93008efe -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 371/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa4d2430b73d305ac -DITHARE_KSCOPE_SEED2=0xfa411c18f048a1ca -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa4d2430b73d305ac -DITHARE_KSCOPE_SEED2=0xfa411c18f048a1ca -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa4d2430b73d305ac -DITHARE_KSCOPE_SEED2=0xfa411c18f048a1ca -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 372/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xef8f2f04326f8d19 -DITHARE_KSCOPE_SEED2=0x5946070789e760bf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xef8f2f04326f8d19 -DITHARE_KSCOPE_SEED2=0x5946070789e760bf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xef8f2f04326f8d19 -DITHARE_KSCOPE_SEED2=0x5946070789e760bf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 373/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xd7662e6916aec4b7 -DITHARE_KSCOPE_SEED2=0xb9bd2a402c67e275 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xd7662e6916aec4b7 -DITHARE_KSCOPE_SEED2=0xb9bd2a402c67e275 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xd7662e6916aec4b7 -DITHARE_KSCOPE_SEED2=0xb9bd2a402c67e275 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 374/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaae07a95acfa7576 -DITHARE_KSCOPE_SEED2=0x9c33c07903326870 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaae07a95acfa7576 -DITHARE_KSCOPE_SEED2=0x9c33c07903326870 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaae07a95acfa7576 -DITHARE_KSCOPE_SEED2=0x9c33c07903326870 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 375/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb33925d23f4d67a8 -DITHARE_KSCOPE_SEED2=0x260005f84ce996fc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb33925d23f4d67a8 -DITHARE_KSCOPE_SEED2=0x260005f84ce996fc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb33925d23f4d67a8 -DITHARE_KSCOPE_SEED2=0x260005f84ce996fc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 376/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9bbb8a759d6d0957 -DITHARE_KSCOPE_SEED2=0x85fd8e00690e0e19 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9bbb8a759d6d0957 -DITHARE_KSCOPE_SEED2=0x85fd8e00690e0e19 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9bbb8a759d6d0957 -DITHARE_KSCOPE_SEED2=0x85fd8e00690e0e19 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 377/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xa6fdbfc71a217154 -DITHARE_KSCOPE_SEED2=0x7bcbee5b9b3e7333 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xa6fdbfc71a217154 -DITHARE_KSCOPE_SEED2=0x7bcbee5b9b3e7333 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xa6fdbfc71a217154 -DITHARE_KSCOPE_SEED2=0x7bcbee5b9b3e7333 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 378/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7505ed028365cc5c -DITHARE_KSCOPE_SEED2=0xc86ce4d462a5656f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7505ed028365cc5c -DITHARE_KSCOPE_SEED2=0xc86ce4d462a5656f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7505ed028365cc5c -DITHARE_KSCOPE_SEED2=0xc86ce4d462a5656f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 379/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe73006dae09e2c65 -DITHARE_KSCOPE_SEED2=0xbb7bcd51a3b830ba -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe73006dae09e2c65 -DITHARE_KSCOPE_SEED2=0xbb7bcd51a3b830ba -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe73006dae09e2c65 -DITHARE_KSCOPE_SEED2=0xbb7bcd51a3b830ba -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 380/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x53358908f6556976 -DITHARE_KSCOPE_SEED2=0x3945b768d84b12bd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x53358908f6556976 -DITHARE_KSCOPE_SEED2=0x3945b768d84b12bd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x53358908f6556976 -DITHARE_KSCOPE_SEED2=0x3945b768d84b12bd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 381/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x19a00fe3561e0f29 -DITHARE_KSCOPE_SEED2=0x0819fc3c1c43be5f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x19a00fe3561e0f29 -DITHARE_KSCOPE_SEED2=0x0819fc3c1c43be5f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x19a00fe3561e0f29 -DITHARE_KSCOPE_SEED2=0x0819fc3c1c43be5f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 382/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x973137c766075d0d -DITHARE_KSCOPE_SEED2=0x487e57283fa1886c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x973137c766075d0d -DITHARE_KSCOPE_SEED2=0x487e57283fa1886c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x973137c766075d0d -DITHARE_KSCOPE_SEED2=0x487e57283fa1886c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 383/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4b69f728e9f74695 -DITHARE_KSCOPE_SEED2=0x70c54f0d629b3477 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4b69f728e9f74695 -DITHARE_KSCOPE_SEED2=0x70c54f0d629b3477 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4b69f728e9f74695 -DITHARE_KSCOPE_SEED2=0x70c54f0d629b3477 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 384/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbb5d04f0435dc091 -DITHARE_KSCOPE_SEED2=0x5f3024e672c25109 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbb5d04f0435dc091 -DITHARE_KSCOPE_SEED2=0x5f3024e672c25109 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbb5d04f0435dc091 -DITHARE_KSCOPE_SEED2=0x5f3024e672c25109 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 385/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x60113db7cba0b9e2 -DITHARE_KSCOPE_SEED2=0x02a23469869fc1f3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x60113db7cba0b9e2 -DITHARE_KSCOPE_SEED2=0x02a23469869fc1f3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x60113db7cba0b9e2 -DITHARE_KSCOPE_SEED2=0x02a23469869fc1f3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 386/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf2ea8f67f79ba3b4 -DITHARE_KSCOPE_SEED2=0x226a7eb2ff43ebba -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf2ea8f67f79ba3b4 -DITHARE_KSCOPE_SEED2=0x226a7eb2ff43ebba -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf2ea8f67f79ba3b4 -DITHARE_KSCOPE_SEED2=0x226a7eb2ff43ebba -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 387/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb0d0cd5c24644409 -DITHARE_KSCOPE_SEED2=0x17073bf9c1866c37 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb0d0cd5c24644409 -DITHARE_KSCOPE_SEED2=0x17073bf9c1866c37 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb0d0cd5c24644409 -DITHARE_KSCOPE_SEED2=0x17073bf9c1866c37 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 388/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbebf6936e9d72131 -DITHARE_KSCOPE_SEED2=0x30895e408cbfaa36 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbebf6936e9d72131 -DITHARE_KSCOPE_SEED2=0x30895e408cbfaa36 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbebf6936e9d72131 -DITHARE_KSCOPE_SEED2=0x30895e408cbfaa36 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 389/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x4e360a4573ce388c -DITHARE_KSCOPE_SEED2=0xdfeb66ccd1d5a0a0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x4e360a4573ce388c -DITHARE_KSCOPE_SEED2=0xdfeb66ccd1d5a0a0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x4e360a4573ce388c -DITHARE_KSCOPE_SEED2=0xdfeb66ccd1d5a0a0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 390/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x28d4090896611392 -DITHARE_KSCOPE_SEED2=0x8ae0278174e39d7d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x28d4090896611392 -DITHARE_KSCOPE_SEED2=0x8ae0278174e39d7d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x28d4090896611392 -DITHARE_KSCOPE_SEED2=0x8ae0278174e39d7d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 391/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x07b80ea456d5216e -DITHARE_KSCOPE_SEED2=0x8a5a95d331d7f8e9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x07b80ea456d5216e -DITHARE_KSCOPE_SEED2=0x8a5a95d331d7f8e9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x07b80ea456d5216e -DITHARE_KSCOPE_SEED2=0x8a5a95d331d7f8e9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 392/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x09150035309ca42c -DITHARE_KSCOPE_SEED2=0x4c8fe0d58620af70 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x09150035309ca42c -DITHARE_KSCOPE_SEED2=0x4c8fe0d58620af70 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x09150035309ca42c -DITHARE_KSCOPE_SEED2=0x4c8fe0d58620af70 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 393/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x777a4d1db3e9c1d8 -DITHARE_KSCOPE_SEED2=0xe0334fbb713ef891 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x777a4d1db3e9c1d8 -DITHARE_KSCOPE_SEED2=0xe0334fbb713ef891 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x777a4d1db3e9c1d8 -DITHARE_KSCOPE_SEED2=0xe0334fbb713ef891 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 394/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x86e765221482e6b5 -DITHARE_KSCOPE_SEED2=0x69bfd10c648bf751 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x86e765221482e6b5 -DITHARE_KSCOPE_SEED2=0x69bfd10c648bf751 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x86e765221482e6b5 -DITHARE_KSCOPE_SEED2=0x69bfd10c648bf751 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 395/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdfe294412a7d6901 -DITHARE_KSCOPE_SEED2=0x064ecdfaf30ae5db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdfe294412a7d6901 -DITHARE_KSCOPE_SEED2=0x064ecdfaf30ae5db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdfe294412a7d6901 -DITHARE_KSCOPE_SEED2=0x064ecdfaf30ae5db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 396/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x36756a82f6de992c -DITHARE_KSCOPE_SEED2=0xf3d6a845b8cfc32c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x36756a82f6de992c -DITHARE_KSCOPE_SEED2=0xf3d6a845b8cfc32c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x36756a82f6de992c -DITHARE_KSCOPE_SEED2=0xf3d6a845b8cfc32c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 397/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x774a807bcb368dbe -DITHARE_KSCOPE_SEED2=0xf8cd4d3bffd14b8f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x774a807bcb368dbe -DITHARE_KSCOPE_SEED2=0xf8cd4d3bffd14b8f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x774a807bcb368dbe -DITHARE_KSCOPE_SEED2=0xf8cd4d3bffd14b8f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 398/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5cf4d960f96ae743 -DITHARE_KSCOPE_SEED2=0xdb2e7c02d750746d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5cf4d960f96ae743 -DITHARE_KSCOPE_SEED2=0xdb2e7c02d750746d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5cf4d960f96ae743 -DITHARE_KSCOPE_SEED2=0xdb2e7c02d750746d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 399/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x68d0dafae876049e -DITHARE_KSCOPE_SEED2=0x6ccfe43dd8954bde -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x68d0dafae876049e -DITHARE_KSCOPE_SEED2=0x6ccfe43dd8954bde -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x68d0dafae876049e -DITHARE_KSCOPE_SEED2=0x6ccfe43dd8954bde -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 400/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb612e50e28d96f9 -DITHARE_KSCOPE_SEED2=0xe0f4cc59a8d859c4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb612e50e28d96f9 -DITHARE_KSCOPE_SEED2=0xe0f4cc59a8d859c4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb612e50e28d96f9 -DITHARE_KSCOPE_SEED2=0xe0f4cc59a8d859c4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 401/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x94564555da293669 -DITHARE_KSCOPE_SEED2=0x77f2270ce1993883 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x94564555da293669 -DITHARE_KSCOPE_SEED2=0x77f2270ce1993883 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x94564555da293669 -DITHARE_KSCOPE_SEED2=0x77f2270ce1993883 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 402/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x66fb81334f923c1a -DITHARE_KSCOPE_SEED2=0xd05f9dc157002183 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x66fb81334f923c1a -DITHARE_KSCOPE_SEED2=0xd05f9dc157002183 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x66fb81334f923c1a -DITHARE_KSCOPE_SEED2=0xd05f9dc157002183 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 403/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xec6ed80dc55ed532 -DITHARE_KSCOPE_SEED2=0x1ec515cee8ac38bc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xec6ed80dc55ed532 -DITHARE_KSCOPE_SEED2=0x1ec515cee8ac38bc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xec6ed80dc55ed532 -DITHARE_KSCOPE_SEED2=0x1ec515cee8ac38bc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 404/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x48731f0d5245257a -DITHARE_KSCOPE_SEED2=0x9b5b7c7024b92d22 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x48731f0d5245257a -DITHARE_KSCOPE_SEED2=0x9b5b7c7024b92d22 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x48731f0d5245257a -DITHARE_KSCOPE_SEED2=0x9b5b7c7024b92d22 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 405/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc5cac2b2433f4c3e -DITHARE_KSCOPE_SEED2=0x27f8f7c7e4e5bda8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc5cac2b2433f4c3e -DITHARE_KSCOPE_SEED2=0x27f8f7c7e4e5bda8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc5cac2b2433f4c3e -DITHARE_KSCOPE_SEED2=0x27f8f7c7e4e5bda8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 406/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb50ec1cf0a509a96 -DITHARE_KSCOPE_SEED2=0x69d78fc041b53600 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb50ec1cf0a509a96 -DITHARE_KSCOPE_SEED2=0x69d78fc041b53600 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb50ec1cf0a509a96 -DITHARE_KSCOPE_SEED2=0x69d78fc041b53600 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 407/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb66c19afc49d7a1b -DITHARE_KSCOPE_SEED2=0x29d8b3dc01ea8bda -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb66c19afc49d7a1b -DITHARE_KSCOPE_SEED2=0x29d8b3dc01ea8bda -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb66c19afc49d7a1b -DITHARE_KSCOPE_SEED2=0x29d8b3dc01ea8bda -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 408/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xae16e6b1485b484c -DITHARE_KSCOPE_SEED2=0x6513fdfb41143f28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xae16e6b1485b484c -DITHARE_KSCOPE_SEED2=0x6513fdfb41143f28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xae16e6b1485b484c -DITHARE_KSCOPE_SEED2=0x6513fdfb41143f28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 409/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x68e7e77d82aef84c -DITHARE_KSCOPE_SEED2=0x308642324a2db9eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x68e7e77d82aef84c -DITHARE_KSCOPE_SEED2=0x308642324a2db9eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x68e7e77d82aef84c -DITHARE_KSCOPE_SEED2=0x308642324a2db9eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 410/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0ea0f76ede126d50 -DITHARE_KSCOPE_SEED2=0x4142453aa9b65b08 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0ea0f76ede126d50 -DITHARE_KSCOPE_SEED2=0x4142453aa9b65b08 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0ea0f76ede126d50 -DITHARE_KSCOPE_SEED2=0x4142453aa9b65b08 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 411/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6792179f6e7d436b -DITHARE_KSCOPE_SEED2=0x85063b4e0433b77a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6792179f6e7d436b -DITHARE_KSCOPE_SEED2=0x85063b4e0433b77a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6792179f6e7d436b -DITHARE_KSCOPE_SEED2=0x85063b4e0433b77a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 412/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc0ce1d6dfe921837 -DITHARE_KSCOPE_SEED2=0xcd71d6970ad0a5a5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc0ce1d6dfe921837 -DITHARE_KSCOPE_SEED2=0xcd71d6970ad0a5a5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc0ce1d6dfe921837 -DITHARE_KSCOPE_SEED2=0xcd71d6970ad0a5a5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 413/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x2dd079d81ae9f272 -DITHARE_KSCOPE_SEED2=0xc232477fe220917b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x2dd079d81ae9f272 -DITHARE_KSCOPE_SEED2=0xc232477fe220917b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x2dd079d81ae9f272 -DITHARE_KSCOPE_SEED2=0xc232477fe220917b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 414/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x68027699906b0e41 -DITHARE_KSCOPE_SEED2=0x1ef6b7bc2981a32f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x68027699906b0e41 -DITHARE_KSCOPE_SEED2=0x1ef6b7bc2981a32f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x68027699906b0e41 -DITHARE_KSCOPE_SEED2=0x1ef6b7bc2981a32f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 415/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x523186fed94db446 -DITHARE_KSCOPE_SEED2=0x5a66d1f58b375f3b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x523186fed94db446 -DITHARE_KSCOPE_SEED2=0x5a66d1f58b375f3b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x523186fed94db446 -DITHARE_KSCOPE_SEED2=0x5a66d1f58b375f3b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 416/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x41cf9c04d90fa6e4 -DITHARE_KSCOPE_SEED2=0x30ec0c6553268653 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x41cf9c04d90fa6e4 -DITHARE_KSCOPE_SEED2=0x30ec0c6553268653 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x41cf9c04d90fa6e4 -DITHARE_KSCOPE_SEED2=0x30ec0c6553268653 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 417/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xee65ea88086fd722 -DITHARE_KSCOPE_SEED2=0x453aeab9e26ca7e1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xee65ea88086fd722 -DITHARE_KSCOPE_SEED2=0x453aeab9e26ca7e1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xee65ea88086fd722 -DITHARE_KSCOPE_SEED2=0x453aeab9e26ca7e1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 418/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd65c07bbde989e57 -DITHARE_KSCOPE_SEED2=0xdf01cdee78034bf4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd65c07bbde989e57 -DITHARE_KSCOPE_SEED2=0xdf01cdee78034bf4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd65c07bbde989e57 -DITHARE_KSCOPE_SEED2=0xdf01cdee78034bf4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 419/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc78c28ce9311221a -DITHARE_KSCOPE_SEED2=0x38bc295a90971d60 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc78c28ce9311221a -DITHARE_KSCOPE_SEED2=0x38bc295a90971d60 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc78c28ce9311221a -DITHARE_KSCOPE_SEED2=0x38bc295a90971d60 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 420/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x62e6f34471f92d10 -DITHARE_KSCOPE_SEED2=0xc5c1af7a2c78fe73 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x62e6f34471f92d10 -DITHARE_KSCOPE_SEED2=0xc5c1af7a2c78fe73 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x62e6f34471f92d10 -DITHARE_KSCOPE_SEED2=0xc5c1af7a2c78fe73 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 421/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x99fc64d2a02bb3fa -DITHARE_KSCOPE_SEED2=0xd99d5ae8449924cd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x99fc64d2a02bb3fa -DITHARE_KSCOPE_SEED2=0xd99d5ae8449924cd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x99fc64d2a02bb3fa -DITHARE_KSCOPE_SEED2=0xd99d5ae8449924cd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 422/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x897bc29879e693c4 -DITHARE_KSCOPE_SEED2=0xbe49c0a03984a950 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x897bc29879e693c4 -DITHARE_KSCOPE_SEED2=0xbe49c0a03984a950 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x897bc29879e693c4 -DITHARE_KSCOPE_SEED2=0xbe49c0a03984a950 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 423/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x71366e8bafc025a1 -DITHARE_KSCOPE_SEED2=0xbf4e292b0ef987f3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x71366e8bafc025a1 -DITHARE_KSCOPE_SEED2=0xbf4e292b0ef987f3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x71366e8bafc025a1 -DITHARE_KSCOPE_SEED2=0xbf4e292b0ef987f3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 424/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x02625d267ec81a30 -DITHARE_KSCOPE_SEED2=0x521c26da7976619a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x02625d267ec81a30 -DITHARE_KSCOPE_SEED2=0x521c26da7976619a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x02625d267ec81a30 -DITHARE_KSCOPE_SEED2=0x521c26da7976619a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 425/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xa04b86029d592cdc -DITHARE_KSCOPE_SEED2=0xfab1749e238d7720 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xa04b86029d592cdc -DITHARE_KSCOPE_SEED2=0xfab1749e238d7720 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xa04b86029d592cdc -DITHARE_KSCOPE_SEED2=0xfab1749e238d7720 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 426/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85574cf3896d48f7 -DITHARE_KSCOPE_SEED2=0x516ebcf8852cb0a7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85574cf3896d48f7 -DITHARE_KSCOPE_SEED2=0x516ebcf8852cb0a7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85574cf3896d48f7 -DITHARE_KSCOPE_SEED2=0x516ebcf8852cb0a7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 427/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x91ce38a07a34f012 -DITHARE_KSCOPE_SEED2=0xa3dfa1d6cf840b18 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x91ce38a07a34f012 -DITHARE_KSCOPE_SEED2=0xa3dfa1d6cf840b18 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x91ce38a07a34f012 -DITHARE_KSCOPE_SEED2=0xa3dfa1d6cf840b18 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 428/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbe8d1ecb2f1c27a6 -DITHARE_KSCOPE_SEED2=0xda05440d4a549699 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbe8d1ecb2f1c27a6 -DITHARE_KSCOPE_SEED2=0xda05440d4a549699 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbe8d1ecb2f1c27a6 -DITHARE_KSCOPE_SEED2=0xda05440d4a549699 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 429/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x243eee60daac89f0 -DITHARE_KSCOPE_SEED2=0x06ec687abb461c3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x243eee60daac89f0 -DITHARE_KSCOPE_SEED2=0x06ec687abb461c3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x243eee60daac89f0 -DITHARE_KSCOPE_SEED2=0x06ec687abb461c3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 430/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xff2f1fbba365ec17 -DITHARE_KSCOPE_SEED2=0x90ec090862c59bd7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xff2f1fbba365ec17 -DITHARE_KSCOPE_SEED2=0x90ec090862c59bd7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xff2f1fbba365ec17 -DITHARE_KSCOPE_SEED2=0x90ec090862c59bd7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 431/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0e9ded668a6902d7 -DITHARE_KSCOPE_SEED2=0xe04356468dd865cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0e9ded668a6902d7 -DITHARE_KSCOPE_SEED2=0xe04356468dd865cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0e9ded668a6902d7 -DITHARE_KSCOPE_SEED2=0xe04356468dd865cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 432/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f9b93777ca64b25 -DITHARE_KSCOPE_SEED2=0x993a7650aa69a74c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f9b93777ca64b25 -DITHARE_KSCOPE_SEED2=0x993a7650aa69a74c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f9b93777ca64b25 -DITHARE_KSCOPE_SEED2=0x993a7650aa69a74c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 433/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x83b2eb7b5dd4c3d9 -DITHARE_KSCOPE_SEED2=0x51eca034901c7023 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x83b2eb7b5dd4c3d9 -DITHARE_KSCOPE_SEED2=0x51eca034901c7023 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x83b2eb7b5dd4c3d9 -DITHARE_KSCOPE_SEED2=0x51eca034901c7023 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 434/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x64cb45379d7f3fc8 -DITHARE_KSCOPE_SEED2=0x31cb9b759c50e242 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x64cb45379d7f3fc8 -DITHARE_KSCOPE_SEED2=0x31cb9b759c50e242 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x64cb45379d7f3fc8 -DITHARE_KSCOPE_SEED2=0x31cb9b759c50e242 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 435/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xab7a94c3e49e9603 -DITHARE_KSCOPE_SEED2=0x9cfec2451b04ff83 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xab7a94c3e49e9603 -DITHARE_KSCOPE_SEED2=0x9cfec2451b04ff83 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xab7a94c3e49e9603 -DITHARE_KSCOPE_SEED2=0x9cfec2451b04ff83 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 436/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa775f311984a53ca -DITHARE_KSCOPE_SEED2=0xb5f6a126d40e5334 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa775f311984a53ca -DITHARE_KSCOPE_SEED2=0xb5f6a126d40e5334 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa775f311984a53ca -DITHARE_KSCOPE_SEED2=0xb5f6a126d40e5334 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 437/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x8851f7122721a5c2 -DITHARE_KSCOPE_SEED2=0x7861fe81c0b57986 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x8851f7122721a5c2 -DITHARE_KSCOPE_SEED2=0x7861fe81c0b57986 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x8851f7122721a5c2 -DITHARE_KSCOPE_SEED2=0x7861fe81c0b57986 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 438/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x93e8146a429d7374 -DITHARE_KSCOPE_SEED2=0x3d3f55ffdd2fe771 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x93e8146a429d7374 -DITHARE_KSCOPE_SEED2=0x3d3f55ffdd2fe771 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x93e8146a429d7374 -DITHARE_KSCOPE_SEED2=0x3d3f55ffdd2fe771 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 439/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8039eedea41e21f8 -DITHARE_KSCOPE_SEED2=0x92a4a833159147d8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8039eedea41e21f8 -DITHARE_KSCOPE_SEED2=0x92a4a833159147d8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8039eedea41e21f8 -DITHARE_KSCOPE_SEED2=0x92a4a833159147d8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 440/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d674e3b66f75e4b -DITHARE_KSCOPE_SEED2=0x3ef15d243a112b98 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d674e3b66f75e4b -DITHARE_KSCOPE_SEED2=0x3ef15d243a112b98 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d674e3b66f75e4b -DITHARE_KSCOPE_SEED2=0x3ef15d243a112b98 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 441/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x80dfb3a82e49e986 -DITHARE_KSCOPE_SEED2=0x3a88f4046cf3023e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x80dfb3a82e49e986 -DITHARE_KSCOPE_SEED2=0x3a88f4046cf3023e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x80dfb3a82e49e986 -DITHARE_KSCOPE_SEED2=0x3a88f4046cf3023e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 442/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x35aaad2cbf07a415 -DITHARE_KSCOPE_SEED2=0xe50894d2cfd3332b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x35aaad2cbf07a415 -DITHARE_KSCOPE_SEED2=0xe50894d2cfd3332b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x35aaad2cbf07a415 -DITHARE_KSCOPE_SEED2=0xe50894d2cfd3332b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 443/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf07222e73d049aef -DITHARE_KSCOPE_SEED2=0xc9e280c76e596e60 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf07222e73d049aef -DITHARE_KSCOPE_SEED2=0xc9e280c76e596e60 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf07222e73d049aef -DITHARE_KSCOPE_SEED2=0xc9e280c76e596e60 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 444/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x709a2cfd7f1bc791 -DITHARE_KSCOPE_SEED2=0x1a32877b34b9f20c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x709a2cfd7f1bc791 -DITHARE_KSCOPE_SEED2=0x1a32877b34b9f20c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x709a2cfd7f1bc791 -DITHARE_KSCOPE_SEED2=0x1a32877b34b9f20c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 445/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x274acb6e48fc2d66 -DITHARE_KSCOPE_SEED2=0x28782a932fe383af -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x274acb6e48fc2d66 -DITHARE_KSCOPE_SEED2=0x28782a932fe383af -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x274acb6e48fc2d66 -DITHARE_KSCOPE_SEED2=0x28782a932fe383af -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 446/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa75885b563edad11 -DITHARE_KSCOPE_SEED2=0xfdfd5f513af44934 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa75885b563edad11 -DITHARE_KSCOPE_SEED2=0xfdfd5f513af44934 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa75885b563edad11 -DITHARE_KSCOPE_SEED2=0xfdfd5f513af44934 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 447/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x539819c8f57181e3 -DITHARE_KSCOPE_SEED2=0x39e2c90e94eefd30 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x539819c8f57181e3 -DITHARE_KSCOPE_SEED2=0x39e2c90e94eefd30 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x539819c8f57181e3 -DITHARE_KSCOPE_SEED2=0x39e2c90e94eefd30 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 448/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x350f07337d006eec -DITHARE_KSCOPE_SEED2=0x67c4d4e599817314 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x350f07337d006eec -DITHARE_KSCOPE_SEED2=0x67c4d4e599817314 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x350f07337d006eec -DITHARE_KSCOPE_SEED2=0x67c4d4e599817314 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 449/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x261ea8126df4ba57 -DITHARE_KSCOPE_SEED2=0x6181c5cfc330bab2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x261ea8126df4ba57 -DITHARE_KSCOPE_SEED2=0x6181c5cfc330bab2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x261ea8126df4ba57 -DITHARE_KSCOPE_SEED2=0x6181c5cfc330bab2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 450/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x57691113cb290245 -DITHARE_KSCOPE_SEED2=0x01dbb72e6d8353d1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x57691113cb290245 -DITHARE_KSCOPE_SEED2=0x01dbb72e6d8353d1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x57691113cb290245 -DITHARE_KSCOPE_SEED2=0x01dbb72e6d8353d1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 451/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2c4aace6b4264055 -DITHARE_KSCOPE_SEED2=0x208be31320632022 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2c4aace6b4264055 -DITHARE_KSCOPE_SEED2=0x208be31320632022 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2c4aace6b4264055 -DITHARE_KSCOPE_SEED2=0x208be31320632022 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 452/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0efee59e3d686e0b -DITHARE_KSCOPE_SEED2=0xec9fc07340284d05 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0efee59e3d686e0b -DITHARE_KSCOPE_SEED2=0xec9fc07340284d05 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0efee59e3d686e0b -DITHARE_KSCOPE_SEED2=0xec9fc07340284d05 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 453/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x8e993e8b96201e28 -DITHARE_KSCOPE_SEED2=0xbd6c88381379e0b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x8e993e8b96201e28 -DITHARE_KSCOPE_SEED2=0xbd6c88381379e0b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x8e993e8b96201e28 -DITHARE_KSCOPE_SEED2=0xbd6c88381379e0b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 454/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x000d17d7a3e9cf44 -DITHARE_KSCOPE_SEED2=0x9d9b6b7039532b2c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x000d17d7a3e9cf44 -DITHARE_KSCOPE_SEED2=0x9d9b6b7039532b2c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x000d17d7a3e9cf44 -DITHARE_KSCOPE_SEED2=0x9d9b6b7039532b2c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 455/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x07f18dabf8a2bc98 -DITHARE_KSCOPE_SEED2=0x91b5be056da47c5b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x07f18dabf8a2bc98 -DITHARE_KSCOPE_SEED2=0x91b5be056da47c5b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x07f18dabf8a2bc98 -DITHARE_KSCOPE_SEED2=0x91b5be056da47c5b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 456/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x62e1d3772811e0c5 -DITHARE_KSCOPE_SEED2=0xd7c5958cb371d591 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x62e1d3772811e0c5 -DITHARE_KSCOPE_SEED2=0xd7c5958cb371d591 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x62e1d3772811e0c5 -DITHARE_KSCOPE_SEED2=0xd7c5958cb371d591 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 457/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x43c9e74c10632546 -DITHARE_KSCOPE_SEED2=0xd45791309ce00162 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x43c9e74c10632546 -DITHARE_KSCOPE_SEED2=0xd45791309ce00162 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x43c9e74c10632546 -DITHARE_KSCOPE_SEED2=0xd45791309ce00162 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 458/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1ea8643c5c258891 -DITHARE_KSCOPE_SEED2=0x1f1e7a1143ad1e8b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1ea8643c5c258891 -DITHARE_KSCOPE_SEED2=0x1f1e7a1143ad1e8b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1ea8643c5c258891 -DITHARE_KSCOPE_SEED2=0x1f1e7a1143ad1e8b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 459/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfbce2eb64683dafe -DITHARE_KSCOPE_SEED2=0x89a7373ea33f332e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfbce2eb64683dafe -DITHARE_KSCOPE_SEED2=0x89a7373ea33f332e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfbce2eb64683dafe -DITHARE_KSCOPE_SEED2=0x89a7373ea33f332e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 460/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdaf3e13e055b8b2a -DITHARE_KSCOPE_SEED2=0x1162987f6b313dea -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdaf3e13e055b8b2a -DITHARE_KSCOPE_SEED2=0x1162987f6b313dea -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdaf3e13e055b8b2a -DITHARE_KSCOPE_SEED2=0x1162987f6b313dea -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 461/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x32e8f2b8ff13234e -DITHARE_KSCOPE_SEED2=0xce62033169997de2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x32e8f2b8ff13234e -DITHARE_KSCOPE_SEED2=0xce62033169997de2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x32e8f2b8ff13234e -DITHARE_KSCOPE_SEED2=0xce62033169997de2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 462/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5417cae64711855d -DITHARE_KSCOPE_SEED2=0xde29e7d6367a2c2f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5417cae64711855d -DITHARE_KSCOPE_SEED2=0xde29e7d6367a2c2f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5417cae64711855d -DITHARE_KSCOPE_SEED2=0xde29e7d6367a2c2f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 463/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x34ce59273c703e1f -DITHARE_KSCOPE_SEED2=0xf05e81273cf3026c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x34ce59273c703e1f -DITHARE_KSCOPE_SEED2=0xf05e81273cf3026c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x34ce59273c703e1f -DITHARE_KSCOPE_SEED2=0xf05e81273cf3026c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 464/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf659fcc9423b3a17 -DITHARE_KSCOPE_SEED2=0x1f63a42f848b7e78 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf659fcc9423b3a17 -DITHARE_KSCOPE_SEED2=0x1f63a42f848b7e78 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf659fcc9423b3a17 -DITHARE_KSCOPE_SEED2=0x1f63a42f848b7e78 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 465/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x63a3f60b3c6b73e8 -DITHARE_KSCOPE_SEED2=0x81e8b976fd779be9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x63a3f60b3c6b73e8 -DITHARE_KSCOPE_SEED2=0x81e8b976fd779be9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x63a3f60b3c6b73e8 -DITHARE_KSCOPE_SEED2=0x81e8b976fd779be9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 466/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x786e71d00a6b4965 -DITHARE_KSCOPE_SEED2=0x4eb4e002edc5cea5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x786e71d00a6b4965 -DITHARE_KSCOPE_SEED2=0x4eb4e002edc5cea5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x786e71d00a6b4965 -DITHARE_KSCOPE_SEED2=0x4eb4e002edc5cea5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 467/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85afc1e3e4449448 -DITHARE_KSCOPE_SEED2=0x83dc2fe6b7bfb003 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85afc1e3e4449448 -DITHARE_KSCOPE_SEED2=0x83dc2fe6b7bfb003 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85afc1e3e4449448 -DITHARE_KSCOPE_SEED2=0x83dc2fe6b7bfb003 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 468/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdc023642d18df1be -DITHARE_KSCOPE_SEED2=0x6564629afe2bf3f9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdc023642d18df1be -DITHARE_KSCOPE_SEED2=0x6564629afe2bf3f9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdc023642d18df1be -DITHARE_KSCOPE_SEED2=0x6564629afe2bf3f9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 469/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x92c9159950a94815 -DITHARE_KSCOPE_SEED2=0xdd6487ed904e966d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x92c9159950a94815 -DITHARE_KSCOPE_SEED2=0xdd6487ed904e966d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x92c9159950a94815 -DITHARE_KSCOPE_SEED2=0xdd6487ed904e966d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 470/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa31a09530ab168ef -DITHARE_KSCOPE_SEED2=0x6144b4bb4bd2abf6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa31a09530ab168ef -DITHARE_KSCOPE_SEED2=0x6144b4bb4bd2abf6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa31a09530ab168ef -DITHARE_KSCOPE_SEED2=0x6144b4bb4bd2abf6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 471/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x128cf5a9a191bbdb -DITHARE_KSCOPE_SEED2=0x1c56bd3e46e0fd8a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x128cf5a9a191bbdb -DITHARE_KSCOPE_SEED2=0x1c56bd3e46e0fd8a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x128cf5a9a191bbdb -DITHARE_KSCOPE_SEED2=0x1c56bd3e46e0fd8a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 472/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb2f134c2ff95b369 -DITHARE_KSCOPE_SEED2=0x53322a176f15ad97 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb2f134c2ff95b369 -DITHARE_KSCOPE_SEED2=0x53322a176f15ad97 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb2f134c2ff95b369 -DITHARE_KSCOPE_SEED2=0x53322a176f15ad97 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 473/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc2de935dac5ade2b -DITHARE_KSCOPE_SEED2=0x456993fb6621ab0e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc2de935dac5ade2b -DITHARE_KSCOPE_SEED2=0x456993fb6621ab0e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc2de935dac5ade2b -DITHARE_KSCOPE_SEED2=0x456993fb6621ab0e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 474/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9645b736dad3e0a5 -DITHARE_KSCOPE_SEED2=0xf434755d257844bd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9645b736dad3e0a5 -DITHARE_KSCOPE_SEED2=0xf434755d257844bd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9645b736dad3e0a5 -DITHARE_KSCOPE_SEED2=0xf434755d257844bd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 475/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4f02926aae37c7b3 -DITHARE_KSCOPE_SEED2=0xe65aec0497ff66bd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4f02926aae37c7b3 -DITHARE_KSCOPE_SEED2=0xe65aec0497ff66bd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4f02926aae37c7b3 -DITHARE_KSCOPE_SEED2=0xe65aec0497ff66bd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 476/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdfb31da74c7ab771 -DITHARE_KSCOPE_SEED2=0x627a0196a424cd64 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdfb31da74c7ab771 -DITHARE_KSCOPE_SEED2=0x627a0196a424cd64 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdfb31da74c7ab771 -DITHARE_KSCOPE_SEED2=0x627a0196a424cd64 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 477/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x02f2704de2f3d967 -DITHARE_KSCOPE_SEED2=0x1cfec59b6609753f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x02f2704de2f3d967 -DITHARE_KSCOPE_SEED2=0x1cfec59b6609753f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x02f2704de2f3d967 -DITHARE_KSCOPE_SEED2=0x1cfec59b6609753f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 478/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbe82b4adeda2f529 -DITHARE_KSCOPE_SEED2=0x6f3603d496a5786e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbe82b4adeda2f529 -DITHARE_KSCOPE_SEED2=0x6f3603d496a5786e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbe82b4adeda2f529 -DITHARE_KSCOPE_SEED2=0x6f3603d496a5786e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 479/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x36965b7fba2394b5 -DITHARE_KSCOPE_SEED2=0xfde375b11902f3e1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x36965b7fba2394b5 -DITHARE_KSCOPE_SEED2=0xfde375b11902f3e1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x36965b7fba2394b5 -DITHARE_KSCOPE_SEED2=0xfde375b11902f3e1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 480/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe4bdfea2b7cb11e0 -DITHARE_KSCOPE_SEED2=0x19456d30351eaa2d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe4bdfea2b7cb11e0 -DITHARE_KSCOPE_SEED2=0x19456d30351eaa2d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe4bdfea2b7cb11e0 -DITHARE_KSCOPE_SEED2=0x19456d30351eaa2d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 481/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xa2bb8993178436ca -DITHARE_KSCOPE_SEED2=0xcd11dd0c7561d35e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xa2bb8993178436ca -DITHARE_KSCOPE_SEED2=0xcd11dd0c7561d35e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xa2bb8993178436ca -DITHARE_KSCOPE_SEED2=0xcd11dd0c7561d35e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 482/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x531c9ae9a8147448 -DITHARE_KSCOPE_SEED2=0x8ec3b94ed6b462db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x531c9ae9a8147448 -DITHARE_KSCOPE_SEED2=0x8ec3b94ed6b462db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x531c9ae9a8147448 -DITHARE_KSCOPE_SEED2=0x8ec3b94ed6b462db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 483/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4a353db9f644563e -DITHARE_KSCOPE_SEED2=0xcd57e8d1688133e0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4a353db9f644563e -DITHARE_KSCOPE_SEED2=0xcd57e8d1688133e0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4a353db9f644563e -DITHARE_KSCOPE_SEED2=0xcd57e8d1688133e0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 484/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe9e0e57529e9de38 -DITHARE_KSCOPE_SEED2=0x0fbfc59df3698701 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe9e0e57529e9de38 -DITHARE_KSCOPE_SEED2=0x0fbfc59df3698701 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe9e0e57529e9de38 -DITHARE_KSCOPE_SEED2=0x0fbfc59df3698701 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 485/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x1eecb65204d96f2d -DITHARE_KSCOPE_SEED2=0xca349e1e92308564 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x1eecb65204d96f2d -DITHARE_KSCOPE_SEED2=0xca349e1e92308564 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x1eecb65204d96f2d -DITHARE_KSCOPE_SEED2=0xca349e1e92308564 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 486/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4e8f3114333a1f5c -DITHARE_KSCOPE_SEED2=0xe6632032ecb818e5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4e8f3114333a1f5c -DITHARE_KSCOPE_SEED2=0xe6632032ecb818e5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4e8f3114333a1f5c -DITHARE_KSCOPE_SEED2=0xe6632032ecb818e5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 487/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0e69e7297e4f70a0 -DITHARE_KSCOPE_SEED2=0xf134cdbfc80b8b83 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0e69e7297e4f70a0 -DITHARE_KSCOPE_SEED2=0xf134cdbfc80b8b83 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0e69e7297e4f70a0 -DITHARE_KSCOPE_SEED2=0xf134cdbfc80b8b83 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 488/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb71a1828754c3dc3 -DITHARE_KSCOPE_SEED2=0x67269e0f9de2b3f6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb71a1828754c3dc3 -DITHARE_KSCOPE_SEED2=0x67269e0f9de2b3f6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb71a1828754c3dc3 -DITHARE_KSCOPE_SEED2=0x67269e0f9de2b3f6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 489/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xcc441d30cff494e0 -DITHARE_KSCOPE_SEED2=0x7edbb8eb33690429 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xcc441d30cff494e0 -DITHARE_KSCOPE_SEED2=0x7edbb8eb33690429 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xcc441d30cff494e0 -DITHARE_KSCOPE_SEED2=0x7edbb8eb33690429 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 490/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4208a0fec3a3d69b -DITHARE_KSCOPE_SEED2=0xb73820d17a374a32 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4208a0fec3a3d69b -DITHARE_KSCOPE_SEED2=0xb73820d17a374a32 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4208a0fec3a3d69b -DITHARE_KSCOPE_SEED2=0xb73820d17a374a32 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 491/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x37f2a1339c3cd02e -DITHARE_KSCOPE_SEED2=0x904498e354460697 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x37f2a1339c3cd02e -DITHARE_KSCOPE_SEED2=0x904498e354460697 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x37f2a1339c3cd02e -DITHARE_KSCOPE_SEED2=0x904498e354460697 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 492/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf1903e4e761b479b -DITHARE_KSCOPE_SEED2=0x685b15341ceafb2d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf1903e4e761b479b -DITHARE_KSCOPE_SEED2=0x685b15341ceafb2d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf1903e4e761b479b -DITHARE_KSCOPE_SEED2=0x685b15341ceafb2d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 493/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x650f799299c8f2da -DITHARE_KSCOPE_SEED2=0x0468ade7d14487df -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x650f799299c8f2da -DITHARE_KSCOPE_SEED2=0x0468ade7d14487df -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x650f799299c8f2da -DITHARE_KSCOPE_SEED2=0x0468ade7d14487df -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 494/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x82874b80d3b81155 -DITHARE_KSCOPE_SEED2=0x8117c28a9cb132b2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x82874b80d3b81155 -DITHARE_KSCOPE_SEED2=0x8117c28a9cb132b2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x82874b80d3b81155 -DITHARE_KSCOPE_SEED2=0x8117c28a9cb132b2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 495/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1862f22dc2603aee -DITHARE_KSCOPE_SEED2=0x74f7526993c0b600 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1862f22dc2603aee -DITHARE_KSCOPE_SEED2=0x74f7526993c0b600 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1862f22dc2603aee -DITHARE_KSCOPE_SEED2=0x74f7526993c0b600 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 496/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x611b7a84de1acda2 -DITHARE_KSCOPE_SEED2=0x64f3a7242962ec1b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x611b7a84de1acda2 -DITHARE_KSCOPE_SEED2=0x64f3a7242962ec1b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x611b7a84de1acda2 -DITHARE_KSCOPE_SEED2=0x64f3a7242962ec1b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 497/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x8e946b3f474affa6 -DITHARE_KSCOPE_SEED2=0xd38922c31bc3e252 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x8e946b3f474affa6 -DITHARE_KSCOPE_SEED2=0xd38922c31bc3e252 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x8e946b3f474affa6 -DITHARE_KSCOPE_SEED2=0xd38922c31bc3e252 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 498/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x205b40544214feee -DITHARE_KSCOPE_SEED2=0x6410c24aaac1394d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x205b40544214feee -DITHARE_KSCOPE_SEED2=0x6410c24aaac1394d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x205b40544214feee -DITHARE_KSCOPE_SEED2=0x6410c24aaac1394d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 499/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6c38b94fc2e4d3bf -DITHARE_KSCOPE_SEED2=0xe8ed644716dbc5cc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6c38b94fc2e4d3bf -DITHARE_KSCOPE_SEED2=0xe8ed644716dbc5cc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6c38b94fc2e4d3bf -DITHARE_KSCOPE_SEED2=0xe8ed644716dbc5cc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 500/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2529e2fa1c47b62b -DITHARE_KSCOPE_SEED2=0x5cd4f54b4a0a5ed9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2529e2fa1c47b62b -DITHARE_KSCOPE_SEED2=0x5cd4f54b4a0a5ed9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2529e2fa1c47b62b -DITHARE_KSCOPE_SEED2=0x5cd4f54b4a0a5ed9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 501/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x9bca063b7a2d802d -DITHARE_KSCOPE_SEED2=0x30f49f740e17c63e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x9bca063b7a2d802d -DITHARE_KSCOPE_SEED2=0x30f49f740e17c63e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x9bca063b7a2d802d -DITHARE_KSCOPE_SEED2=0x30f49f740e17c63e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 502/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x659377e50fe1eeff -DITHARE_KSCOPE_SEED2=0x4757224cade0022c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x659377e50fe1eeff -DITHARE_KSCOPE_SEED2=0x4757224cade0022c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x659377e50fe1eeff -DITHARE_KSCOPE_SEED2=0x4757224cade0022c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 503/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3771d2a524b90f5f -DITHARE_KSCOPE_SEED2=0x480889275b7973ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3771d2a524b90f5f -DITHARE_KSCOPE_SEED2=0x480889275b7973ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3771d2a524b90f5f -DITHARE_KSCOPE_SEED2=0x480889275b7973ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 504/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfae1282cfad0c360 -DITHARE_KSCOPE_SEED2=0x8e1babcddb07b81b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfae1282cfad0c360 -DITHARE_KSCOPE_SEED2=0x8e1babcddb07b81b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfae1282cfad0c360 -DITHARE_KSCOPE_SEED2=0x8e1babcddb07b81b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 505/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x9a04519c41643e84 -DITHARE_KSCOPE_SEED2=0x17ab0c2a030c433d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x9a04519c41643e84 -DITHARE_KSCOPE_SEED2=0x17ab0c2a030c433d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x9a04519c41643e84 -DITHARE_KSCOPE_SEED2=0x17ab0c2a030c433d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 506/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x94b02c40e6332035 -DITHARE_KSCOPE_SEED2=0x084e8cd7facc115a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x94b02c40e6332035 -DITHARE_KSCOPE_SEED2=0x084e8cd7facc115a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x94b02c40e6332035 -DITHARE_KSCOPE_SEED2=0x084e8cd7facc115a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 507/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa3f66c0bcd327522 -DITHARE_KSCOPE_SEED2=0x9f24f0550d13f47b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa3f66c0bcd327522 -DITHARE_KSCOPE_SEED2=0x9f24f0550d13f47b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa3f66c0bcd327522 -DITHARE_KSCOPE_SEED2=0x9f24f0550d13f47b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 508/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x53c070d040f02020 -DITHARE_KSCOPE_SEED2=0x1d12178fc65fc98b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x53c070d040f02020 -DITHARE_KSCOPE_SEED2=0x1d12178fc65fc98b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x53c070d040f02020 -DITHARE_KSCOPE_SEED2=0x1d12178fc65fc98b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 509/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xd918610cb38ac584 -DITHARE_KSCOPE_SEED2=0x317dfe899b27f566 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xd918610cb38ac584 -DITHARE_KSCOPE_SEED2=0x317dfe899b27f566 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xd918610cb38ac584 -DITHARE_KSCOPE_SEED2=0x317dfe899b27f566 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 510/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4a05a82ad73f5001 -DITHARE_KSCOPE_SEED2=0x684b9fdb0945128d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4a05a82ad73f5001 -DITHARE_KSCOPE_SEED2=0x684b9fdb0945128d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4a05a82ad73f5001 -DITHARE_KSCOPE_SEED2=0x684b9fdb0945128d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 511/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbad7f1924319a00 -DITHARE_KSCOPE_SEED2=0x968196c082158970 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbad7f1924319a00 -DITHARE_KSCOPE_SEED2=0x968196c082158970 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbad7f1924319a00 -DITHARE_KSCOPE_SEED2=0x968196c082158970 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 512/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3839bf57417762ea -DITHARE_KSCOPE_SEED2=0xb5781b5e1cda9fd2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3839bf57417762ea -DITHARE_KSCOPE_SEED2=0xb5781b5e1cda9fd2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3839bf57417762ea -DITHARE_KSCOPE_SEED2=0xb5781b5e1cda9fd2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 513/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xe47c860ce2b55471 -DITHARE_KSCOPE_SEED2=0xa32f9b845bd7c491 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xe47c860ce2b55471 -DITHARE_KSCOPE_SEED2=0xa32f9b845bd7c491 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xe47c860ce2b55471 -DITHARE_KSCOPE_SEED2=0xa32f9b845bd7c491 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 514/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc9381270f22b2cb -DITHARE_KSCOPE_SEED2=0xee1ce81d2b1dd46e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc9381270f22b2cb -DITHARE_KSCOPE_SEED2=0xee1ce81d2b1dd46e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc9381270f22b2cb -DITHARE_KSCOPE_SEED2=0xee1ce81d2b1dd46e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 515/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x38c2b6a8877e2174 -DITHARE_KSCOPE_SEED2=0x4b1d89db6d184e1b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x38c2b6a8877e2174 -DITHARE_KSCOPE_SEED2=0x4b1d89db6d184e1b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x38c2b6a8877e2174 -DITHARE_KSCOPE_SEED2=0x4b1d89db6d184e1b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 516/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8abafa316a742a13 -DITHARE_KSCOPE_SEED2=0x10ac709691ce965e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8abafa316a742a13 -DITHARE_KSCOPE_SEED2=0x10ac709691ce965e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8abafa316a742a13 -DITHARE_KSCOPE_SEED2=0x10ac709691ce965e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 517/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x047a2ab9f097bfe4 -DITHARE_KSCOPE_SEED2=0x52fb8c163de04f07 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x047a2ab9f097bfe4 -DITHARE_KSCOPE_SEED2=0x52fb8c163de04f07 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x047a2ab9f097bfe4 -DITHARE_KSCOPE_SEED2=0x52fb8c163de04f07 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 518/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x96a40c34fe18d2b3 -DITHARE_KSCOPE_SEED2=0xf3f39c135d58331b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x96a40c34fe18d2b3 -DITHARE_KSCOPE_SEED2=0xf3f39c135d58331b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x96a40c34fe18d2b3 -DITHARE_KSCOPE_SEED2=0xf3f39c135d58331b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 519/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ca6b2c046549831 -DITHARE_KSCOPE_SEED2=0xadd2618a35044fec -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ca6b2c046549831 -DITHARE_KSCOPE_SEED2=0xadd2618a35044fec -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ca6b2c046549831 -DITHARE_KSCOPE_SEED2=0xadd2618a35044fec -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 520/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x66e2a4bc2eb4abbf -DITHARE_KSCOPE_SEED2=0xf36a7720c4e08d91 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x66e2a4bc2eb4abbf -DITHARE_KSCOPE_SEED2=0xf36a7720c4e08d91 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x66e2a4bc2eb4abbf -DITHARE_KSCOPE_SEED2=0xf36a7720c4e08d91 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 521/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x73ca7c80068a3e34 -DITHARE_KSCOPE_SEED2=0x15e404dcdf749954 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x73ca7c80068a3e34 -DITHARE_KSCOPE_SEED2=0x15e404dcdf749954 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x73ca7c80068a3e34 -DITHARE_KSCOPE_SEED2=0x15e404dcdf749954 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 522/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4c974372e0418177 -DITHARE_KSCOPE_SEED2=0xc214a5b0526ab41c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4c974372e0418177 -DITHARE_KSCOPE_SEED2=0xc214a5b0526ab41c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4c974372e0418177 -DITHARE_KSCOPE_SEED2=0xc214a5b0526ab41c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 523/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x90b04396ac3cc260 -DITHARE_KSCOPE_SEED2=0x0ca3db01dd24d91b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x90b04396ac3cc260 -DITHARE_KSCOPE_SEED2=0x0ca3db01dd24d91b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x90b04396ac3cc260 -DITHARE_KSCOPE_SEED2=0x0ca3db01dd24d91b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 524/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x785b1524aecfdf10 -DITHARE_KSCOPE_SEED2=0xdc29f48943cc192c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x785b1524aecfdf10 -DITHARE_KSCOPE_SEED2=0xdc29f48943cc192c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x785b1524aecfdf10 -DITHARE_KSCOPE_SEED2=0xdc29f48943cc192c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 525/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x147cad3b9f950ecb -DITHARE_KSCOPE_SEED2=0x9a49a665204f6919 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x147cad3b9f950ecb -DITHARE_KSCOPE_SEED2=0x9a49a665204f6919 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x147cad3b9f950ecb -DITHARE_KSCOPE_SEED2=0x9a49a665204f6919 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 526/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x46c450b41e796cec -DITHARE_KSCOPE_SEED2=0xa4c60731bc011bf0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x46c450b41e796cec -DITHARE_KSCOPE_SEED2=0xa4c60731bc011bf0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x46c450b41e796cec -DITHARE_KSCOPE_SEED2=0xa4c60731bc011bf0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 527/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc09ad2619de1fee2 -DITHARE_KSCOPE_SEED2=0x87a3ce1bc4eba5c9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc09ad2619de1fee2 -DITHARE_KSCOPE_SEED2=0x87a3ce1bc4eba5c9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc09ad2619de1fee2 -DITHARE_KSCOPE_SEED2=0x87a3ce1bc4eba5c9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 528/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd1e29beddbe8f000 -DITHARE_KSCOPE_SEED2=0xddae2ce33e3d801e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd1e29beddbe8f000 -DITHARE_KSCOPE_SEED2=0xddae2ce33e3d801e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd1e29beddbe8f000 -DITHARE_KSCOPE_SEED2=0xddae2ce33e3d801e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 529/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xec1c22b64c9e86b7 -DITHARE_KSCOPE_SEED2=0xe942345ad058f527 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xec1c22b64c9e86b7 -DITHARE_KSCOPE_SEED2=0xe942345ad058f527 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xec1c22b64c9e86b7 -DITHARE_KSCOPE_SEED2=0xe942345ad058f527 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 530/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb4bce13d32d7129c -DITHARE_KSCOPE_SEED2=0x0e42dd755e4aa0e2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb4bce13d32d7129c -DITHARE_KSCOPE_SEED2=0x0e42dd755e4aa0e2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb4bce13d32d7129c -DITHARE_KSCOPE_SEED2=0x0e42dd755e4aa0e2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 531/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac1ea6d3d9ee27d3 -DITHARE_KSCOPE_SEED2=0x0c4b5252f3d04c23 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac1ea6d3d9ee27d3 -DITHARE_KSCOPE_SEED2=0x0c4b5252f3d04c23 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac1ea6d3d9ee27d3 -DITHARE_KSCOPE_SEED2=0x0c4b5252f3d04c23 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 532/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x396d5e52d89b4384 -DITHARE_KSCOPE_SEED2=0x3f32db3ab211785a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x396d5e52d89b4384 -DITHARE_KSCOPE_SEED2=0x3f32db3ab211785a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x396d5e52d89b4384 -DITHARE_KSCOPE_SEED2=0x3f32db3ab211785a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 533/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc3bc4ab8b5f0355b -DITHARE_KSCOPE_SEED2=0xae61403b5f6df356 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc3bc4ab8b5f0355b -DITHARE_KSCOPE_SEED2=0xae61403b5f6df356 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc3bc4ab8b5f0355b -DITHARE_KSCOPE_SEED2=0xae61403b5f6df356 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 534/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdb2ee85413cdf722 -DITHARE_KSCOPE_SEED2=0x94c5d09811edd0ce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdb2ee85413cdf722 -DITHARE_KSCOPE_SEED2=0x94c5d09811edd0ce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdb2ee85413cdf722 -DITHARE_KSCOPE_SEED2=0x94c5d09811edd0ce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 535/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcfdf347929a7eace -DITHARE_KSCOPE_SEED2=0x9cce09b1fbff6ad1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcfdf347929a7eace -DITHARE_KSCOPE_SEED2=0x9cce09b1fbff6ad1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcfdf347929a7eace -DITHARE_KSCOPE_SEED2=0x9cce09b1fbff6ad1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 536/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x24045654533d1ba3 -DITHARE_KSCOPE_SEED2=0x99eb23986098edd3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x24045654533d1ba3 -DITHARE_KSCOPE_SEED2=0x99eb23986098edd3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x24045654533d1ba3 -DITHARE_KSCOPE_SEED2=0x99eb23986098edd3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 537/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x5d79ec71e5f6e528 -DITHARE_KSCOPE_SEED2=0x7e36e5c2602b88eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x5d79ec71e5f6e528 -DITHARE_KSCOPE_SEED2=0x7e36e5c2602b88eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x5d79ec71e5f6e528 -DITHARE_KSCOPE_SEED2=0x7e36e5c2602b88eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 538/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe62be184ea936054 -DITHARE_KSCOPE_SEED2=0xa366b22c52613916 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe62be184ea936054 -DITHARE_KSCOPE_SEED2=0xa366b22c52613916 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe62be184ea936054 -DITHARE_KSCOPE_SEED2=0xa366b22c52613916 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 539/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x50a2d5d53a15cdd1 -DITHARE_KSCOPE_SEED2=0x958fac37a79bbf5c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x50a2d5d53a15cdd1 -DITHARE_KSCOPE_SEED2=0x958fac37a79bbf5c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x50a2d5d53a15cdd1 -DITHARE_KSCOPE_SEED2=0x958fac37a79bbf5c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 540/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5c0d73f4365a9b31 -DITHARE_KSCOPE_SEED2=0x5a6948093fcd00ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5c0d73f4365a9b31 -DITHARE_KSCOPE_SEED2=0x5a6948093fcd00ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5c0d73f4365a9b31 -DITHARE_KSCOPE_SEED2=0x5a6948093fcd00ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 541/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x616e8a7f731add1a -DITHARE_KSCOPE_SEED2=0x6ab72df04dbb25fe -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x616e8a7f731add1a -DITHARE_KSCOPE_SEED2=0x6ab72df04dbb25fe -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x616e8a7f731add1a -DITHARE_KSCOPE_SEED2=0x6ab72df04dbb25fe -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 542/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf10f6adf15bfa4fa -DITHARE_KSCOPE_SEED2=0x5ad523fcc1026f28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf10f6adf15bfa4fa -DITHARE_KSCOPE_SEED2=0x5ad523fcc1026f28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf10f6adf15bfa4fa -DITHARE_KSCOPE_SEED2=0x5ad523fcc1026f28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 543/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc9ac5c20cac0649 -DITHARE_KSCOPE_SEED2=0x3482e56a95c225c8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc9ac5c20cac0649 -DITHARE_KSCOPE_SEED2=0x3482e56a95c225c8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc9ac5c20cac0649 -DITHARE_KSCOPE_SEED2=0x3482e56a95c225c8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 544/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xecb936bd9992d608 -DITHARE_KSCOPE_SEED2=0xf123ec54b6971a19 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xecb936bd9992d608 -DITHARE_KSCOPE_SEED2=0xf123ec54b6971a19 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xecb936bd9992d608 -DITHARE_KSCOPE_SEED2=0xf123ec54b6971a19 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 545/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xdb72ac2e2723c06f -DITHARE_KSCOPE_SEED2=0x7aa8e73e0423b4c9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xdb72ac2e2723c06f -DITHARE_KSCOPE_SEED2=0x7aa8e73e0423b4c9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xdb72ac2e2723c06f -DITHARE_KSCOPE_SEED2=0x7aa8e73e0423b4c9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 546/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbbac75640a8c0c6 -DITHARE_KSCOPE_SEED2=0x6c207542fe01571c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbbac75640a8c0c6 -DITHARE_KSCOPE_SEED2=0x6c207542fe01571c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbbac75640a8c0c6 -DITHARE_KSCOPE_SEED2=0x6c207542fe01571c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 547/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9ac59c68b1a6d5c4 -DITHARE_KSCOPE_SEED2=0x1328379938f279d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9ac59c68b1a6d5c4 -DITHARE_KSCOPE_SEED2=0x1328379938f279d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9ac59c68b1a6d5c4 -DITHARE_KSCOPE_SEED2=0x1328379938f279d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 548/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa607547dfa29d5eb -DITHARE_KSCOPE_SEED2=0x3044a7196056b0ab -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa607547dfa29d5eb -DITHARE_KSCOPE_SEED2=0x3044a7196056b0ab -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa607547dfa29d5eb -DITHARE_KSCOPE_SEED2=0x3044a7196056b0ab -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 549/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xcf5c67a7c5cab7cb -DITHARE_KSCOPE_SEED2=0xac79b49e49d34bc0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xcf5c67a7c5cab7cb -DITHARE_KSCOPE_SEED2=0xac79b49e49d34bc0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xcf5c67a7c5cab7cb -DITHARE_KSCOPE_SEED2=0xac79b49e49d34bc0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 550/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6f9bffd761f7aebd -DITHARE_KSCOPE_SEED2=0xbb93e413ba66eb2c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6f9bffd761f7aebd -DITHARE_KSCOPE_SEED2=0xbb93e413ba66eb2c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6f9bffd761f7aebd -DITHARE_KSCOPE_SEED2=0xbb93e413ba66eb2c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 551/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x54800798a0f57e0f -DITHARE_KSCOPE_SEED2=0xd090e2fa69f861c2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x54800798a0f57e0f -DITHARE_KSCOPE_SEED2=0xd090e2fa69f861c2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x54800798a0f57e0f -DITHARE_KSCOPE_SEED2=0xd090e2fa69f861c2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 552/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xec9b2c2ad08e027e -DITHARE_KSCOPE_SEED2=0x37d0abcf9dd56091 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xec9b2c2ad08e027e -DITHARE_KSCOPE_SEED2=0x37d0abcf9dd56091 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xec9b2c2ad08e027e -DITHARE_KSCOPE_SEED2=0x37d0abcf9dd56091 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 553/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xa6deee3f1fcf23c5 -DITHARE_KSCOPE_SEED2=0x93633c2779791231 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xa6deee3f1fcf23c5 -DITHARE_KSCOPE_SEED2=0x93633c2779791231 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xa6deee3f1fcf23c5 -DITHARE_KSCOPE_SEED2=0x93633c2779791231 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 554/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x25097b1e691fa628 -DITHARE_KSCOPE_SEED2=0x1460078e51016d18 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x25097b1e691fa628 -DITHARE_KSCOPE_SEED2=0x1460078e51016d18 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x25097b1e691fa628 -DITHARE_KSCOPE_SEED2=0x1460078e51016d18 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 555/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5709d5e7d4c0af81 -DITHARE_KSCOPE_SEED2=0x6297e3faba8ffff9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5709d5e7d4c0af81 -DITHARE_KSCOPE_SEED2=0x6297e3faba8ffff9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5709d5e7d4c0af81 -DITHARE_KSCOPE_SEED2=0x6297e3faba8ffff9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 556/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd14f2346af7cf402 -DITHARE_KSCOPE_SEED2=0x36ca92ac0edbc159 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd14f2346af7cf402 -DITHARE_KSCOPE_SEED2=0x36ca92ac0edbc159 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd14f2346af7cf402 -DITHARE_KSCOPE_SEED2=0x36ca92ac0edbc159 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 557/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x4c72f3db20e040e0 -DITHARE_KSCOPE_SEED2=0x25066031109ff77f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x4c72f3db20e040e0 -DITHARE_KSCOPE_SEED2=0x25066031109ff77f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x4c72f3db20e040e0 -DITHARE_KSCOPE_SEED2=0x25066031109ff77f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 558/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6c4d64cb0ce51d3e -DITHARE_KSCOPE_SEED2=0xe46a2e092b002745 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6c4d64cb0ce51d3e -DITHARE_KSCOPE_SEED2=0xe46a2e092b002745 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6c4d64cb0ce51d3e -DITHARE_KSCOPE_SEED2=0xe46a2e092b002745 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 559/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9d0444f1410789f7 -DITHARE_KSCOPE_SEED2=0xe44fbc5498d6a2a2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9d0444f1410789f7 -DITHARE_KSCOPE_SEED2=0xe44fbc5498d6a2a2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9d0444f1410789f7 -DITHARE_KSCOPE_SEED2=0xe44fbc5498d6a2a2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 560/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc77aaad4f4c11b5a -DITHARE_KSCOPE_SEED2=0x5fef443499c5497b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc77aaad4f4c11b5a -DITHARE_KSCOPE_SEED2=0x5fef443499c5497b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc77aaad4f4c11b5a -DITHARE_KSCOPE_SEED2=0x5fef443499c5497b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 561/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x679d0b2e5cd59e75 -DITHARE_KSCOPE_SEED2=0x7968935c372978d2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x679d0b2e5cd59e75 -DITHARE_KSCOPE_SEED2=0x7968935c372978d2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x679d0b2e5cd59e75 -DITHARE_KSCOPE_SEED2=0x7968935c372978d2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 562/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfcfff8cda5066607 -DITHARE_KSCOPE_SEED2=0x2a35a0e054727b1a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfcfff8cda5066607 -DITHARE_KSCOPE_SEED2=0x2a35a0e054727b1a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfcfff8cda5066607 -DITHARE_KSCOPE_SEED2=0x2a35a0e054727b1a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 563/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4cbd389f525e855b -DITHARE_KSCOPE_SEED2=0x5ee263055a002411 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4cbd389f525e855b -DITHARE_KSCOPE_SEED2=0x5ee263055a002411 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4cbd389f525e855b -DITHARE_KSCOPE_SEED2=0x5ee263055a002411 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 564/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4d326cfe7ebe23c4 -DITHARE_KSCOPE_SEED2=0x2fea0ad62277fa1a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4d326cfe7ebe23c4 -DITHARE_KSCOPE_SEED2=0x2fea0ad62277fa1a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4d326cfe7ebe23c4 -DITHARE_KSCOPE_SEED2=0x2fea0ad62277fa1a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 565/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x528cc70e80bc3006 -DITHARE_KSCOPE_SEED2=0x694c5a61a205663c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x528cc70e80bc3006 -DITHARE_KSCOPE_SEED2=0x694c5a61a205663c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x528cc70e80bc3006 -DITHARE_KSCOPE_SEED2=0x694c5a61a205663c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 566/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6a56ef89987d86e9 -DITHARE_KSCOPE_SEED2=0xa4052a6b608a89b5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6a56ef89987d86e9 -DITHARE_KSCOPE_SEED2=0xa4052a6b608a89b5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6a56ef89987d86e9 -DITHARE_KSCOPE_SEED2=0xa4052a6b608a89b5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 567/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac23d95dad1a2aa6 -DITHARE_KSCOPE_SEED2=0x545b521dfb471624 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac23d95dad1a2aa6 -DITHARE_KSCOPE_SEED2=0x545b521dfb471624 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac23d95dad1a2aa6 -DITHARE_KSCOPE_SEED2=0x545b521dfb471624 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 568/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x515e735630a874e0 -DITHARE_KSCOPE_SEED2=0x309b718ed7cfc0da -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x515e735630a874e0 -DITHARE_KSCOPE_SEED2=0x309b718ed7cfc0da -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x515e735630a874e0 -DITHARE_KSCOPE_SEED2=0x309b718ed7cfc0da -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 569/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x507dac3959ddeacb -DITHARE_KSCOPE_SEED2=0x735176f0319a350b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x507dac3959ddeacb -DITHARE_KSCOPE_SEED2=0x735176f0319a350b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x507dac3959ddeacb -DITHARE_KSCOPE_SEED2=0x735176f0319a350b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 570/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x699d45d03b2b7ba2 -DITHARE_KSCOPE_SEED2=0x95fa9e225b2b0211 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x699d45d03b2b7ba2 -DITHARE_KSCOPE_SEED2=0x95fa9e225b2b0211 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x699d45d03b2b7ba2 -DITHARE_KSCOPE_SEED2=0x95fa9e225b2b0211 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 571/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5a719085814c20e8 -DITHARE_KSCOPE_SEED2=0xe53e19e055f41381 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5a719085814c20e8 -DITHARE_KSCOPE_SEED2=0xe53e19e055f41381 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5a719085814c20e8 -DITHARE_KSCOPE_SEED2=0xe53e19e055f41381 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 572/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ba4cab0e8a31618 -DITHARE_KSCOPE_SEED2=0x318b396072ba4bc6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ba4cab0e8a31618 -DITHARE_KSCOPE_SEED2=0x318b396072ba4bc6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ba4cab0e8a31618 -DITHARE_KSCOPE_SEED2=0x318b396072ba4bc6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 573/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xee22d1a5d84b24a0 -DITHARE_KSCOPE_SEED2=0xa9eb37286af69498 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xee22d1a5d84b24a0 -DITHARE_KSCOPE_SEED2=0xa9eb37286af69498 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xee22d1a5d84b24a0 -DITHARE_KSCOPE_SEED2=0xa9eb37286af69498 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 574/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc1ba4f41471eaa30 -DITHARE_KSCOPE_SEED2=0x9b07dfb4ffbf9cbb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc1ba4f41471eaa30 -DITHARE_KSCOPE_SEED2=0x9b07dfb4ffbf9cbb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc1ba4f41471eaa30 -DITHARE_KSCOPE_SEED2=0x9b07dfb4ffbf9cbb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 575/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d519dac04528d9b -DITHARE_KSCOPE_SEED2=0x773b0b83f46c30d3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d519dac04528d9b -DITHARE_KSCOPE_SEED2=0x773b0b83f46c30d3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d519dac04528d9b -DITHARE_KSCOPE_SEED2=0x773b0b83f46c30d3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 576/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6eab95ca4940576b -DITHARE_KSCOPE_SEED2=0xb6fe8602dbb9f057 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6eab95ca4940576b -DITHARE_KSCOPE_SEED2=0xb6fe8602dbb9f057 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6eab95ca4940576b -DITHARE_KSCOPE_SEED2=0xb6fe8602dbb9f057 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 577/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x8b2a9506929c7e55 -DITHARE_KSCOPE_SEED2=0xd24fe814dd1c773c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x8b2a9506929c7e55 -DITHARE_KSCOPE_SEED2=0xd24fe814dd1c773c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x8b2a9506929c7e55 -DITHARE_KSCOPE_SEED2=0xd24fe814dd1c773c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 578/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85cbce5b0d1e8692 -DITHARE_KSCOPE_SEED2=0xde81012bf5bab8eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85cbce5b0d1e8692 -DITHARE_KSCOPE_SEED2=0xde81012bf5bab8eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85cbce5b0d1e8692 -DITHARE_KSCOPE_SEED2=0xde81012bf5bab8eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 579/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x364ccdd4a01f2224 -DITHARE_KSCOPE_SEED2=0x2ff87c4630adff59 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x364ccdd4a01f2224 -DITHARE_KSCOPE_SEED2=0x2ff87c4630adff59 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x364ccdd4a01f2224 -DITHARE_KSCOPE_SEED2=0x2ff87c4630adff59 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 580/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x827e1e5bd025ca39 -DITHARE_KSCOPE_SEED2=0xa8a21ba5ea1b7b84 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x827e1e5bd025ca39 -DITHARE_KSCOPE_SEED2=0xa8a21ba5ea1b7b84 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x827e1e5bd025ca39 -DITHARE_KSCOPE_SEED2=0xa8a21ba5ea1b7b84 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 581/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x916eace181daba68 -DITHARE_KSCOPE_SEED2=0xa672c9f92d55898d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x916eace181daba68 -DITHARE_KSCOPE_SEED2=0xa672c9f92d55898d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x916eace181daba68 -DITHARE_KSCOPE_SEED2=0xa672c9f92d55898d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 582/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xccd2189f7640ba61 -DITHARE_KSCOPE_SEED2=0xb87a9baf9cb1ba35 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xccd2189f7640ba61 -DITHARE_KSCOPE_SEED2=0xb87a9baf9cb1ba35 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xccd2189f7640ba61 -DITHARE_KSCOPE_SEED2=0xb87a9baf9cb1ba35 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 583/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6bcb493f68d132b1 -DITHARE_KSCOPE_SEED2=0x70a969f9287efc92 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6bcb493f68d132b1 -DITHARE_KSCOPE_SEED2=0x70a969f9287efc92 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6bcb493f68d132b1 -DITHARE_KSCOPE_SEED2=0x70a969f9287efc92 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 584/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf53c3b3f172c6d9b -DITHARE_KSCOPE_SEED2=0xb24bd983e2725127 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf53c3b3f172c6d9b -DITHARE_KSCOPE_SEED2=0xb24bd983e2725127 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf53c3b3f172c6d9b -DITHARE_KSCOPE_SEED2=0xb24bd983e2725127 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 585/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xe1e15c7dd08a788f -DITHARE_KSCOPE_SEED2=0x8ec095c3eab301b2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xe1e15c7dd08a788f -DITHARE_KSCOPE_SEED2=0x8ec095c3eab301b2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xe1e15c7dd08a788f -DITHARE_KSCOPE_SEED2=0x8ec095c3eab301b2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 586/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbf1f483a0e3dcaa -DITHARE_KSCOPE_SEED2=0x8d9ab273734166b3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbf1f483a0e3dcaa -DITHARE_KSCOPE_SEED2=0x8d9ab273734166b3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbf1f483a0e3dcaa -DITHARE_KSCOPE_SEED2=0x8d9ab273734166b3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 587/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3e81be0282c8789c -DITHARE_KSCOPE_SEED2=0x7fd6fb9bc8ca069b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3e81be0282c8789c -DITHARE_KSCOPE_SEED2=0x7fd6fb9bc8ca069b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3e81be0282c8789c -DITHARE_KSCOPE_SEED2=0x7fd6fb9bc8ca069b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 588/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5774f3a60e360b8a -DITHARE_KSCOPE_SEED2=0x6cc291ee6fa9772e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5774f3a60e360b8a -DITHARE_KSCOPE_SEED2=0x6cc291ee6fa9772e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5774f3a60e360b8a -DITHARE_KSCOPE_SEED2=0x6cc291ee6fa9772e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 589/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x19dbc01f500abcc8 -DITHARE_KSCOPE_SEED2=0x2e2d4587a20b2133 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x19dbc01f500abcc8 -DITHARE_KSCOPE_SEED2=0x2e2d4587a20b2133 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x19dbc01f500abcc8 -DITHARE_KSCOPE_SEED2=0x2e2d4587a20b2133 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 590/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8be42ca5fc8c7c49 -DITHARE_KSCOPE_SEED2=0xd5662efa049795b6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8be42ca5fc8c7c49 -DITHARE_KSCOPE_SEED2=0xd5662efa049795b6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8be42ca5fc8c7c49 -DITHARE_KSCOPE_SEED2=0xd5662efa049795b6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 591/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0e92b244f4a3858a -DITHARE_KSCOPE_SEED2=0x46c70dfc1a508ae1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0e92b244f4a3858a -DITHARE_KSCOPE_SEED2=0x46c70dfc1a508ae1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0e92b244f4a3858a -DITHARE_KSCOPE_SEED2=0x46c70dfc1a508ae1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 592/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x24e73f4167c9d7bd -DITHARE_KSCOPE_SEED2=0xda69597b50f9cf9b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x24e73f4167c9d7bd -DITHARE_KSCOPE_SEED2=0xda69597b50f9cf9b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x24e73f4167c9d7bd -DITHARE_KSCOPE_SEED2=0xda69597b50f9cf9b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 593/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb953f7bca60470ed -DITHARE_KSCOPE_SEED2=0xea08f16d5ff0ce36 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb953f7bca60470ed -DITHARE_KSCOPE_SEED2=0xea08f16d5ff0ce36 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb953f7bca60470ed -DITHARE_KSCOPE_SEED2=0xea08f16d5ff0ce36 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 594/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdb94d9b78cea3d70 -DITHARE_KSCOPE_SEED2=0xe5028f62c46f012e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdb94d9b78cea3d70 -DITHARE_KSCOPE_SEED2=0xe5028f62c46f012e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdb94d9b78cea3d70 -DITHARE_KSCOPE_SEED2=0xe5028f62c46f012e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 595/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac38d95b07ef6009 -DITHARE_KSCOPE_SEED2=0xb62e1c2a953fd8ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac38d95b07ef6009 -DITHARE_KSCOPE_SEED2=0xb62e1c2a953fd8ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac38d95b07ef6009 -DITHARE_KSCOPE_SEED2=0xb62e1c2a953fd8ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 596/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc8570c0d3a7c62a6 -DITHARE_KSCOPE_SEED2=0x40971f8f14ea8e5f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc8570c0d3a7c62a6 -DITHARE_KSCOPE_SEED2=0x40971f8f14ea8e5f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc8570c0d3a7c62a6 -DITHARE_KSCOPE_SEED2=0x40971f8f14ea8e5f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 597/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb532269907d6ccae -DITHARE_KSCOPE_SEED2=0x54e99c213603b8f7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb532269907d6ccae -DITHARE_KSCOPE_SEED2=0x54e99c213603b8f7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb532269907d6ccae -DITHARE_KSCOPE_SEED2=0x54e99c213603b8f7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 598/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2259567ce35ad005 -DITHARE_KSCOPE_SEED2=0x2191dc9298278f1f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2259567ce35ad005 -DITHARE_KSCOPE_SEED2=0x2191dc9298278f1f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2259567ce35ad005 -DITHARE_KSCOPE_SEED2=0x2191dc9298278f1f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 599/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3f827f010f45b49a -DITHARE_KSCOPE_SEED2=0x9e415680b59c33f3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3f827f010f45b49a -DITHARE_KSCOPE_SEED2=0x9e415680b59c33f3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3f827f010f45b49a -DITHARE_KSCOPE_SEED2=0x9e415680b59c33f3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 600/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb2b8e091e6cd1122 -DITHARE_KSCOPE_SEED2=0x3478074f2d735e40 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb2b8e091e6cd1122 -DITHARE_KSCOPE_SEED2=0x3478074f2d735e40 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb2b8e091e6cd1122 -DITHARE_KSCOPE_SEED2=0x3478074f2d735e40 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 601/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x3125c53e78a0511d -DITHARE_KSCOPE_SEED2=0x73d956f1cdb2b43e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x3125c53e78a0511d -DITHARE_KSCOPE_SEED2=0x73d956f1cdb2b43e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x3125c53e78a0511d -DITHARE_KSCOPE_SEED2=0x73d956f1cdb2b43e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 602/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x33618bcea06811d5 -DITHARE_KSCOPE_SEED2=0x3aba8dfffebde322 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x33618bcea06811d5 -DITHARE_KSCOPE_SEED2=0x3aba8dfffebde322 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x33618bcea06811d5 -DITHARE_KSCOPE_SEED2=0x3aba8dfffebde322 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 603/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2f0fa92ee4f9f7be -DITHARE_KSCOPE_SEED2=0x4011f36aabb4a628 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2f0fa92ee4f9f7be -DITHARE_KSCOPE_SEED2=0x4011f36aabb4a628 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2f0fa92ee4f9f7be -DITHARE_KSCOPE_SEED2=0x4011f36aabb4a628 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 604/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3640a10269c98d84 -DITHARE_KSCOPE_SEED2=0xdbda4113ed493864 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3640a10269c98d84 -DITHARE_KSCOPE_SEED2=0xdbda4113ed493864 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3640a10269c98d84 -DITHARE_KSCOPE_SEED2=0xdbda4113ed493864 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 605/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb2e13abe50209679 -DITHARE_KSCOPE_SEED2=0xcd358c18e57f8767 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb2e13abe50209679 -DITHARE_KSCOPE_SEED2=0xcd358c18e57f8767 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb2e13abe50209679 -DITHARE_KSCOPE_SEED2=0xcd358c18e57f8767 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 606/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd1d19614606785ca -DITHARE_KSCOPE_SEED2=0x479309d543704c03 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd1d19614606785ca -DITHARE_KSCOPE_SEED2=0x479309d543704c03 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd1d19614606785ca -DITHARE_KSCOPE_SEED2=0x479309d543704c03 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 607/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5ef68301d15b62a3 -DITHARE_KSCOPE_SEED2=0xfa2bc673f5c60d63 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5ef68301d15b62a3 -DITHARE_KSCOPE_SEED2=0xfa2bc673f5c60d63 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5ef68301d15b62a3 -DITHARE_KSCOPE_SEED2=0xfa2bc673f5c60d63 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 608/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x08e5446b0b2e3fb6 -DITHARE_KSCOPE_SEED2=0xd072f78c2b7dca7a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x08e5446b0b2e3fb6 -DITHARE_KSCOPE_SEED2=0xd072f78c2b7dca7a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x08e5446b0b2e3fb6 -DITHARE_KSCOPE_SEED2=0xd072f78c2b7dca7a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 609/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xab8f38f099f544b4 -DITHARE_KSCOPE_SEED2=0xa967449d0abbfc99 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xab8f38f099f544b4 -DITHARE_KSCOPE_SEED2=0xa967449d0abbfc99 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xab8f38f099f544b4 -DITHARE_KSCOPE_SEED2=0xa967449d0abbfc99 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 610/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x33670dc95b4710f8 -DITHARE_KSCOPE_SEED2=0x5258ce39119ab0a5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x33670dc95b4710f8 -DITHARE_KSCOPE_SEED2=0x5258ce39119ab0a5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x33670dc95b4710f8 -DITHARE_KSCOPE_SEED2=0x5258ce39119ab0a5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 611/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3ebea97288981661 -DITHARE_KSCOPE_SEED2=0x23030647bf706a6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3ebea97288981661 -DITHARE_KSCOPE_SEED2=0x23030647bf706a6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3ebea97288981661 -DITHARE_KSCOPE_SEED2=0x23030647bf706a6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 612/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcd1cdc132383803c -DITHARE_KSCOPE_SEED2=0x818155924d438a36 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcd1cdc132383803c -DITHARE_KSCOPE_SEED2=0x818155924d438a36 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcd1cdc132383803c -DITHARE_KSCOPE_SEED2=0x818155924d438a36 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 613/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xea08be2ed72a109b -DITHARE_KSCOPE_SEED2=0x28cc30edace45990 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xea08be2ed72a109b -DITHARE_KSCOPE_SEED2=0x28cc30edace45990 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xea08be2ed72a109b -DITHARE_KSCOPE_SEED2=0x28cc30edace45990 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 614/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd4d0a0f89b3bdaa8 -DITHARE_KSCOPE_SEED2=0xb877dcefc05307b0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd4d0a0f89b3bdaa8 -DITHARE_KSCOPE_SEED2=0xb877dcefc05307b0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd4d0a0f89b3bdaa8 -DITHARE_KSCOPE_SEED2=0xb877dcefc05307b0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 615/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x64d2e6f8d42a0ab4 -DITHARE_KSCOPE_SEED2=0x60959cee23c6e9a6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x64d2e6f8d42a0ab4 -DITHARE_KSCOPE_SEED2=0x60959cee23c6e9a6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x64d2e6f8d42a0ab4 -DITHARE_KSCOPE_SEED2=0x60959cee23c6e9a6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 616/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe5dca3fba81713cf -DITHARE_KSCOPE_SEED2=0x764759b8bbc4b455 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe5dca3fba81713cf -DITHARE_KSCOPE_SEED2=0x764759b8bbc4b455 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe5dca3fba81713cf -DITHARE_KSCOPE_SEED2=0x764759b8bbc4b455 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 617/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc488b2d42527ec6b -DITHARE_KSCOPE_SEED2=0x9891955934b0255d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc488b2d42527ec6b -DITHARE_KSCOPE_SEED2=0x9891955934b0255d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc488b2d42527ec6b -DITHARE_KSCOPE_SEED2=0x9891955934b0255d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 618/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x016a0bcbc9acdaab -DITHARE_KSCOPE_SEED2=0xeac706f86968d516 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x016a0bcbc9acdaab -DITHARE_KSCOPE_SEED2=0xeac706f86968d516 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x016a0bcbc9acdaab -DITHARE_KSCOPE_SEED2=0xeac706f86968d516 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 619/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf54d2b5caac2b17c -DITHARE_KSCOPE_SEED2=0x6c2757133d3ce10f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf54d2b5caac2b17c -DITHARE_KSCOPE_SEED2=0x6c2757133d3ce10f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf54d2b5caac2b17c -DITHARE_KSCOPE_SEED2=0x6c2757133d3ce10f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 620/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe84ebb69af2b50be -DITHARE_KSCOPE_SEED2=0xb3556d391c459035 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe84ebb69af2b50be -DITHARE_KSCOPE_SEED2=0xb3556d391c459035 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe84ebb69af2b50be -DITHARE_KSCOPE_SEED2=0xb3556d391c459035 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 621/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x5d3449be6fc6cc3d -DITHARE_KSCOPE_SEED2=0x037edfdb28e5c2dd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x5d3449be6fc6cc3d -DITHARE_KSCOPE_SEED2=0x037edfdb28e5c2dd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x5d3449be6fc6cc3d -DITHARE_KSCOPE_SEED2=0x037edfdb28e5c2dd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 622/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x75ade1882132fcfa -DITHARE_KSCOPE_SEED2=0x20a208b8658338a2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x75ade1882132fcfa -DITHARE_KSCOPE_SEED2=0x20a208b8658338a2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x75ade1882132fcfa -DITHARE_KSCOPE_SEED2=0x20a208b8658338a2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 623/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xce73bc93b1c911a8 -DITHARE_KSCOPE_SEED2=0x50439376c5afe320 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xce73bc93b1c911a8 -DITHARE_KSCOPE_SEED2=0x50439376c5afe320 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xce73bc93b1c911a8 -DITHARE_KSCOPE_SEED2=0x50439376c5afe320 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 624/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3a2598742b792688 -DITHARE_KSCOPE_SEED2=0xa0c56e50e798cb56 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3a2598742b792688 -DITHARE_KSCOPE_SEED2=0xa0c56e50e798cb56 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3a2598742b792688 -DITHARE_KSCOPE_SEED2=0xa0c56e50e798cb56 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 625/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x3cb1abf1b2ac3040 -DITHARE_KSCOPE_SEED2=0x14e99bcabf7434f6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x3cb1abf1b2ac3040 -DITHARE_KSCOPE_SEED2=0x14e99bcabf7434f6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x3cb1abf1b2ac3040 -DITHARE_KSCOPE_SEED2=0x14e99bcabf7434f6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 626/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xad75aae50cbc3b65 -DITHARE_KSCOPE_SEED2=0xaf074a41211e55e3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xad75aae50cbc3b65 -DITHARE_KSCOPE_SEED2=0xaf074a41211e55e3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xad75aae50cbc3b65 -DITHARE_KSCOPE_SEED2=0xaf074a41211e55e3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 627/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85cd25373334a951 -DITHARE_KSCOPE_SEED2=0x3320ef5e31763a05 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85cd25373334a951 -DITHARE_KSCOPE_SEED2=0x3320ef5e31763a05 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85cd25373334a951 -DITHARE_KSCOPE_SEED2=0x3320ef5e31763a05 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 628/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7737e677ccae4282 -DITHARE_KSCOPE_SEED2=0x59eed64f057ddc1f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7737e677ccae4282 -DITHARE_KSCOPE_SEED2=0x59eed64f057ddc1f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7737e677ccae4282 -DITHARE_KSCOPE_SEED2=0x59eed64f057ddc1f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 629/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x9f636167b61efd39 -DITHARE_KSCOPE_SEED2=0x0ea8335141db62bd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x9f636167b61efd39 -DITHARE_KSCOPE_SEED2=0x0ea8335141db62bd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x9f636167b61efd39 -DITHARE_KSCOPE_SEED2=0x0ea8335141db62bd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 630/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc67209cb485acbef -DITHARE_KSCOPE_SEED2=0xf92a1a3c6b369de4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc67209cb485acbef -DITHARE_KSCOPE_SEED2=0xf92a1a3c6b369de4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc67209cb485acbef -DITHARE_KSCOPE_SEED2=0xf92a1a3c6b369de4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 631/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc5f028b3f933af19 -DITHARE_KSCOPE_SEED2=0xfe2fc620f2193f33 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc5f028b3f933af19 -DITHARE_KSCOPE_SEED2=0xfe2fc620f2193f33 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc5f028b3f933af19 -DITHARE_KSCOPE_SEED2=0xfe2fc620f2193f33 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 632/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xee1c28e5feef3e52 -DITHARE_KSCOPE_SEED2=0x52b8ad8142529c89 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xee1c28e5feef3e52 -DITHARE_KSCOPE_SEED2=0x52b8ad8142529c89 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xee1c28e5feef3e52 -DITHARE_KSCOPE_SEED2=0x52b8ad8142529c89 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 633/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x9dbae04d092255cf -DITHARE_KSCOPE_SEED2=0x2bb11e06567717fb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x9dbae04d092255cf -DITHARE_KSCOPE_SEED2=0x2bb11e06567717fb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x9dbae04d092255cf -DITHARE_KSCOPE_SEED2=0x2bb11e06567717fb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 634/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xae53b1dabf8349b7 -DITHARE_KSCOPE_SEED2=0x593895b2272ee9c1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xae53b1dabf8349b7 -DITHARE_KSCOPE_SEED2=0x593895b2272ee9c1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xae53b1dabf8349b7 -DITHARE_KSCOPE_SEED2=0x593895b2272ee9c1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 635/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8028a80fc09595e3 -DITHARE_KSCOPE_SEED2=0xfd8259928efb6ef6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8028a80fc09595e3 -DITHARE_KSCOPE_SEED2=0xfd8259928efb6ef6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8028a80fc09595e3 -DITHARE_KSCOPE_SEED2=0xfd8259928efb6ef6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 636/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe69a050228c78930 -DITHARE_KSCOPE_SEED2=0x4b02c3c0a8e350e7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe69a050228c78930 -DITHARE_KSCOPE_SEED2=0x4b02c3c0a8e350e7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe69a050228c78930 -DITHARE_KSCOPE_SEED2=0x4b02c3c0a8e350e7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 637/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc1e0a47d3d152819 -DITHARE_KSCOPE_SEED2=0x1ebaceea3038ee0f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc1e0a47d3d152819 -DITHARE_KSCOPE_SEED2=0x1ebaceea3038ee0f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc1e0a47d3d152819 -DITHARE_KSCOPE_SEED2=0x1ebaceea3038ee0f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 638/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x13d8e271c4e1e04f -DITHARE_KSCOPE_SEED2=0x0653771040d49b65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x13d8e271c4e1e04f -DITHARE_KSCOPE_SEED2=0x0653771040d49b65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x13d8e271c4e1e04f -DITHARE_KSCOPE_SEED2=0x0653771040d49b65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 639/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x51f64d9c8f8b2cbf -DITHARE_KSCOPE_SEED2=0x4b148ea3f204bc6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x51f64d9c8f8b2cbf -DITHARE_KSCOPE_SEED2=0x4b148ea3f204bc6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x51f64d9c8f8b2cbf -DITHARE_KSCOPE_SEED2=0x4b148ea3f204bc6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 640/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe9ae1c350a678b4a -DITHARE_KSCOPE_SEED2=0x87932234cec86478 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe9ae1c350a678b4a -DITHARE_KSCOPE_SEED2=0x87932234cec86478 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe9ae1c350a678b4a -DITHARE_KSCOPE_SEED2=0x87932234cec86478 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 641/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x17f65b84da6c77dc -DITHARE_KSCOPE_SEED2=0xccc25f99af4fabf8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x17f65b84da6c77dc -DITHARE_KSCOPE_SEED2=0xccc25f99af4fabf8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x17f65b84da6c77dc -DITHARE_KSCOPE_SEED2=0xccc25f99af4fabf8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 642/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x901e802c5525d8f9 -DITHARE_KSCOPE_SEED2=0x5bce85b801db4f9b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x901e802c5525d8f9 -DITHARE_KSCOPE_SEED2=0x5bce85b801db4f9b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x901e802c5525d8f9 -DITHARE_KSCOPE_SEED2=0x5bce85b801db4f9b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 643/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7593bc5e14898659 -DITHARE_KSCOPE_SEED2=0x0c2c3ecb791576d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7593bc5e14898659 -DITHARE_KSCOPE_SEED2=0x0c2c3ecb791576d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7593bc5e14898659 -DITHARE_KSCOPE_SEED2=0x0c2c3ecb791576d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 644/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x65933b47161cb41d -DITHARE_KSCOPE_SEED2=0xeeffaed11fd305f7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x65933b47161cb41d -DITHARE_KSCOPE_SEED2=0xeeffaed11fd305f7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x65933b47161cb41d -DITHARE_KSCOPE_SEED2=0xeeffaed11fd305f7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 645/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb4539ce8ee5d681d -DITHARE_KSCOPE_SEED2=0xa0fbef5fe13c9718 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb4539ce8ee5d681d -DITHARE_KSCOPE_SEED2=0xa0fbef5fe13c9718 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb4539ce8ee5d681d -DITHARE_KSCOPE_SEED2=0xa0fbef5fe13c9718 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 646/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0be1dcb1b90b38f1 -DITHARE_KSCOPE_SEED2=0x4134988a26055d2c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0be1dcb1b90b38f1 -DITHARE_KSCOPE_SEED2=0x4134988a26055d2c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0be1dcb1b90b38f1 -DITHARE_KSCOPE_SEED2=0x4134988a26055d2c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 647/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xad6a0d71842ec373 -DITHARE_KSCOPE_SEED2=0x63e7cc2b5fb94d98 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xad6a0d71842ec373 -DITHARE_KSCOPE_SEED2=0x63e7cc2b5fb94d98 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xad6a0d71842ec373 -DITHARE_KSCOPE_SEED2=0x63e7cc2b5fb94d98 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 648/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x94bcae7628a690ba -DITHARE_KSCOPE_SEED2=0x1a217fcb4e1989a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x94bcae7628a690ba -DITHARE_KSCOPE_SEED2=0x1a217fcb4e1989a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x94bcae7628a690ba -DITHARE_KSCOPE_SEED2=0x1a217fcb4e1989a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 649/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x584a8cccbf716ff3 -DITHARE_KSCOPE_SEED2=0xe4ddae120f659dce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x584a8cccbf716ff3 -DITHARE_KSCOPE_SEED2=0xe4ddae120f659dce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x584a8cccbf716ff3 -DITHARE_KSCOPE_SEED2=0xe4ddae120f659dce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 650/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd475582f4fec16c1 -DITHARE_KSCOPE_SEED2=0xd2f11debc8992066 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd475582f4fec16c1 -DITHARE_KSCOPE_SEED2=0xd2f11debc8992066 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd475582f4fec16c1 -DITHARE_KSCOPE_SEED2=0xd2f11debc8992066 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 651/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8a7c3f75314a8215 -DITHARE_KSCOPE_SEED2=0xec90c040bc5e8b1c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8a7c3f75314a8215 -DITHARE_KSCOPE_SEED2=0xec90c040bc5e8b1c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8a7c3f75314a8215 -DITHARE_KSCOPE_SEED2=0xec90c040bc5e8b1c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 652/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbfe1f46a24a4315b -DITHARE_KSCOPE_SEED2=0x1259c99f01cce3fa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbfe1f46a24a4315b -DITHARE_KSCOPE_SEED2=0x1259c99f01cce3fa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbfe1f46a24a4315b -DITHARE_KSCOPE_SEED2=0x1259c99f01cce3fa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 653/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xe2a5c7684e990f81 -DITHARE_KSCOPE_SEED2=0xbe7c100d1deebef2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xe2a5c7684e990f81 -DITHARE_KSCOPE_SEED2=0xbe7c100d1deebef2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xe2a5c7684e990f81 -DITHARE_KSCOPE_SEED2=0xbe7c100d1deebef2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 654/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1042b08210fc4f34 -DITHARE_KSCOPE_SEED2=0x36761ed8676ffc8a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1042b08210fc4f34 -DITHARE_KSCOPE_SEED2=0x36761ed8676ffc8a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1042b08210fc4f34 -DITHARE_KSCOPE_SEED2=0x36761ed8676ffc8a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 655/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc406aef103ce177 -DITHARE_KSCOPE_SEED2=0x01f05b184bdcda6d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc406aef103ce177 -DITHARE_KSCOPE_SEED2=0x01f05b184bdcda6d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfc406aef103ce177 -DITHARE_KSCOPE_SEED2=0x01f05b184bdcda6d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 656/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d0af597cb313446 -DITHARE_KSCOPE_SEED2=0xc33db5e938d716ac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d0af597cb313446 -DITHARE_KSCOPE_SEED2=0xc33db5e938d716ac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d0af597cb313446 -DITHARE_KSCOPE_SEED2=0xc33db5e938d716ac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 657/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x6f9ba10b32e6c667 -DITHARE_KSCOPE_SEED2=0x1c78fc8707d964d2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x6f9ba10b32e6c667 -DITHARE_KSCOPE_SEED2=0x1c78fc8707d964d2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x6f9ba10b32e6c667 -DITHARE_KSCOPE_SEED2=0x1c78fc8707d964d2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 658/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb0dcfcbe75b3dc2 -DITHARE_KSCOPE_SEED2=0x155b904e2cafc2a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb0dcfcbe75b3dc2 -DITHARE_KSCOPE_SEED2=0x155b904e2cafc2a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb0dcfcbe75b3dc2 -DITHARE_KSCOPE_SEED2=0x155b904e2cafc2a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 659/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x71dd887cf2de8c3b -DITHARE_KSCOPE_SEED2=0xb38fae2d84c54609 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x71dd887cf2de8c3b -DITHARE_KSCOPE_SEED2=0xb38fae2d84c54609 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x71dd887cf2de8c3b -DITHARE_KSCOPE_SEED2=0xb38fae2d84c54609 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 660/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb3e68dc9d47a30fb -DITHARE_KSCOPE_SEED2=0xc02ccb77bb42726f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb3e68dc9d47a30fb -DITHARE_KSCOPE_SEED2=0xc02ccb77bb42726f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb3e68dc9d47a30fb -DITHARE_KSCOPE_SEED2=0xc02ccb77bb42726f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 661/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x6b8f7bf419df19ba -DITHARE_KSCOPE_SEED2=0x32845fc5674f8157 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x6b8f7bf419df19ba -DITHARE_KSCOPE_SEED2=0x32845fc5674f8157 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x6b8f7bf419df19ba -DITHARE_KSCOPE_SEED2=0x32845fc5674f8157 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 662/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf6545b95dd428eec -DITHARE_KSCOPE_SEED2=0x1266abf00d8d64b9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf6545b95dd428eec -DITHARE_KSCOPE_SEED2=0x1266abf00d8d64b9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf6545b95dd428eec -DITHARE_KSCOPE_SEED2=0x1266abf00d8d64b9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 663/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x55293f60bcf1199e -DITHARE_KSCOPE_SEED2=0x99eac4b8e4fce85f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x55293f60bcf1199e -DITHARE_KSCOPE_SEED2=0x99eac4b8e4fce85f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x55293f60bcf1199e -DITHARE_KSCOPE_SEED2=0x99eac4b8e4fce85f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 664/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xec7c15c1eafc02ba -DITHARE_KSCOPE_SEED2=0x18b33afcb8ea35f3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xec7c15c1eafc02ba -DITHARE_KSCOPE_SEED2=0x18b33afcb8ea35f3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xec7c15c1eafc02ba -DITHARE_KSCOPE_SEED2=0x18b33afcb8ea35f3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 665/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x7e5a942d78724700 -DITHARE_KSCOPE_SEED2=0x42629b1f8e252949 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x7e5a942d78724700 -DITHARE_KSCOPE_SEED2=0x42629b1f8e252949 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x7e5a942d78724700 -DITHARE_KSCOPE_SEED2=0x42629b1f8e252949 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 666/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6d6003b8ed9d012a -DITHARE_KSCOPE_SEED2=0xda52825caaacbbe4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6d6003b8ed9d012a -DITHARE_KSCOPE_SEED2=0xda52825caaacbbe4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6d6003b8ed9d012a -DITHARE_KSCOPE_SEED2=0xda52825caaacbbe4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 667/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x46eae57892cfdc5a -DITHARE_KSCOPE_SEED2=0x2f1283753aeb870b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x46eae57892cfdc5a -DITHARE_KSCOPE_SEED2=0x2f1283753aeb870b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x46eae57892cfdc5a -DITHARE_KSCOPE_SEED2=0x2f1283753aeb870b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 668/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xca69ae52058aacb4 -DITHARE_KSCOPE_SEED2=0xce3ae7e9225b8994 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xca69ae52058aacb4 -DITHARE_KSCOPE_SEED2=0xce3ae7e9225b8994 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xca69ae52058aacb4 -DITHARE_KSCOPE_SEED2=0xce3ae7e9225b8994 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 669/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x0a14546054ac2997 -DITHARE_KSCOPE_SEED2=0xab57f2f8724b0da8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x0a14546054ac2997 -DITHARE_KSCOPE_SEED2=0xab57f2f8724b0da8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x0a14546054ac2997 -DITHARE_KSCOPE_SEED2=0xab57f2f8724b0da8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 670/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbce002fece222906 -DITHARE_KSCOPE_SEED2=0x2972db0d6cf252ed -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbce002fece222906 -DITHARE_KSCOPE_SEED2=0x2972db0d6cf252ed -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbce002fece222906 -DITHARE_KSCOPE_SEED2=0x2972db0d6cf252ed -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 671/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x13af98658f2cbe9f -DITHARE_KSCOPE_SEED2=0x38c338ccc5f6ad2d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x13af98658f2cbe9f -DITHARE_KSCOPE_SEED2=0x38c338ccc5f6ad2d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x13af98658f2cbe9f -DITHARE_KSCOPE_SEED2=0x38c338ccc5f6ad2d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 672/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xca87a9c331e8f9ab -DITHARE_KSCOPE_SEED2=0x80b71dcb3bef861a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xca87a9c331e8f9ab -DITHARE_KSCOPE_SEED2=0x80b71dcb3bef861a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xca87a9c331e8f9ab -DITHARE_KSCOPE_SEED2=0x80b71dcb3bef861a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 673/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x3af18fb5df1da2de -DITHARE_KSCOPE_SEED2=0x618fe5962403ceaf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x3af18fb5df1da2de -DITHARE_KSCOPE_SEED2=0x618fe5962403ceaf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x3af18fb5df1da2de -DITHARE_KSCOPE_SEED2=0x618fe5962403ceaf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 674/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac4afd884cf4c150 -DITHARE_KSCOPE_SEED2=0x03491a4bad6b94b9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac4afd884cf4c150 -DITHARE_KSCOPE_SEED2=0x03491a4bad6b94b9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac4afd884cf4c150 -DITHARE_KSCOPE_SEED2=0x03491a4bad6b94b9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 675/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xafdfe35e4a775f04 -DITHARE_KSCOPE_SEED2=0xaf15ad7ba6780dc5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xafdfe35e4a775f04 -DITHARE_KSCOPE_SEED2=0xaf15ad7ba6780dc5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xafdfe35e4a775f04 -DITHARE_KSCOPE_SEED2=0xaf15ad7ba6780dc5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 676/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ce4e05f1f2f9b1c -DITHARE_KSCOPE_SEED2=0xe963050485eb99c8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ce4e05f1f2f9b1c -DITHARE_KSCOPE_SEED2=0xe963050485eb99c8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8ce4e05f1f2f9b1c -DITHARE_KSCOPE_SEED2=0xe963050485eb99c8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 677/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x7141de796bd8998b -DITHARE_KSCOPE_SEED2=0x8c65fde38664d0eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x7141de796bd8998b -DITHARE_KSCOPE_SEED2=0x8c65fde38664d0eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x7141de796bd8998b -DITHARE_KSCOPE_SEED2=0x8c65fde38664d0eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 678/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc09a7537f019e77e -DITHARE_KSCOPE_SEED2=0x68072d5ffa42687b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc09a7537f019e77e -DITHARE_KSCOPE_SEED2=0x68072d5ffa42687b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc09a7537f019e77e -DITHARE_KSCOPE_SEED2=0x68072d5ffa42687b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 679/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc6177ed87db8702a -DITHARE_KSCOPE_SEED2=0xc9df4fce8c87264b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc6177ed87db8702a -DITHARE_KSCOPE_SEED2=0xc9df4fce8c87264b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc6177ed87db8702a -DITHARE_KSCOPE_SEED2=0xc9df4fce8c87264b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 680/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x466bbf081bb2cfbd -DITHARE_KSCOPE_SEED2=0x0248aa26fe6213f8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x466bbf081bb2cfbd -DITHARE_KSCOPE_SEED2=0x0248aa26fe6213f8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x466bbf081bb2cfbd -DITHARE_KSCOPE_SEED2=0x0248aa26fe6213f8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 681/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x33e1d3a43990d259 -DITHARE_KSCOPE_SEED2=0x1e5e4e3488019240 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x33e1d3a43990d259 -DITHARE_KSCOPE_SEED2=0x1e5e4e3488019240 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x33e1d3a43990d259 -DITHARE_KSCOPE_SEED2=0x1e5e4e3488019240 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 682/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x152999a9cbfe86b5 -DITHARE_KSCOPE_SEED2=0x3775602346d6c1c9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x152999a9cbfe86b5 -DITHARE_KSCOPE_SEED2=0x3775602346d6c1c9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x152999a9cbfe86b5 -DITHARE_KSCOPE_SEED2=0x3775602346d6c1c9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 683/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa877f5206375d70e -DITHARE_KSCOPE_SEED2=0x426b121d3ba8fcd6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa877f5206375d70e -DITHARE_KSCOPE_SEED2=0x426b121d3ba8fcd6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa877f5206375d70e -DITHARE_KSCOPE_SEED2=0x426b121d3ba8fcd6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 684/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa7c3a7c5b7ef095d -DITHARE_KSCOPE_SEED2=0x837c0ccab84d8dc9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa7c3a7c5b7ef095d -DITHARE_KSCOPE_SEED2=0x837c0ccab84d8dc9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa7c3a7c5b7ef095d -DITHARE_KSCOPE_SEED2=0x837c0ccab84d8dc9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 685/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x2436ebdfce9e4128 -DITHARE_KSCOPE_SEED2=0xaf8d64c2aff80589 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x2436ebdfce9e4128 -DITHARE_KSCOPE_SEED2=0xaf8d64c2aff80589 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x2436ebdfce9e4128 -DITHARE_KSCOPE_SEED2=0xaf8d64c2aff80589 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 686/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x09b75ce8d26784fa -DITHARE_KSCOPE_SEED2=0x69df9be8319d0a3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x09b75ce8d26784fa -DITHARE_KSCOPE_SEED2=0x69df9be8319d0a3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x09b75ce8d26784fa -DITHARE_KSCOPE_SEED2=0x69df9be8319d0a3e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 687/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf09c97e75111bba3 -DITHARE_KSCOPE_SEED2=0x742cef22f9e73deb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf09c97e75111bba3 -DITHARE_KSCOPE_SEED2=0x742cef22f9e73deb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf09c97e75111bba3 -DITHARE_KSCOPE_SEED2=0x742cef22f9e73deb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 688/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb9eec8afa554d1d8 -DITHARE_KSCOPE_SEED2=0x2094ea2fbce8ba73 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb9eec8afa554d1d8 -DITHARE_KSCOPE_SEED2=0x2094ea2fbce8ba73 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb9eec8afa554d1d8 -DITHARE_KSCOPE_SEED2=0x2094ea2fbce8ba73 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 689/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc98c44107faba924 -DITHARE_KSCOPE_SEED2=0xee6173f74adcf647 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc98c44107faba924 -DITHARE_KSCOPE_SEED2=0xee6173f74adcf647 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc98c44107faba924 -DITHARE_KSCOPE_SEED2=0xee6173f74adcf647 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 690/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2635cebae4696523 -DITHARE_KSCOPE_SEED2=0xe876b83844528ad0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2635cebae4696523 -DITHARE_KSCOPE_SEED2=0xe876b83844528ad0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2635cebae4696523 -DITHARE_KSCOPE_SEED2=0xe876b83844528ad0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 691/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x907642e8b447b3a4 -DITHARE_KSCOPE_SEED2=0x3914f5e90b55eb9f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x907642e8b447b3a4 -DITHARE_KSCOPE_SEED2=0x3914f5e90b55eb9f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x907642e8b447b3a4 -DITHARE_KSCOPE_SEED2=0x3914f5e90b55eb9f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 692/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7a672e5ca90570d3 -DITHARE_KSCOPE_SEED2=0xa75a687fd1402d6f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7a672e5ca90570d3 -DITHARE_KSCOPE_SEED2=0xa75a687fd1402d6f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7a672e5ca90570d3 -DITHARE_KSCOPE_SEED2=0xa75a687fd1402d6f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 693/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xd31b173e4f18c607 -DITHARE_KSCOPE_SEED2=0x1e2c62cc11453d21 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xd31b173e4f18c607 -DITHARE_KSCOPE_SEED2=0x1e2c62cc11453d21 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xd31b173e4f18c607 -DITHARE_KSCOPE_SEED2=0x1e2c62cc11453d21 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 694/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5acb0430b499bc03 -DITHARE_KSCOPE_SEED2=0x8846663bc8ae9b79 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5acb0430b499bc03 -DITHARE_KSCOPE_SEED2=0x8846663bc8ae9b79 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5acb0430b499bc03 -DITHARE_KSCOPE_SEED2=0x8846663bc8ae9b79 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 695/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x17c24750176aa70c -DITHARE_KSCOPE_SEED2=0xe60fd22e9f069e7c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x17c24750176aa70c -DITHARE_KSCOPE_SEED2=0xe60fd22e9f069e7c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x17c24750176aa70c -DITHARE_KSCOPE_SEED2=0xe60fd22e9f069e7c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 696/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x81aa35b426d2636b -DITHARE_KSCOPE_SEED2=0xe5ac09a809f8d09e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x81aa35b426d2636b -DITHARE_KSCOPE_SEED2=0xe5ac09a809f8d09e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x81aa35b426d2636b -DITHARE_KSCOPE_SEED2=0xe5ac09a809f8d09e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 697/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x647d9d2f1762e249 -DITHARE_KSCOPE_SEED2=0xcda96ba9e63051c5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x647d9d2f1762e249 -DITHARE_KSCOPE_SEED2=0xcda96ba9e63051c5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x647d9d2f1762e249 -DITHARE_KSCOPE_SEED2=0xcda96ba9e63051c5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 698/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb191263b8b07bc31 -DITHARE_KSCOPE_SEED2=0x48399d95d268425c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb191263b8b07bc31 -DITHARE_KSCOPE_SEED2=0x48399d95d268425c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb191263b8b07bc31 -DITHARE_KSCOPE_SEED2=0x48399d95d268425c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 699/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb666190d4a630d8b -DITHARE_KSCOPE_SEED2=0x7cd5149bfafa6c0a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb666190d4a630d8b -DITHARE_KSCOPE_SEED2=0x7cd5149bfafa6c0a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb666190d4a630d8b -DITHARE_KSCOPE_SEED2=0x7cd5149bfafa6c0a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 700/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf5bd8bdce416251f -DITHARE_KSCOPE_SEED2=0xe076ff5477a07fb5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf5bd8bdce416251f -DITHARE_KSCOPE_SEED2=0xe076ff5477a07fb5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf5bd8bdce416251f -DITHARE_KSCOPE_SEED2=0xe076ff5477a07fb5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 701/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x2d5a52ebd30118fa -DITHARE_KSCOPE_SEED2=0x96028fb318367211 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x2d5a52ebd30118fa -DITHARE_KSCOPE_SEED2=0x96028fb318367211 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x2d5a52ebd30118fa -DITHARE_KSCOPE_SEED2=0x96028fb318367211 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 702/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5be38266e6534c2b -DITHARE_KSCOPE_SEED2=0x4bfd50b1689f1eac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5be38266e6534c2b -DITHARE_KSCOPE_SEED2=0x4bfd50b1689f1eac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5be38266e6534c2b -DITHARE_KSCOPE_SEED2=0x4bfd50b1689f1eac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 703/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf1db64083165f96b -DITHARE_KSCOPE_SEED2=0x6fa4be37ae6d95b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf1db64083165f96b -DITHARE_KSCOPE_SEED2=0x6fa4be37ae6d95b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf1db64083165f96b -DITHARE_KSCOPE_SEED2=0x6fa4be37ae6d95b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 704/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1af45347d3d5ca19 -DITHARE_KSCOPE_SEED2=0x9503270065a4a71e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1af45347d3d5ca19 -DITHARE_KSCOPE_SEED2=0x9503270065a4a71e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1af45347d3d5ca19 -DITHARE_KSCOPE_SEED2=0x9503270065a4a71e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 705/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x1a1a89e7d15bd020 -DITHARE_KSCOPE_SEED2=0x6c7f399853de8751 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x1a1a89e7d15bd020 -DITHARE_KSCOPE_SEED2=0x6c7f399853de8751 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x1a1a89e7d15bd020 -DITHARE_KSCOPE_SEED2=0x6c7f399853de8751 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 706/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x51d75544ce8fdf0a -DITHARE_KSCOPE_SEED2=0x5cb4d67a2c33d016 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x51d75544ce8fdf0a -DITHARE_KSCOPE_SEED2=0x5cb4d67a2c33d016 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x51d75544ce8fdf0a -DITHARE_KSCOPE_SEED2=0x5cb4d67a2c33d016 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 707/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3cb1a59acf295e3b -DITHARE_KSCOPE_SEED2=0xaeaaa4538fcdf42b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3cb1a59acf295e3b -DITHARE_KSCOPE_SEED2=0xaeaaa4538fcdf42b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3cb1a59acf295e3b -DITHARE_KSCOPE_SEED2=0xaeaaa4538fcdf42b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 708/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x82f532bcb713e0a0 -DITHARE_KSCOPE_SEED2=0xf8ac250e31267e7f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x82f532bcb713e0a0 -DITHARE_KSCOPE_SEED2=0xf8ac250e31267e7f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x82f532bcb713e0a0 -DITHARE_KSCOPE_SEED2=0xf8ac250e31267e7f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 709/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc40966aa6a77c67a -DITHARE_KSCOPE_SEED2=0xff8700feb2fbb46d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc40966aa6a77c67a -DITHARE_KSCOPE_SEED2=0xff8700feb2fbb46d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc40966aa6a77c67a -DITHARE_KSCOPE_SEED2=0xff8700feb2fbb46d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 710/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x705b20cc990a5b31 -DITHARE_KSCOPE_SEED2=0x0210e15973628454 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x705b20cc990a5b31 -DITHARE_KSCOPE_SEED2=0x0210e15973628454 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x705b20cc990a5b31 -DITHARE_KSCOPE_SEED2=0x0210e15973628454 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 711/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5be821723b18bf8d -DITHARE_KSCOPE_SEED2=0x88b80bec27346a5d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5be821723b18bf8d -DITHARE_KSCOPE_SEED2=0x88b80bec27346a5d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5be821723b18bf8d -DITHARE_KSCOPE_SEED2=0x88b80bec27346a5d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 712/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xffb1cfb7bd90d661 -DITHARE_KSCOPE_SEED2=0x60760fbb7467f484 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xffb1cfb7bd90d661 -DITHARE_KSCOPE_SEED2=0x60760fbb7467f484 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xffb1cfb7bd90d661 -DITHARE_KSCOPE_SEED2=0x60760fbb7467f484 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 713/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x6e4ea1c8278a47f2 -DITHARE_KSCOPE_SEED2=0xd15ec206b2170476 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x6e4ea1c8278a47f2 -DITHARE_KSCOPE_SEED2=0xd15ec206b2170476 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x6e4ea1c8278a47f2 -DITHARE_KSCOPE_SEED2=0xd15ec206b2170476 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 714/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfa97bdd53f413c88 -DITHARE_KSCOPE_SEED2=0x5b70b3c3f6d1c209 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfa97bdd53f413c88 -DITHARE_KSCOPE_SEED2=0x5b70b3c3f6d1c209 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfa97bdd53f413c88 -DITHARE_KSCOPE_SEED2=0x5b70b3c3f6d1c209 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 715/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x03085b3b1e75201f -DITHARE_KSCOPE_SEED2=0xbf5ee85c71f00807 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x03085b3b1e75201f -DITHARE_KSCOPE_SEED2=0xbf5ee85c71f00807 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x03085b3b1e75201f -DITHARE_KSCOPE_SEED2=0xbf5ee85c71f00807 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 716/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9ec9c3fbcf3bfe2e -DITHARE_KSCOPE_SEED2=0x9e38eb45b99f48e6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9ec9c3fbcf3bfe2e -DITHARE_KSCOPE_SEED2=0x9e38eb45b99f48e6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9ec9c3fbcf3bfe2e -DITHARE_KSCOPE_SEED2=0x9e38eb45b99f48e6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 717/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x86f64c91f04b7ca3 -DITHARE_KSCOPE_SEED2=0x1f49beb0c4194645 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x86f64c91f04b7ca3 -DITHARE_KSCOPE_SEED2=0x1f49beb0c4194645 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x86f64c91f04b7ca3 -DITHARE_KSCOPE_SEED2=0x1f49beb0c4194645 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 718/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6526ab6ef1507adc -DITHARE_KSCOPE_SEED2=0x6734bf3b0e9460fb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6526ab6ef1507adc -DITHARE_KSCOPE_SEED2=0x6734bf3b0e9460fb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6526ab6ef1507adc -DITHARE_KSCOPE_SEED2=0x6734bf3b0e9460fb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 719/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x642eae8b62e0af80 -DITHARE_KSCOPE_SEED2=0x18b9f933427f47db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x642eae8b62e0af80 -DITHARE_KSCOPE_SEED2=0x18b9f933427f47db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x642eae8b62e0af80 -DITHARE_KSCOPE_SEED2=0x18b9f933427f47db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 720/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd0aacb188d04c7a5 -DITHARE_KSCOPE_SEED2=0xd65648e1fc6933d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd0aacb188d04c7a5 -DITHARE_KSCOPE_SEED2=0xd65648e1fc6933d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd0aacb188d04c7a5 -DITHARE_KSCOPE_SEED2=0xd65648e1fc6933d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 721/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc8c265768101fd7d -DITHARE_KSCOPE_SEED2=0xc6f333041fe0be26 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc8c265768101fd7d -DITHARE_KSCOPE_SEED2=0xc6f333041fe0be26 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc8c265768101fd7d -DITHARE_KSCOPE_SEED2=0xc6f333041fe0be26 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 722/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1eb5b3c3e3713266 -DITHARE_KSCOPE_SEED2=0x61582cf746369b1d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1eb5b3c3e3713266 -DITHARE_KSCOPE_SEED2=0x61582cf746369b1d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1eb5b3c3e3713266 -DITHARE_KSCOPE_SEED2=0x61582cf746369b1d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 723/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa80c3f56f89dedad -DITHARE_KSCOPE_SEED2=0x25609830afabf15f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa80c3f56f89dedad -DITHARE_KSCOPE_SEED2=0x25609830afabf15f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa80c3f56f89dedad -DITHARE_KSCOPE_SEED2=0x25609830afabf15f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 724/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa4d22517c8102ff2 -DITHARE_KSCOPE_SEED2=0x2340a9fb803e2dfd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa4d22517c8102ff2 -DITHARE_KSCOPE_SEED2=0x2340a9fb803e2dfd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa4d22517c8102ff2 -DITHARE_KSCOPE_SEED2=0x2340a9fb803e2dfd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 725/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x2b36f371e9dcfb79 -DITHARE_KSCOPE_SEED2=0xa05ffdcb80aab41b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x2b36f371e9dcfb79 -DITHARE_KSCOPE_SEED2=0xa05ffdcb80aab41b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x2b36f371e9dcfb79 -DITHARE_KSCOPE_SEED2=0xa05ffdcb80aab41b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 726/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x314a2ecb31a85a3b -DITHARE_KSCOPE_SEED2=0xee30044590fdef67 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x314a2ecb31a85a3b -DITHARE_KSCOPE_SEED2=0xee30044590fdef67 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x314a2ecb31a85a3b -DITHARE_KSCOPE_SEED2=0xee30044590fdef67 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 727/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2a53bb1456b8c8b5 -DITHARE_KSCOPE_SEED2=0x58e1e64d1cea91c7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2a53bb1456b8c8b5 -DITHARE_KSCOPE_SEED2=0x58e1e64d1cea91c7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2a53bb1456b8c8b5 -DITHARE_KSCOPE_SEED2=0x58e1e64d1cea91c7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 728/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe34bb16dd2b1aa30 -DITHARE_KSCOPE_SEED2=0x1a46b2d8844ad199 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe34bb16dd2b1aa30 -DITHARE_KSCOPE_SEED2=0x1a46b2d8844ad199 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe34bb16dd2b1aa30 -DITHARE_KSCOPE_SEED2=0x1a46b2d8844ad199 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 729/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x647b00144fe160f7 -DITHARE_KSCOPE_SEED2=0x5ecb3bebc40004fa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x647b00144fe160f7 -DITHARE_KSCOPE_SEED2=0x5ecb3bebc40004fa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x647b00144fe160f7 -DITHARE_KSCOPE_SEED2=0x5ecb3bebc40004fa -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 730/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x73972d38cd293612 -DITHARE_KSCOPE_SEED2=0xabbc4f767610e841 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x73972d38cd293612 -DITHARE_KSCOPE_SEED2=0xabbc4f767610e841 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x73972d38cd293612 -DITHARE_KSCOPE_SEED2=0xabbc4f767610e841 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 731/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x131c5fd82b6aeefb -DITHARE_KSCOPE_SEED2=0x5f2c7f4f09154497 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x131c5fd82b6aeefb -DITHARE_KSCOPE_SEED2=0x5f2c7f4f09154497 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x131c5fd82b6aeefb -DITHARE_KSCOPE_SEED2=0x5f2c7f4f09154497 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 732/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd0e5dcdc1c9a8e9f -DITHARE_KSCOPE_SEED2=0x8ac8cacbf75d6601 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd0e5dcdc1c9a8e9f -DITHARE_KSCOPE_SEED2=0x8ac8cacbf75d6601 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd0e5dcdc1c9a8e9f -DITHARE_KSCOPE_SEED2=0x8ac8cacbf75d6601 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 733/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x3f30be209f5b1da1 -DITHARE_KSCOPE_SEED2=0x192f0786b7970598 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x3f30be209f5b1da1 -DITHARE_KSCOPE_SEED2=0x192f0786b7970598 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x3f30be209f5b1da1 -DITHARE_KSCOPE_SEED2=0x192f0786b7970598 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 734/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x08011dac85953e90 -DITHARE_KSCOPE_SEED2=0x4435d7897457518a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x08011dac85953e90 -DITHARE_KSCOPE_SEED2=0x4435d7897457518a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x08011dac85953e90 -DITHARE_KSCOPE_SEED2=0x4435d7897457518a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 735/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeddf3bff1cc80a73 -DITHARE_KSCOPE_SEED2=0xefb13fad138fbe42 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeddf3bff1cc80a73 -DITHARE_KSCOPE_SEED2=0xefb13fad138fbe42 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeddf3bff1cc80a73 -DITHARE_KSCOPE_SEED2=0xefb13fad138fbe42 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 736/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdde68fef83b24d5b -DITHARE_KSCOPE_SEED2=0xe5c4a1dbb9508bdc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdde68fef83b24d5b -DITHARE_KSCOPE_SEED2=0xe5c4a1dbb9508bdc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdde68fef83b24d5b -DITHARE_KSCOPE_SEED2=0xe5c4a1dbb9508bdc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 737/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x7eaa952027b92f8b -DITHARE_KSCOPE_SEED2=0xb388e6b5964b760a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x7eaa952027b92f8b -DITHARE_KSCOPE_SEED2=0xb388e6b5964b760a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x7eaa952027b92f8b -DITHARE_KSCOPE_SEED2=0xb388e6b5964b760a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 738/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x813d11feeea03653 -DITHARE_KSCOPE_SEED2=0x4364ed2e0af9c8e0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x813d11feeea03653 -DITHARE_KSCOPE_SEED2=0x4364ed2e0af9c8e0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x813d11feeea03653 -DITHARE_KSCOPE_SEED2=0x4364ed2e0af9c8e0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 739/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x58b3984c8f475c4d -DITHARE_KSCOPE_SEED2=0x2c395816884e7a7a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x58b3984c8f475c4d -DITHARE_KSCOPE_SEED2=0x2c395816884e7a7a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x58b3984c8f475c4d -DITHARE_KSCOPE_SEED2=0x2c395816884e7a7a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 740/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc114d731da946c9f -DITHARE_KSCOPE_SEED2=0x4784e63d27d819be -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc114d731da946c9f -DITHARE_KSCOPE_SEED2=0x4784e63d27d819be -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc114d731da946c9f -DITHARE_KSCOPE_SEED2=0x4784e63d27d819be -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 741/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x4da6f71368c921a4 -DITHARE_KSCOPE_SEED2=0xea9fd2f01e77906d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x4da6f71368c921a4 -DITHARE_KSCOPE_SEED2=0xea9fd2f01e77906d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x4da6f71368c921a4 -DITHARE_KSCOPE_SEED2=0xea9fd2f01e77906d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 742/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x31c9f1cf51b8d071 -DITHARE_KSCOPE_SEED2=0x670698684baa2fd4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x31c9f1cf51b8d071 -DITHARE_KSCOPE_SEED2=0x670698684baa2fd4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x31c9f1cf51b8d071 -DITHARE_KSCOPE_SEED2=0x670698684baa2fd4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 743/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf93bd0ba975292d9 -DITHARE_KSCOPE_SEED2=0x999975f57c6d066e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf93bd0ba975292d9 -DITHARE_KSCOPE_SEED2=0x999975f57c6d066e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf93bd0ba975292d9 -DITHARE_KSCOPE_SEED2=0x999975f57c6d066e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 744/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7b0767b9c91b9d6c -DITHARE_KSCOPE_SEED2=0x62348016657b8f81 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7b0767b9c91b9d6c -DITHARE_KSCOPE_SEED2=0x62348016657b8f81 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7b0767b9c91b9d6c -DITHARE_KSCOPE_SEED2=0x62348016657b8f81 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 745/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x59119542af134bd4 -DITHARE_KSCOPE_SEED2=0x96b4608498de29d5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x59119542af134bd4 -DITHARE_KSCOPE_SEED2=0x96b4608498de29d5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x59119542af134bd4 -DITHARE_KSCOPE_SEED2=0x96b4608498de29d5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 746/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x83e32640435b8636 -DITHARE_KSCOPE_SEED2=0x767e2bcba678f229 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x83e32640435b8636 -DITHARE_KSCOPE_SEED2=0x767e2bcba678f229 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x83e32640435b8636 -DITHARE_KSCOPE_SEED2=0x767e2bcba678f229 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 747/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x89624694aed32997 -DITHARE_KSCOPE_SEED2=0xafb35563beb8be39 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x89624694aed32997 -DITHARE_KSCOPE_SEED2=0xafb35563beb8be39 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x89624694aed32997 -DITHARE_KSCOPE_SEED2=0xafb35563beb8be39 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 748/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2a97fd462de3f80f -DITHARE_KSCOPE_SEED2=0xfbd6f4e8d0f3b0e7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2a97fd462de3f80f -DITHARE_KSCOPE_SEED2=0xfbd6f4e8d0f3b0e7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2a97fd462de3f80f -DITHARE_KSCOPE_SEED2=0xfbd6f4e8d0f3b0e7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 749/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xbc9a9dd53f7e4cdb -DITHARE_KSCOPE_SEED2=0x5d8acdf5460edc5e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xbc9a9dd53f7e4cdb -DITHARE_KSCOPE_SEED2=0x5d8acdf5460edc5e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xbc9a9dd53f7e4cdb -DITHARE_KSCOPE_SEED2=0x5d8acdf5460edc5e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 750/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe5043c6a2c369af8 -DITHARE_KSCOPE_SEED2=0xe8f566e25dcfc74a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe5043c6a2c369af8 -DITHARE_KSCOPE_SEED2=0xe8f566e25dcfc74a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe5043c6a2c369af8 -DITHARE_KSCOPE_SEED2=0xe8f566e25dcfc74a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 751/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x18f5d468f3cc6999 -DITHARE_KSCOPE_SEED2=0xd974c494cef37a0c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x18f5d468f3cc6999 -DITHARE_KSCOPE_SEED2=0xd974c494cef37a0c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x18f5d468f3cc6999 -DITHARE_KSCOPE_SEED2=0xd974c494cef37a0c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 752/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d81fe68e28b5917 -DITHARE_KSCOPE_SEED2=0xdd11bb6152799cfd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d81fe68e28b5917 -DITHARE_KSCOPE_SEED2=0xdd11bb6152799cfd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2d81fe68e28b5917 -DITHARE_KSCOPE_SEED2=0xdd11bb6152799cfd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 753/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x9d76af309c26d061 -DITHARE_KSCOPE_SEED2=0x37595ff09bbfc24b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x9d76af309c26d061 -DITHARE_KSCOPE_SEED2=0x37595ff09bbfc24b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x9d76af309c26d061 -DITHARE_KSCOPE_SEED2=0x37595ff09bbfc24b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 754/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5ec5745a08be9373 -DITHARE_KSCOPE_SEED2=0xffb9b6220a44628f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5ec5745a08be9373 -DITHARE_KSCOPE_SEED2=0xffb9b6220a44628f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5ec5745a08be9373 -DITHARE_KSCOPE_SEED2=0xffb9b6220a44628f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 755/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6c06c95590708713 -DITHARE_KSCOPE_SEED2=0x72a2f9157e999ad7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6c06c95590708713 -DITHARE_KSCOPE_SEED2=0x72a2f9157e999ad7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6c06c95590708713 -DITHARE_KSCOPE_SEED2=0x72a2f9157e999ad7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 756/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x54f91b8aeb0687c4 -DITHARE_KSCOPE_SEED2=0xfb3d9bd7e48436b6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x54f91b8aeb0687c4 -DITHARE_KSCOPE_SEED2=0xfb3d9bd7e48436b6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x54f91b8aeb0687c4 -DITHARE_KSCOPE_SEED2=0xfb3d9bd7e48436b6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 757/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x44ee9152e7c5567e -DITHARE_KSCOPE_SEED2=0x31b1d5b9fc6c8b41 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x44ee9152e7c5567e -DITHARE_KSCOPE_SEED2=0x31b1d5b9fc6c8b41 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x44ee9152e7c5567e -DITHARE_KSCOPE_SEED2=0x31b1d5b9fc6c8b41 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 758/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x60b157bed2a29681 -DITHARE_KSCOPE_SEED2=0x95e66985bbad0063 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x60b157bed2a29681 -DITHARE_KSCOPE_SEED2=0x95e66985bbad0063 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x60b157bed2a29681 -DITHARE_KSCOPE_SEED2=0x95e66985bbad0063 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 759/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9e0faf16279502a8 -DITHARE_KSCOPE_SEED2=0xa8bfbc5c57568f6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9e0faf16279502a8 -DITHARE_KSCOPE_SEED2=0xa8bfbc5c57568f6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9e0faf16279502a8 -DITHARE_KSCOPE_SEED2=0xa8bfbc5c57568f6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 760/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xad84a2339a914e59 -DITHARE_KSCOPE_SEED2=0xdd4196e698fdf3c4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xad84a2339a914e59 -DITHARE_KSCOPE_SEED2=0xdd4196e698fdf3c4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xad84a2339a914e59 -DITHARE_KSCOPE_SEED2=0xdd4196e698fdf3c4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 761/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xea870c5e43d3b828 -DITHARE_KSCOPE_SEED2=0xc68f273d4110c6a5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xea870c5e43d3b828 -DITHARE_KSCOPE_SEED2=0xc68f273d4110c6a5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xea870c5e43d3b828 -DITHARE_KSCOPE_SEED2=0xc68f273d4110c6a5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 762/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x59825a3bf7123a87 -DITHARE_KSCOPE_SEED2=0x712d752590d51a6a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x59825a3bf7123a87 -DITHARE_KSCOPE_SEED2=0x712d752590d51a6a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x59825a3bf7123a87 -DITHARE_KSCOPE_SEED2=0x712d752590d51a6a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 763/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdd2774a6622cd25c -DITHARE_KSCOPE_SEED2=0xfc8fce1964e0a01b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdd2774a6622cd25c -DITHARE_KSCOPE_SEED2=0xfc8fce1964e0a01b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdd2774a6622cd25c -DITHARE_KSCOPE_SEED2=0xfc8fce1964e0a01b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 764/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9e895cb873c7ab6b -DITHARE_KSCOPE_SEED2=0x3fe6543d0a814d7f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9e895cb873c7ab6b -DITHARE_KSCOPE_SEED2=0x3fe6543d0a814d7f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9e895cb873c7ab6b -DITHARE_KSCOPE_SEED2=0x3fe6543d0a814d7f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 765/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x1bf96fea641afbf4 -DITHARE_KSCOPE_SEED2=0x2fcba0daa36a3110 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x1bf96fea641afbf4 -DITHARE_KSCOPE_SEED2=0x2fcba0daa36a3110 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x1bf96fea641afbf4 -DITHARE_KSCOPE_SEED2=0x2fcba0daa36a3110 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 766/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8c853a49f0cb978b -DITHARE_KSCOPE_SEED2=0xe5671507c2e30a53 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8c853a49f0cb978b -DITHARE_KSCOPE_SEED2=0xe5671507c2e30a53 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8c853a49f0cb978b -DITHARE_KSCOPE_SEED2=0xe5671507c2e30a53 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 767/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe2b72f650165c6c2 -DITHARE_KSCOPE_SEED2=0xf8f0133803f40b51 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe2b72f650165c6c2 -DITHARE_KSCOPE_SEED2=0xf8f0133803f40b51 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe2b72f650165c6c2 -DITHARE_KSCOPE_SEED2=0xf8f0133803f40b51 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 768/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x82efc17873c2e9d5 -DITHARE_KSCOPE_SEED2=0x19bad258c343b240 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x82efc17873c2e9d5 -DITHARE_KSCOPE_SEED2=0x19bad258c343b240 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x82efc17873c2e9d5 -DITHARE_KSCOPE_SEED2=0x19bad258c343b240 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 769/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x62addb6aec6308a9 -DITHARE_KSCOPE_SEED2=0xa86b4eda95872368 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x62addb6aec6308a9 -DITHARE_KSCOPE_SEED2=0xa86b4eda95872368 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x62addb6aec6308a9 -DITHARE_KSCOPE_SEED2=0xa86b4eda95872368 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 770/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7c08caa91cc63a8f -DITHARE_KSCOPE_SEED2=0x416eb1bdb30ef2a1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7c08caa91cc63a8f -DITHARE_KSCOPE_SEED2=0x416eb1bdb30ef2a1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7c08caa91cc63a8f -DITHARE_KSCOPE_SEED2=0x416eb1bdb30ef2a1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 771/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2b7f918a4c623010 -DITHARE_KSCOPE_SEED2=0xa8e2d8a5b504192d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2b7f918a4c623010 -DITHARE_KSCOPE_SEED2=0xa8e2d8a5b504192d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2b7f918a4c623010 -DITHARE_KSCOPE_SEED2=0xa8e2d8a5b504192d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 772/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe33a832e6fce932e -DITHARE_KSCOPE_SEED2=0x488fe6d382211e8a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe33a832e6fce932e -DITHARE_KSCOPE_SEED2=0x488fe6d382211e8a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe33a832e6fce932e -DITHARE_KSCOPE_SEED2=0x488fe6d382211e8a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 773/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x459516d179c0af78 -DITHARE_KSCOPE_SEED2=0x06ac357b25303e4e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x459516d179c0af78 -DITHARE_KSCOPE_SEED2=0x06ac357b25303e4e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x459516d179c0af78 -DITHARE_KSCOPE_SEED2=0x06ac357b25303e4e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 774/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbcf7934f88a243f4 -DITHARE_KSCOPE_SEED2=0x2a32c2d77fef3a54 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbcf7934f88a243f4 -DITHARE_KSCOPE_SEED2=0x2a32c2d77fef3a54 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbcf7934f88a243f4 -DITHARE_KSCOPE_SEED2=0x2a32c2d77fef3a54 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 775/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0889341a58015ab4 -DITHARE_KSCOPE_SEED2=0xb3dbaa378f6600c6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0889341a58015ab4 -DITHARE_KSCOPE_SEED2=0xb3dbaa378f6600c6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0889341a58015ab4 -DITHARE_KSCOPE_SEED2=0xb3dbaa378f6600c6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 776/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x25c4f7c0789e6c60 -DITHARE_KSCOPE_SEED2=0xe29598c2c9245a23 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x25c4f7c0789e6c60 -DITHARE_KSCOPE_SEED2=0xe29598c2c9245a23 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x25c4f7c0789e6c60 -DITHARE_KSCOPE_SEED2=0xe29598c2c9245a23 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 777/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc1678b3ac3f29c65 -DITHARE_KSCOPE_SEED2=0x67906605acf62926 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc1678b3ac3f29c65 -DITHARE_KSCOPE_SEED2=0x67906605acf62926 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc1678b3ac3f29c65 -DITHARE_KSCOPE_SEED2=0x67906605acf62926 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 778/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x99673269302f0368 -DITHARE_KSCOPE_SEED2=0x8c63f843bf4df2e9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x99673269302f0368 -DITHARE_KSCOPE_SEED2=0x8c63f843bf4df2e9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x99673269302f0368 -DITHARE_KSCOPE_SEED2=0x8c63f843bf4df2e9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 779/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x74c9b5a4dea85173 -DITHARE_KSCOPE_SEED2=0x4d554a6ee1723a9b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x74c9b5a4dea85173 -DITHARE_KSCOPE_SEED2=0x4d554a6ee1723a9b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x74c9b5a4dea85173 -DITHARE_KSCOPE_SEED2=0x4d554a6ee1723a9b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 780/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfd7a025d8e89797e -DITHARE_KSCOPE_SEED2=0x149f96081338035b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfd7a025d8e89797e -DITHARE_KSCOPE_SEED2=0x149f96081338035b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfd7a025d8e89797e -DITHARE_KSCOPE_SEED2=0x149f96081338035b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 781/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb78da501dfcfb564 -DITHARE_KSCOPE_SEED2=0xc70ade2e1d86742a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb78da501dfcfb564 -DITHARE_KSCOPE_SEED2=0xc70ade2e1d86742a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb78da501dfcfb564 -DITHARE_KSCOPE_SEED2=0xc70ade2e1d86742a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 782/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x95714f71be199492 -DITHARE_KSCOPE_SEED2=0xed2bb36a510b5381 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x95714f71be199492 -DITHARE_KSCOPE_SEED2=0xed2bb36a510b5381 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x95714f71be199492 -DITHARE_KSCOPE_SEED2=0xed2bb36a510b5381 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 783/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x652832d1a127716b -DITHARE_KSCOPE_SEED2=0xd2b8e5804a54ca44 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x652832d1a127716b -DITHARE_KSCOPE_SEED2=0xd2b8e5804a54ca44 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x652832d1a127716b -DITHARE_KSCOPE_SEED2=0xd2b8e5804a54ca44 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 784/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7bf42563d90d2537 -DITHARE_KSCOPE_SEED2=0x761defc3c7d6ae70 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7bf42563d90d2537 -DITHARE_KSCOPE_SEED2=0x761defc3c7d6ae70 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7bf42563d90d2537 -DITHARE_KSCOPE_SEED2=0x761defc3c7d6ae70 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 785/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x11180a282002a4e3 -DITHARE_KSCOPE_SEED2=0x235cccb844ed0056 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x11180a282002a4e3 -DITHARE_KSCOPE_SEED2=0x235cccb844ed0056 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x11180a282002a4e3 -DITHARE_KSCOPE_SEED2=0x235cccb844ed0056 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 786/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x96a4669781a7221a -DITHARE_KSCOPE_SEED2=0x01cf3c64c1554c2f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x96a4669781a7221a -DITHARE_KSCOPE_SEED2=0x01cf3c64c1554c2f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x96a4669781a7221a -DITHARE_KSCOPE_SEED2=0x01cf3c64c1554c2f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 787/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa0ccbc5f706c4bf3 -DITHARE_KSCOPE_SEED2=0x12c8848b3797ee06 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa0ccbc5f706c4bf3 -DITHARE_KSCOPE_SEED2=0x12c8848b3797ee06 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa0ccbc5f706c4bf3 -DITHARE_KSCOPE_SEED2=0x12c8848b3797ee06 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 788/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbeff2f1243d6d36 -DITHARE_KSCOPE_SEED2=0x3773f694138aeee0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbeff2f1243d6d36 -DITHARE_KSCOPE_SEED2=0x3773f694138aeee0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcbeff2f1243d6d36 -DITHARE_KSCOPE_SEED2=0x3773f694138aeee0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 789/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xca00fc84fb95c03e -DITHARE_KSCOPE_SEED2=0xdf6d6b7a465445db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xca00fc84fb95c03e -DITHARE_KSCOPE_SEED2=0xdf6d6b7a465445db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xca00fc84fb95c03e -DITHARE_KSCOPE_SEED2=0xdf6d6b7a465445db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 790/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5a88ce52a8992a3e -DITHARE_KSCOPE_SEED2=0x464a007a2141c6cc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5a88ce52a8992a3e -DITHARE_KSCOPE_SEED2=0x464a007a2141c6cc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5a88ce52a8992a3e -DITHARE_KSCOPE_SEED2=0x464a007a2141c6cc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 791/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1807ed5be3e85349 -DITHARE_KSCOPE_SEED2=0x015871026406782e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1807ed5be3e85349 -DITHARE_KSCOPE_SEED2=0x015871026406782e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1807ed5be3e85349 -DITHARE_KSCOPE_SEED2=0x015871026406782e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 792/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x786129fc744e1b6f -DITHARE_KSCOPE_SEED2=0xf9981e7d13cb24ca -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x786129fc744e1b6f -DITHARE_KSCOPE_SEED2=0xf9981e7d13cb24ca -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x786129fc744e1b6f -DITHARE_KSCOPE_SEED2=0xf9981e7d13cb24ca -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 793/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x265216815c383467 -DITHARE_KSCOPE_SEED2=0xcf9e1c5139e1ff06 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x265216815c383467 -DITHARE_KSCOPE_SEED2=0xcf9e1c5139e1ff06 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x265216815c383467 -DITHARE_KSCOPE_SEED2=0xcf9e1c5139e1ff06 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 794/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6e3c25bf1c717536 -DITHARE_KSCOPE_SEED2=0xd1aac4227c14874c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6e3c25bf1c717536 -DITHARE_KSCOPE_SEED2=0xd1aac4227c14874c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6e3c25bf1c717536 -DITHARE_KSCOPE_SEED2=0xd1aac4227c14874c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 795/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaa51a56b0501e321 -DITHARE_KSCOPE_SEED2=0x71ad3e09e00b633a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaa51a56b0501e321 -DITHARE_KSCOPE_SEED2=0x71ad3e09e00b633a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xaa51a56b0501e321 -DITHARE_KSCOPE_SEED2=0x71ad3e09e00b633a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 796/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc98107123ec12435 -DITHARE_KSCOPE_SEED2=0x1971f60f25175c98 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc98107123ec12435 -DITHARE_KSCOPE_SEED2=0x1971f60f25175c98 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc98107123ec12435 -DITHARE_KSCOPE_SEED2=0x1971f60f25175c98 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 797/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x54be8f9efeb105a4 -DITHARE_KSCOPE_SEED2=0xbfb3b0507133ae7d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x54be8f9efeb105a4 -DITHARE_KSCOPE_SEED2=0xbfb3b0507133ae7d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x54be8f9efeb105a4 -DITHARE_KSCOPE_SEED2=0xbfb3b0507133ae7d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 798/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x22341cee8d2ad945 -DITHARE_KSCOPE_SEED2=0xa5115ca557a202eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x22341cee8d2ad945 -DITHARE_KSCOPE_SEED2=0xa5115ca557a202eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x22341cee8d2ad945 -DITHARE_KSCOPE_SEED2=0xa5115ca557a202eb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 799/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x88310f7c3b5d23ab -DITHARE_KSCOPE_SEED2=0x42ebd3e4497408f7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x88310f7c3b5d23ab -DITHARE_KSCOPE_SEED2=0x42ebd3e4497408f7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x88310f7c3b5d23ab -DITHARE_KSCOPE_SEED2=0x42ebd3e4497408f7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 800/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe8b3192b308bea46 -DITHARE_KSCOPE_SEED2=0x3a5559a90399d380 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe8b3192b308bea46 -DITHARE_KSCOPE_SEED2=0x3a5559a90399d380 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe8b3192b308bea46 -DITHARE_KSCOPE_SEED2=0x3a5559a90399d380 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 801/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x48ee9087759bdd64 -DITHARE_KSCOPE_SEED2=0x28bd7aa09c2e6890 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x48ee9087759bdd64 -DITHARE_KSCOPE_SEED2=0x28bd7aa09c2e6890 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x48ee9087759bdd64 -DITHARE_KSCOPE_SEED2=0x28bd7aa09c2e6890 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 802/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdc963be16445f16f -DITHARE_KSCOPE_SEED2=0x870a1c74da1dac67 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdc963be16445f16f -DITHARE_KSCOPE_SEED2=0x870a1c74da1dac67 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdc963be16445f16f -DITHARE_KSCOPE_SEED2=0x870a1c74da1dac67 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 803/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0640e9fe82a39770 -DITHARE_KSCOPE_SEED2=0xa99db4cf040c71ec -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0640e9fe82a39770 -DITHARE_KSCOPE_SEED2=0xa99db4cf040c71ec -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0640e9fe82a39770 -DITHARE_KSCOPE_SEED2=0xa99db4cf040c71ec -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 804/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd4040d582e25d80b -DITHARE_KSCOPE_SEED2=0xa72ffa75522fb075 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd4040d582e25d80b -DITHARE_KSCOPE_SEED2=0xa72ffa75522fb075 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd4040d582e25d80b -DITHARE_KSCOPE_SEED2=0xa72ffa75522fb075 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 805/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x493ca8ff1183d2e5 -DITHARE_KSCOPE_SEED2=0xac040aaf380c214a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x493ca8ff1183d2e5 -DITHARE_KSCOPE_SEED2=0xac040aaf380c214a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x493ca8ff1183d2e5 -DITHARE_KSCOPE_SEED2=0xac040aaf380c214a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 806/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x04eb9a601589ad3a -DITHARE_KSCOPE_SEED2=0xba6d04ff0623de6b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x04eb9a601589ad3a -DITHARE_KSCOPE_SEED2=0xba6d04ff0623de6b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x04eb9a601589ad3a -DITHARE_KSCOPE_SEED2=0xba6d04ff0623de6b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 807/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9efff3232c7d5094 -DITHARE_KSCOPE_SEED2=0xf87b5e35a73f9646 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9efff3232c7d5094 -DITHARE_KSCOPE_SEED2=0xf87b5e35a73f9646 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9efff3232c7d5094 -DITHARE_KSCOPE_SEED2=0xf87b5e35a73f9646 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 808/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfed3908344d3d26b -DITHARE_KSCOPE_SEED2=0x0447e744ab266fbe -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfed3908344d3d26b -DITHARE_KSCOPE_SEED2=0x0447e744ab266fbe -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfed3908344d3d26b -DITHARE_KSCOPE_SEED2=0x0447e744ab266fbe -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 809/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb2b368b39a4dde40 -DITHARE_KSCOPE_SEED2=0x1b705ae137d5397f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb2b368b39a4dde40 -DITHARE_KSCOPE_SEED2=0x1b705ae137d5397f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb2b368b39a4dde40 -DITHARE_KSCOPE_SEED2=0x1b705ae137d5397f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 810/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x13a5bec02b4b7c29 -DITHARE_KSCOPE_SEED2=0xe86b01d7ae675a32 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x13a5bec02b4b7c29 -DITHARE_KSCOPE_SEED2=0xe86b01d7ae675a32 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x13a5bec02b4b7c29 -DITHARE_KSCOPE_SEED2=0xe86b01d7ae675a32 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 811/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x66d59d52a5499056 -DITHARE_KSCOPE_SEED2=0xa900ab8f7e4f31a3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x66d59d52a5499056 -DITHARE_KSCOPE_SEED2=0xa900ab8f7e4f31a3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x66d59d52a5499056 -DITHARE_KSCOPE_SEED2=0xa900ab8f7e4f31a3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 812/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x90ed836c954ab7cc -DITHARE_KSCOPE_SEED2=0x357d88b46daa7a44 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x90ed836c954ab7cc -DITHARE_KSCOPE_SEED2=0x357d88b46daa7a44 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x90ed836c954ab7cc -DITHARE_KSCOPE_SEED2=0x357d88b46daa7a44 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 813/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x81ee4853dae9f27b -DITHARE_KSCOPE_SEED2=0x877ae2f6884293c0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x81ee4853dae9f27b -DITHARE_KSCOPE_SEED2=0x877ae2f6884293c0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x81ee4853dae9f27b -DITHARE_KSCOPE_SEED2=0x877ae2f6884293c0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 814/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x724ef57404d9a63f -DITHARE_KSCOPE_SEED2=0x47f4bbf5de8f45ea -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x724ef57404d9a63f -DITHARE_KSCOPE_SEED2=0x47f4bbf5de8f45ea -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x724ef57404d9a63f -DITHARE_KSCOPE_SEED2=0x47f4bbf5de8f45ea -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 815/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3cad1998296f67ba -DITHARE_KSCOPE_SEED2=0x2cf58b206eae3e10 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3cad1998296f67ba -DITHARE_KSCOPE_SEED2=0x2cf58b206eae3e10 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x3cad1998296f67ba -DITHARE_KSCOPE_SEED2=0x2cf58b206eae3e10 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 816/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2a280005ecaa0e51 -DITHARE_KSCOPE_SEED2=0x7668a465b0459e77 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2a280005ecaa0e51 -DITHARE_KSCOPE_SEED2=0x7668a465b0459e77 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2a280005ecaa0e51 -DITHARE_KSCOPE_SEED2=0x7668a465b0459e77 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 817/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xe83efe43f65056a2 -DITHARE_KSCOPE_SEED2=0x2cdaedec7c05c4ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xe83efe43f65056a2 -DITHARE_KSCOPE_SEED2=0x2cdaedec7c05c4ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xe83efe43f65056a2 -DITHARE_KSCOPE_SEED2=0x2cdaedec7c05c4ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 818/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x224634d33c3605c7 -DITHARE_KSCOPE_SEED2=0x68155ebdba553a43 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x224634d33c3605c7 -DITHARE_KSCOPE_SEED2=0x68155ebdba553a43 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x224634d33c3605c7 -DITHARE_KSCOPE_SEED2=0x68155ebdba553a43 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 819/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9bc79c010b035432 -DITHARE_KSCOPE_SEED2=0x4286f86508254491 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9bc79c010b035432 -DITHARE_KSCOPE_SEED2=0x4286f86508254491 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9bc79c010b035432 -DITHARE_KSCOPE_SEED2=0x4286f86508254491 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 820/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfe90fc985ae18be8 -DITHARE_KSCOPE_SEED2=0xf3dca9dcd5150b7f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfe90fc985ae18be8 -DITHARE_KSCOPE_SEED2=0xf3dca9dcd5150b7f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfe90fc985ae18be8 -DITHARE_KSCOPE_SEED2=0xf3dca9dcd5150b7f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 821/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x3bfd694065f1a8b1 -DITHARE_KSCOPE_SEED2=0x39d39691607728b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x3bfd694065f1a8b1 -DITHARE_KSCOPE_SEED2=0x39d39691607728b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x3bfd694065f1a8b1 -DITHARE_KSCOPE_SEED2=0x39d39691607728b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 822/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8960e91b0d1ae4c5 -DITHARE_KSCOPE_SEED2=0x32b8961f3f9aa73f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8960e91b0d1ae4c5 -DITHARE_KSCOPE_SEED2=0x32b8961f3f9aa73f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8960e91b0d1ae4c5 -DITHARE_KSCOPE_SEED2=0x32b8961f3f9aa73f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 823/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5040c6821f6dd146 -DITHARE_KSCOPE_SEED2=0xed8d8d9a41496d87 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5040c6821f6dd146 -DITHARE_KSCOPE_SEED2=0xed8d8d9a41496d87 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5040c6821f6dd146 -DITHARE_KSCOPE_SEED2=0xed8d8d9a41496d87 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 824/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x053c4f43a894098c -DITHARE_KSCOPE_SEED2=0xf37548749852599c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x053c4f43a894098c -DITHARE_KSCOPE_SEED2=0xf37548749852599c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x053c4f43a894098c -DITHARE_KSCOPE_SEED2=0xf37548749852599c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 825/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xa35e61f50210551f -DITHARE_KSCOPE_SEED2=0xa4dff70255227b27 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xa35e61f50210551f -DITHARE_KSCOPE_SEED2=0xa4dff70255227b27 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xa35e61f50210551f -DITHARE_KSCOPE_SEED2=0xa4dff70255227b27 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 826/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc01a06e46dcc5d11 -DITHARE_KSCOPE_SEED2=0x166e443a27f882ff -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc01a06e46dcc5d11 -DITHARE_KSCOPE_SEED2=0x166e443a27f882ff -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc01a06e46dcc5d11 -DITHARE_KSCOPE_SEED2=0x166e443a27f882ff -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 827/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0a50fe1dd01127d4 -DITHARE_KSCOPE_SEED2=0x8e881510f200037e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0a50fe1dd01127d4 -DITHARE_KSCOPE_SEED2=0x8e881510f200037e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0a50fe1dd01127d4 -DITHARE_KSCOPE_SEED2=0x8e881510f200037e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 828/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xec65b05246c753a5 -DITHARE_KSCOPE_SEED2=0x88c33542a5ce7c9d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xec65b05246c753a5 -DITHARE_KSCOPE_SEED2=0x88c33542a5ce7c9d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xec65b05246c753a5 -DITHARE_KSCOPE_SEED2=0x88c33542a5ce7c9d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 829/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x48eb3334b9b2b53d -DITHARE_KSCOPE_SEED2=0x3a17e8dd357e16f6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x48eb3334b9b2b53d -DITHARE_KSCOPE_SEED2=0x3a17e8dd357e16f6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x48eb3334b9b2b53d -DITHARE_KSCOPE_SEED2=0x3a17e8dd357e16f6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 830/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf3c2be5b4f37284c -DITHARE_KSCOPE_SEED2=0xf27b30271919a057 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf3c2be5b4f37284c -DITHARE_KSCOPE_SEED2=0xf27b30271919a057 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf3c2be5b4f37284c -DITHARE_KSCOPE_SEED2=0xf27b30271919a057 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 831/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4d26e36f26a58797 -DITHARE_KSCOPE_SEED2=0x011c14bc0a36ed65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4d26e36f26a58797 -DITHARE_KSCOPE_SEED2=0x011c14bc0a36ed65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4d26e36f26a58797 -DITHARE_KSCOPE_SEED2=0x011c14bc0a36ed65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 832/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4480af5f29b65b0f -DITHARE_KSCOPE_SEED2=0xcb32e7a0048f075c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4480af5f29b65b0f -DITHARE_KSCOPE_SEED2=0xcb32e7a0048f075c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4480af5f29b65b0f -DITHARE_KSCOPE_SEED2=0xcb32e7a0048f075c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 833/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x335f3ca5d29e499a -DITHARE_KSCOPE_SEED2=0xba6de52dbadb340a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x335f3ca5d29e499a -DITHARE_KSCOPE_SEED2=0xba6de52dbadb340a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x335f3ca5d29e499a -DITHARE_KSCOPE_SEED2=0xba6de52dbadb340a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 834/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x53b912b21ef3600b -DITHARE_KSCOPE_SEED2=0x3bdcb0f954bca811 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x53b912b21ef3600b -DITHARE_KSCOPE_SEED2=0x3bdcb0f954bca811 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x53b912b21ef3600b -DITHARE_KSCOPE_SEED2=0x3bdcb0f954bca811 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 835/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbdc3a840ef3abf01 -DITHARE_KSCOPE_SEED2=0xcbe4e6043a723ab3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbdc3a840ef3abf01 -DITHARE_KSCOPE_SEED2=0xcbe4e6043a723ab3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbdc3a840ef3abf01 -DITHARE_KSCOPE_SEED2=0xcbe4e6043a723ab3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 836/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb5cea3eee5bd2e60 -DITHARE_KSCOPE_SEED2=0x54b1d7901ee9b79f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb5cea3eee5bd2e60 -DITHARE_KSCOPE_SEED2=0x54b1d7901ee9b79f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb5cea3eee5bd2e60 -DITHARE_KSCOPE_SEED2=0x54b1d7901ee9b79f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 837/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x87c879fc33e8352b -DITHARE_KSCOPE_SEED2=0x658039e485758629 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x87c879fc33e8352b -DITHARE_KSCOPE_SEED2=0x658039e485758629 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x87c879fc33e8352b -DITHARE_KSCOPE_SEED2=0x658039e485758629 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 838/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf33b92088478c497 -DITHARE_KSCOPE_SEED2=0xbbc5382dab951607 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf33b92088478c497 -DITHARE_KSCOPE_SEED2=0xbbc5382dab951607 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf33b92088478c497 -DITHARE_KSCOPE_SEED2=0xbbc5382dab951607 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 839/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x72e8db856404f38b -DITHARE_KSCOPE_SEED2=0xa6728a8b792f34e0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x72e8db856404f38b -DITHARE_KSCOPE_SEED2=0xa6728a8b792f34e0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x72e8db856404f38b -DITHARE_KSCOPE_SEED2=0xa6728a8b792f34e0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 840/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd3a12399d8d707c4 -DITHARE_KSCOPE_SEED2=0x7a060c2fcf25f7ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd3a12399d8d707c4 -DITHARE_KSCOPE_SEED2=0x7a060c2fcf25f7ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd3a12399d8d707c4 -DITHARE_KSCOPE_SEED2=0x7a060c2fcf25f7ad -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 841/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x00cbf3c95d080e0d -DITHARE_KSCOPE_SEED2=0xbbd9145cf1614018 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x00cbf3c95d080e0d -DITHARE_KSCOPE_SEED2=0xbbd9145cf1614018 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x00cbf3c95d080e0d -DITHARE_KSCOPE_SEED2=0xbbd9145cf1614018 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 842/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd36bb70b647875f8 -DITHARE_KSCOPE_SEED2=0x5de017e93d06f054 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd36bb70b647875f8 -DITHARE_KSCOPE_SEED2=0x5de017e93d06f054 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd36bb70b647875f8 -DITHARE_KSCOPE_SEED2=0x5de017e93d06f054 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 843/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xae273d029bb76463 -DITHARE_KSCOPE_SEED2=0x1f3e76e45518915a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xae273d029bb76463 -DITHARE_KSCOPE_SEED2=0x1f3e76e45518915a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xae273d029bb76463 -DITHARE_KSCOPE_SEED2=0x1f3e76e45518915a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 844/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe8a6ac556838bd5c -DITHARE_KSCOPE_SEED2=0x8be34fcca02bf688 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe8a6ac556838bd5c -DITHARE_KSCOPE_SEED2=0x8be34fcca02bf688 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe8a6ac556838bd5c -DITHARE_KSCOPE_SEED2=0x8be34fcca02bf688 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 845/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x9fbd93fdae812626 -DITHARE_KSCOPE_SEED2=0x11168e9e0325f9e9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x9fbd93fdae812626 -DITHARE_KSCOPE_SEED2=0x11168e9e0325f9e9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x9fbd93fdae812626 -DITHARE_KSCOPE_SEED2=0x11168e9e0325f9e9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 846/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x56e1784401efe2f7 -DITHARE_KSCOPE_SEED2=0xfa62dd5adb24373b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x56e1784401efe2f7 -DITHARE_KSCOPE_SEED2=0xfa62dd5adb24373b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x56e1784401efe2f7 -DITHARE_KSCOPE_SEED2=0xfa62dd5adb24373b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 847/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5e323c38f868a26b -DITHARE_KSCOPE_SEED2=0x7438cf22baf855fd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5e323c38f868a26b -DITHARE_KSCOPE_SEED2=0x7438cf22baf855fd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5e323c38f868a26b -DITHARE_KSCOPE_SEED2=0x7438cf22baf855fd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 848/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x877fa2734022efd6 -DITHARE_KSCOPE_SEED2=0x0965f0318fe3256d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x877fa2734022efd6 -DITHARE_KSCOPE_SEED2=0x0965f0318fe3256d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x877fa2734022efd6 -DITHARE_KSCOPE_SEED2=0x0965f0318fe3256d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 849/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x452b3c7f63471323 -DITHARE_KSCOPE_SEED2=0xb683e894010473b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x452b3c7f63471323 -DITHARE_KSCOPE_SEED2=0xb683e894010473b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x452b3c7f63471323 -DITHARE_KSCOPE_SEED2=0xb683e894010473b1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 850/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8251c2a15bb1f862 -DITHARE_KSCOPE_SEED2=0x47b9897f1a26e317 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8251c2a15bb1f862 -DITHARE_KSCOPE_SEED2=0x47b9897f1a26e317 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8251c2a15bb1f862 -DITHARE_KSCOPE_SEED2=0x47b9897f1a26e317 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 851/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbe9e9b5cc4927dfb -DITHARE_KSCOPE_SEED2=0x2d28eb8319cebba5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbe9e9b5cc4927dfb -DITHARE_KSCOPE_SEED2=0x2d28eb8319cebba5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbe9e9b5cc4927dfb -DITHARE_KSCOPE_SEED2=0x2d28eb8319cebba5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 852/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa197e46aa2e6b007 -DITHARE_KSCOPE_SEED2=0x772ee2b36391ec5e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa197e46aa2e6b007 -DITHARE_KSCOPE_SEED2=0x772ee2b36391ec5e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa197e46aa2e6b007 -DITHARE_KSCOPE_SEED2=0x772ee2b36391ec5e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 853/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb60c3845477aff15 -DITHARE_KSCOPE_SEED2=0xf3f6405f0892b598 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb60c3845477aff15 -DITHARE_KSCOPE_SEED2=0xf3f6405f0892b598 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb60c3845477aff15 -DITHARE_KSCOPE_SEED2=0xf3f6405f0892b598 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 854/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd8ea031cfa3d329d -DITHARE_KSCOPE_SEED2=0xd4de725b3949dc65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd8ea031cfa3d329d -DITHARE_KSCOPE_SEED2=0xd4de725b3949dc65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd8ea031cfa3d329d -DITHARE_KSCOPE_SEED2=0xd4de725b3949dc65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 855/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe8340238d18ff7ac -DITHARE_KSCOPE_SEED2=0x7c3b5c9c152f7102 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe8340238d18ff7ac -DITHARE_KSCOPE_SEED2=0x7c3b5c9c152f7102 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe8340238d18ff7ac -DITHARE_KSCOPE_SEED2=0x7c3b5c9c152f7102 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 856/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f0221f527e3fd22 -DITHARE_KSCOPE_SEED2=0x6e353eba8ac8e24c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f0221f527e3fd22 -DITHARE_KSCOPE_SEED2=0x6e353eba8ac8e24c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8f0221f527e3fd22 -DITHARE_KSCOPE_SEED2=0x6e353eba8ac8e24c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 857/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x5b708824f3f0573c -DITHARE_KSCOPE_SEED2=0x852ca29d3189b363 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x5b708824f3f0573c -DITHARE_KSCOPE_SEED2=0x852ca29d3189b363 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x5b708824f3f0573c -DITHARE_KSCOPE_SEED2=0x852ca29d3189b363 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 858/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xff27ae1b1e5d6f04 -DITHARE_KSCOPE_SEED2=0xb6fa5108fb8e7e4c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xff27ae1b1e5d6f04 -DITHARE_KSCOPE_SEED2=0xb6fa5108fb8e7e4c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xff27ae1b1e5d6f04 -DITHARE_KSCOPE_SEED2=0xb6fa5108fb8e7e4c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 859/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6fca7fa4cdf07a8a -DITHARE_KSCOPE_SEED2=0xa327c26896f4b3ac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6fca7fa4cdf07a8a -DITHARE_KSCOPE_SEED2=0xa327c26896f4b3ac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6fca7fa4cdf07a8a -DITHARE_KSCOPE_SEED2=0xa327c26896f4b3ac -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 860/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x98dc462c5a4ea4e9 -DITHARE_KSCOPE_SEED2=0x285b27b912a444df -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x98dc462c5a4ea4e9 -DITHARE_KSCOPE_SEED2=0x285b27b912a444df -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x98dc462c5a4ea4e9 -DITHARE_KSCOPE_SEED2=0x285b27b912a444df -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 861/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x9855dd1ef1d84b71 -DITHARE_KSCOPE_SEED2=0xeb5bb4df2df32ac2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x9855dd1ef1d84b71 -DITHARE_KSCOPE_SEED2=0xeb5bb4df2df32ac2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x9855dd1ef1d84b71 -DITHARE_KSCOPE_SEED2=0xeb5bb4df2df32ac2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 862/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5dd3c61daf90c1b4 -DITHARE_KSCOPE_SEED2=0x0338890dc61e73af -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5dd3c61daf90c1b4 -DITHARE_KSCOPE_SEED2=0x0338890dc61e73af -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5dd3c61daf90c1b4 -DITHARE_KSCOPE_SEED2=0x0338890dc61e73af -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 863/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd3a00bb8fab59f97 -DITHARE_KSCOPE_SEED2=0x47a4bbedcd9e48c4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd3a00bb8fab59f97 -DITHARE_KSCOPE_SEED2=0x47a4bbedcd9e48c4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd3a00bb8fab59f97 -DITHARE_KSCOPE_SEED2=0x47a4bbedcd9e48c4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 864/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x18f9a74b1ce6e614 -DITHARE_KSCOPE_SEED2=0x0b440129c5477ff1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x18f9a74b1ce6e614 -DITHARE_KSCOPE_SEED2=0x0b440129c5477ff1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x18f9a74b1ce6e614 -DITHARE_KSCOPE_SEED2=0x0b440129c5477ff1 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 865/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x16b7298df8383ce0 -DITHARE_KSCOPE_SEED2=0xa4f9a8f5525b89a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x16b7298df8383ce0 -DITHARE_KSCOPE_SEED2=0xa4f9a8f5525b89a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x16b7298df8383ce0 -DITHARE_KSCOPE_SEED2=0xa4f9a8f5525b89a4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 866/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfe97ee006b2fe567 -DITHARE_KSCOPE_SEED2=0x127cefc778e6e16c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfe97ee006b2fe567 -DITHARE_KSCOPE_SEED2=0x127cefc778e6e16c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfe97ee006b2fe567 -DITHARE_KSCOPE_SEED2=0x127cefc778e6e16c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 867/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x86dbe2b8d66654f0 -DITHARE_KSCOPE_SEED2=0x9d656b31381451e8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x86dbe2b8d66654f0 -DITHARE_KSCOPE_SEED2=0x9d656b31381451e8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x86dbe2b8d66654f0 -DITHARE_KSCOPE_SEED2=0x9d656b31381451e8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 868/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44db866a87366de5 -DITHARE_KSCOPE_SEED2=0x07e8b55074592688 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44db866a87366de5 -DITHARE_KSCOPE_SEED2=0x07e8b55074592688 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44db866a87366de5 -DITHARE_KSCOPE_SEED2=0x07e8b55074592688 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 869/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb411466fefa12852 -DITHARE_KSCOPE_SEED2=0xbdcf6fef864eaf34 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb411466fefa12852 -DITHARE_KSCOPE_SEED2=0xbdcf6fef864eaf34 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb411466fefa12852 -DITHARE_KSCOPE_SEED2=0xbdcf6fef864eaf34 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 870/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x115ca5ab98f3ae52 -DITHARE_KSCOPE_SEED2=0x1d71b8fbf3937ee7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x115ca5ab98f3ae52 -DITHARE_KSCOPE_SEED2=0x1d71b8fbf3937ee7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x115ca5ab98f3ae52 -DITHARE_KSCOPE_SEED2=0x1d71b8fbf3937ee7 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 871/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd9a2b5e59f112cab -DITHARE_KSCOPE_SEED2=0xcadcd0f0d4b29b79 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd9a2b5e59f112cab -DITHARE_KSCOPE_SEED2=0xcadcd0f0d4b29b79 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd9a2b5e59f112cab -DITHARE_KSCOPE_SEED2=0xcadcd0f0d4b29b79 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 872/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x16d10260a7a89caf -DITHARE_KSCOPE_SEED2=0x9fc42500a761557c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x16d10260a7a89caf -DITHARE_KSCOPE_SEED2=0x9fc42500a761557c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x16d10260a7a89caf -DITHARE_KSCOPE_SEED2=0x9fc42500a761557c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 873/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x22f23ff0207efe87 -DITHARE_KSCOPE_SEED2=0x837dbaa487c91fb2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x22f23ff0207efe87 -DITHARE_KSCOPE_SEED2=0x837dbaa487c91fb2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x22f23ff0207efe87 -DITHARE_KSCOPE_SEED2=0x837dbaa487c91fb2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 874/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb81ae3754c6a6ec -DITHARE_KSCOPE_SEED2=0x330e25822300ec02 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb81ae3754c6a6ec -DITHARE_KSCOPE_SEED2=0x330e25822300ec02 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb81ae3754c6a6ec -DITHARE_KSCOPE_SEED2=0x330e25822300ec02 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 875/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7fbdf7618d529da6 -DITHARE_KSCOPE_SEED2=0xa06c151c33665fe6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7fbdf7618d529da6 -DITHARE_KSCOPE_SEED2=0xa06c151c33665fe6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7fbdf7618d529da6 -DITHARE_KSCOPE_SEED2=0xa06c151c33665fe6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 876/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4a6a2d6e3a5375d3 -DITHARE_KSCOPE_SEED2=0x2a1eec4169572fe0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4a6a2d6e3a5375d3 -DITHARE_KSCOPE_SEED2=0x2a1eec4169572fe0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4a6a2d6e3a5375d3 -DITHARE_KSCOPE_SEED2=0x2a1eec4169572fe0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 877/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x6153c1334c988d85 -DITHARE_KSCOPE_SEED2=0x3cadd888942110c0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x6153c1334c988d85 -DITHARE_KSCOPE_SEED2=0x3cadd888942110c0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x6153c1334c988d85 -DITHARE_KSCOPE_SEED2=0x3cadd888942110c0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 878/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0a102851fed2dd3c -DITHARE_KSCOPE_SEED2=0xdf0a8ec08417ec76 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0a102851fed2dd3c -DITHARE_KSCOPE_SEED2=0xdf0a8ec08417ec76 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0a102851fed2dd3c -DITHARE_KSCOPE_SEED2=0xdf0a8ec08417ec76 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 879/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb6213e0462e28d34 -DITHARE_KSCOPE_SEED2=0x7cfb5a76fe81489f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb6213e0462e28d34 -DITHARE_KSCOPE_SEED2=0x7cfb5a76fe81489f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb6213e0462e28d34 -DITHARE_KSCOPE_SEED2=0x7cfb5a76fe81489f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 880/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdfc07507a6a8d347 -DITHARE_KSCOPE_SEED2=0x3af3acfc4de6d0ce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdfc07507a6a8d347 -DITHARE_KSCOPE_SEED2=0x3af3acfc4de6d0ce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdfc07507a6a8d347 -DITHARE_KSCOPE_SEED2=0x3af3acfc4de6d0ce -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 881/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x491725ccee58cd1f -DITHARE_KSCOPE_SEED2=0x659a5842264f7a17 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x491725ccee58cd1f -DITHARE_KSCOPE_SEED2=0x659a5842264f7a17 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x491725ccee58cd1f -DITHARE_KSCOPE_SEED2=0x659a5842264f7a17 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 882/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x653b414c87a19ac2 -DITHARE_KSCOPE_SEED2=0xd4429b34b6505304 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x653b414c87a19ac2 -DITHARE_KSCOPE_SEED2=0xd4429b34b6505304 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x653b414c87a19ac2 -DITHARE_KSCOPE_SEED2=0xd4429b34b6505304 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 883/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf9d41671aec561a5 -DITHARE_KSCOPE_SEED2=0xc9bf221c1c576ac8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf9d41671aec561a5 -DITHARE_KSCOPE_SEED2=0xc9bf221c1c576ac8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf9d41671aec561a5 -DITHARE_KSCOPE_SEED2=0xc9bf221c1c576ac8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 884/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85e97134be29234c -DITHARE_KSCOPE_SEED2=0x68ea8516fbe4bbea -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85e97134be29234c -DITHARE_KSCOPE_SEED2=0x68ea8516fbe4bbea -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x85e97134be29234c -DITHARE_KSCOPE_SEED2=0x68ea8516fbe4bbea -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 885/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x4de5e1ae90dedf92 -DITHARE_KSCOPE_SEED2=0x3f0351d4bff2f993 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x4de5e1ae90dedf92 -DITHARE_KSCOPE_SEED2=0x3f0351d4bff2f993 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x4de5e1ae90dedf92 -DITHARE_KSCOPE_SEED2=0x3f0351d4bff2f993 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 886/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbda471186913f034 -DITHARE_KSCOPE_SEED2=0x030ce970ac97d203 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbda471186913f034 -DITHARE_KSCOPE_SEED2=0x030ce970ac97d203 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbda471186913f034 -DITHARE_KSCOPE_SEED2=0x030ce970ac97d203 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 887/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x916ca49f296936e4 -DITHARE_KSCOPE_SEED2=0x909f7fce05e0cfda -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x916ca49f296936e4 -DITHARE_KSCOPE_SEED2=0x909f7fce05e0cfda -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x916ca49f296936e4 -DITHARE_KSCOPE_SEED2=0x909f7fce05e0cfda -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 888/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb5e979c342fa6893 -DITHARE_KSCOPE_SEED2=0x8170e56ff229a55f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb5e979c342fa6893 -DITHARE_KSCOPE_SEED2=0x8170e56ff229a55f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb5e979c342fa6893 -DITHARE_KSCOPE_SEED2=0x8170e56ff229a55f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 889/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x047f03f2e39efdfe -DITHARE_KSCOPE_SEED2=0xbfcce5b766fd2bf0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x047f03f2e39efdfe -DITHARE_KSCOPE_SEED2=0xbfcce5b766fd2bf0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x047f03f2e39efdfe -DITHARE_KSCOPE_SEED2=0xbfcce5b766fd2bf0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 890/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7d4806b5b34eec33 -DITHARE_KSCOPE_SEED2=0x6354cd66f26ecd0b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7d4806b5b34eec33 -DITHARE_KSCOPE_SEED2=0x6354cd66f26ecd0b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7d4806b5b34eec33 -DITHARE_KSCOPE_SEED2=0x6354cd66f26ecd0b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 891/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc0ce4beb525c43f5 -DITHARE_KSCOPE_SEED2=0xeb3407b0256538a6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc0ce4beb525c43f5 -DITHARE_KSCOPE_SEED2=0xeb3407b0256538a6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc0ce4beb525c43f5 -DITHARE_KSCOPE_SEED2=0xeb3407b0256538a6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 892/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb5f5271c273110d -DITHARE_KSCOPE_SEED2=0xb6e43b76d1afd7b8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb5f5271c273110d -DITHARE_KSCOPE_SEED2=0xb6e43b76d1afd7b8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb5f5271c273110d -DITHARE_KSCOPE_SEED2=0xb6e43b76d1afd7b8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 893/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x4eedaf222a275b65 -DITHARE_KSCOPE_SEED2=0x7ab88369f1f30d86 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x4eedaf222a275b65 -DITHARE_KSCOPE_SEED2=0x7ab88369f1f30d86 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x4eedaf222a275b65 -DITHARE_KSCOPE_SEED2=0x7ab88369f1f30d86 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 894/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x19566d0a5b11e422 -DITHARE_KSCOPE_SEED2=0xd1c6a7b17707412f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x19566d0a5b11e422 -DITHARE_KSCOPE_SEED2=0xd1c6a7b17707412f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x19566d0a5b11e422 -DITHARE_KSCOPE_SEED2=0xd1c6a7b17707412f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 895/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf9b2c2c752443762 -DITHARE_KSCOPE_SEED2=0x38bb5dd529510ec8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf9b2c2c752443762 -DITHARE_KSCOPE_SEED2=0x38bb5dd529510ec8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf9b2c2c752443762 -DITHARE_KSCOPE_SEED2=0x38bb5dd529510ec8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 896/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x69d6611598d87775 -DITHARE_KSCOPE_SEED2=0x080dd8c98bdee685 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x69d6611598d87775 -DITHARE_KSCOPE_SEED2=0x080dd8c98bdee685 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x69d6611598d87775 -DITHARE_KSCOPE_SEED2=0x080dd8c98bdee685 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 897/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb991113610efb794 -DITHARE_KSCOPE_SEED2=0x25c531704e8cf740 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb991113610efb794 -DITHARE_KSCOPE_SEED2=0x25c531704e8cf740 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb991113610efb794 -DITHARE_KSCOPE_SEED2=0x25c531704e8cf740 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 898/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb74b916cc4c91d16 -DITHARE_KSCOPE_SEED2=0xc8b67574ef7b5884 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb74b916cc4c91d16 -DITHARE_KSCOPE_SEED2=0xc8b67574ef7b5884 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb74b916cc4c91d16 -DITHARE_KSCOPE_SEED2=0xc8b67574ef7b5884 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 899/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x20efe093c2d0ecc8 -DITHARE_KSCOPE_SEED2=0xd343bd6f6c058230 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x20efe093c2d0ecc8 -DITHARE_KSCOPE_SEED2=0xd343bd6f6c058230 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x20efe093c2d0ecc8 -DITHARE_KSCOPE_SEED2=0xd343bd6f6c058230 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 900/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8a48220a630a0eee -DITHARE_KSCOPE_SEED2=0xa649538359690bd0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8a48220a630a0eee -DITHARE_KSCOPE_SEED2=0xa649538359690bd0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8a48220a630a0eee -DITHARE_KSCOPE_SEED2=0xa649538359690bd0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 901/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xf584c3aaaccab02e -DITHARE_KSCOPE_SEED2=0xbfa083a3a6908c49 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xf584c3aaaccab02e -DITHARE_KSCOPE_SEED2=0xbfa083a3a6908c49 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xf584c3aaaccab02e -DITHARE_KSCOPE_SEED2=0xbfa083a3a6908c49 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 902/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5438d52f9e26e1c1 -DITHARE_KSCOPE_SEED2=0x3335e7ad2444e6ae -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5438d52f9e26e1c1 -DITHARE_KSCOPE_SEED2=0x3335e7ad2444e6ae -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5438d52f9e26e1c1 -DITHARE_KSCOPE_SEED2=0x3335e7ad2444e6ae -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 903/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc9f45299941ab34a -DITHARE_KSCOPE_SEED2=0xa707c0ce6ec8aca6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc9f45299941ab34a -DITHARE_KSCOPE_SEED2=0xa707c0ce6ec8aca6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc9f45299941ab34a -DITHARE_KSCOPE_SEED2=0xa707c0ce6ec8aca6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 904/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe0451ce550b87adf -DITHARE_KSCOPE_SEED2=0xc77af5264cd1f460 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe0451ce550b87adf -DITHARE_KSCOPE_SEED2=0xc77af5264cd1f460 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe0451ce550b87adf -DITHARE_KSCOPE_SEED2=0xc77af5264cd1f460 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 905/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x93064a8e678aab41 -DITHARE_KSCOPE_SEED2=0x0e490c6a323a7853 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x93064a8e678aab41 -DITHARE_KSCOPE_SEED2=0x0e490c6a323a7853 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x93064a8e678aab41 -DITHARE_KSCOPE_SEED2=0x0e490c6a323a7853 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 906/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x30b5864a4bccc016 -DITHARE_KSCOPE_SEED2=0xd4357a58faca048f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x30b5864a4bccc016 -DITHARE_KSCOPE_SEED2=0xd4357a58faca048f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x30b5864a4bccc016 -DITHARE_KSCOPE_SEED2=0xd4357a58faca048f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 907/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb058a4105b92e259 -DITHARE_KSCOPE_SEED2=0x6dad9cd3c8af251e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb058a4105b92e259 -DITHARE_KSCOPE_SEED2=0x6dad9cd3c8af251e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb058a4105b92e259 -DITHARE_KSCOPE_SEED2=0x6dad9cd3c8af251e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 908/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x68b7394dba14e785 -DITHARE_KSCOPE_SEED2=0xfda54de7f5976453 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x68b7394dba14e785 -DITHARE_KSCOPE_SEED2=0xfda54de7f5976453 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x68b7394dba14e785 -DITHARE_KSCOPE_SEED2=0xfda54de7f5976453 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 909/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xe6ad9a29a7cadb34 -DITHARE_KSCOPE_SEED2=0x96665031cd91a8de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xe6ad9a29a7cadb34 -DITHARE_KSCOPE_SEED2=0x96665031cd91a8de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xe6ad9a29a7cadb34 -DITHARE_KSCOPE_SEED2=0x96665031cd91a8de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 910/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6a1ad09851485775 -DITHARE_KSCOPE_SEED2=0x62ddeacea26b2897 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6a1ad09851485775 -DITHARE_KSCOPE_SEED2=0x62ddeacea26b2897 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6a1ad09851485775 -DITHARE_KSCOPE_SEED2=0x62ddeacea26b2897 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 911/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xabe3c289a9a61b3b -DITHARE_KSCOPE_SEED2=0xe9ebc7cf0a107dd3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xabe3c289a9a61b3b -DITHARE_KSCOPE_SEED2=0xe9ebc7cf0a107dd3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xabe3c289a9a61b3b -DITHARE_KSCOPE_SEED2=0xe9ebc7cf0a107dd3 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 912/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8eb12a01832a7bb3 -DITHARE_KSCOPE_SEED2=0x49dbbef114960cbb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8eb12a01832a7bb3 -DITHARE_KSCOPE_SEED2=0x49dbbef114960cbb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8eb12a01832a7bb3 -DITHARE_KSCOPE_SEED2=0x49dbbef114960cbb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 913/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x3b02409ef580ca2c -DITHARE_KSCOPE_SEED2=0xe9e9152d51d33abc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x3b02409ef580ca2c -DITHARE_KSCOPE_SEED2=0xe9e9152d51d33abc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x3b02409ef580ca2c -DITHARE_KSCOPE_SEED2=0xe9e9152d51d33abc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 914/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xca4123c5ff96dba9 -DITHARE_KSCOPE_SEED2=0xb4dfb12ef378785b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xca4123c5ff96dba9 -DITHARE_KSCOPE_SEED2=0xb4dfb12ef378785b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xca4123c5ff96dba9 -DITHARE_KSCOPE_SEED2=0xb4dfb12ef378785b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 915/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1b57c83d5626eb1e -DITHARE_KSCOPE_SEED2=0x93e0547285b0997c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1b57c83d5626eb1e -DITHARE_KSCOPE_SEED2=0x93e0547285b0997c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1b57c83d5626eb1e -DITHARE_KSCOPE_SEED2=0x93e0547285b0997c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 916/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf37146ed38f1b4af -DITHARE_KSCOPE_SEED2=0x6b2529ec3f8f6e21 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf37146ed38f1b4af -DITHARE_KSCOPE_SEED2=0x6b2529ec3f8f6e21 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf37146ed38f1b4af -DITHARE_KSCOPE_SEED2=0x6b2529ec3f8f6e21 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 917/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xc35426b75c44eb54 -DITHARE_KSCOPE_SEED2=0x5e494c47461ef079 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xc35426b75c44eb54 -DITHARE_KSCOPE_SEED2=0x5e494c47461ef079 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xc35426b75c44eb54 -DITHARE_KSCOPE_SEED2=0x5e494c47461ef079 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 918/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe42e1cdec0bdf06d -DITHARE_KSCOPE_SEED2=0x169596129651754e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe42e1cdec0bdf06d -DITHARE_KSCOPE_SEED2=0x169596129651754e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xe42e1cdec0bdf06d -DITHARE_KSCOPE_SEED2=0x169596129651754e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 919/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcc7eb02d58a8dbeb -DITHARE_KSCOPE_SEED2=0xca2a0a5fa477af28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcc7eb02d58a8dbeb -DITHARE_KSCOPE_SEED2=0xca2a0a5fa477af28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcc7eb02d58a8dbeb -DITHARE_KSCOPE_SEED2=0xca2a0a5fa477af28 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 920/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7faf681772e41f69 -DITHARE_KSCOPE_SEED2=0x1753f41f15cbcce2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7faf681772e41f69 -DITHARE_KSCOPE_SEED2=0x1753f41f15cbcce2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7faf681772e41f69 -DITHARE_KSCOPE_SEED2=0x1753f41f15cbcce2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 921/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x33ae6a8ad1f1af03 -DITHARE_KSCOPE_SEED2=0x72f37ba13528fa06 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x33ae6a8ad1f1af03 -DITHARE_KSCOPE_SEED2=0x72f37ba13528fa06 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x33ae6a8ad1f1af03 -DITHARE_KSCOPE_SEED2=0x72f37ba13528fa06 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 922/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x499727cb92619950 -DITHARE_KSCOPE_SEED2=0x07ac4324bcb261f9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x499727cb92619950 -DITHARE_KSCOPE_SEED2=0x07ac4324bcb261f9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x499727cb92619950 -DITHARE_KSCOPE_SEED2=0x07ac4324bcb261f9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 923/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf817ac5833a92f21 -DITHARE_KSCOPE_SEED2=0x51f1243170bd504e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf817ac5833a92f21 -DITHARE_KSCOPE_SEED2=0x51f1243170bd504e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf817ac5833a92f21 -DITHARE_KSCOPE_SEED2=0x51f1243170bd504e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 924/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2380158f96bd8d7a -DITHARE_KSCOPE_SEED2=0xb53791ef6017e32d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2380158f96bd8d7a -DITHARE_KSCOPE_SEED2=0xb53791ef6017e32d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2380158f96bd8d7a -DITHARE_KSCOPE_SEED2=0xb53791ef6017e32d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 925/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb5c550cb5e753a7a -DITHARE_KSCOPE_SEED2=0xeb671ea2a841b7d8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb5c550cb5e753a7a -DITHARE_KSCOPE_SEED2=0xeb671ea2a841b7d8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb5c550cb5e753a7a -DITHARE_KSCOPE_SEED2=0xeb671ea2a841b7d8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 926/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9f71d984892458d3 -DITHARE_KSCOPE_SEED2=0x9bfdf4d93ebc6965 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9f71d984892458d3 -DITHARE_KSCOPE_SEED2=0x9bfdf4d93ebc6965 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9f71d984892458d3 -DITHARE_KSCOPE_SEED2=0x9bfdf4d93ebc6965 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 927/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x341d2b604f705510 -DITHARE_KSCOPE_SEED2=0x30492dff782edd24 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x341d2b604f705510 -DITHARE_KSCOPE_SEED2=0x30492dff782edd24 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x341d2b604f705510 -DITHARE_KSCOPE_SEED2=0x30492dff782edd24 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 928/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4fddd721ed04a19d -DITHARE_KSCOPE_SEED2=0xfa2d639c270fbb1c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4fddd721ed04a19d -DITHARE_KSCOPE_SEED2=0xfa2d639c270fbb1c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4fddd721ed04a19d -DITHARE_KSCOPE_SEED2=0xfa2d639c270fbb1c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 929/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xf380d6faa6a399ef -DITHARE_KSCOPE_SEED2=0x00136902b46bbede -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xf380d6faa6a399ef -DITHARE_KSCOPE_SEED2=0x00136902b46bbede -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xf380d6faa6a399ef -DITHARE_KSCOPE_SEED2=0x00136902b46bbede -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 930/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44879e6348723784 -DITHARE_KSCOPE_SEED2=0x692abee1c94dae46 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44879e6348723784 -DITHARE_KSCOPE_SEED2=0x692abee1c94dae46 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44879e6348723784 -DITHARE_KSCOPE_SEED2=0x692abee1c94dae46 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 931/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x59a215f336437b42 -DITHARE_KSCOPE_SEED2=0x14ad22169ea06e20 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x59a215f336437b42 -DITHARE_KSCOPE_SEED2=0x14ad22169ea06e20 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x59a215f336437b42 -DITHARE_KSCOPE_SEED2=0x14ad22169ea06e20 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 932/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x636e0b2bd65a0baa -DITHARE_KSCOPE_SEED2=0xc602eeb166c73bbc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x636e0b2bd65a0baa -DITHARE_KSCOPE_SEED2=0xc602eeb166c73bbc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x636e0b2bd65a0baa -DITHARE_KSCOPE_SEED2=0xc602eeb166c73bbc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 933/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xf4ee1dbb5841e9d8 -DITHARE_KSCOPE_SEED2=0x0713be964e1a9e47 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xf4ee1dbb5841e9d8 -DITHARE_KSCOPE_SEED2=0x0713be964e1a9e47 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xf4ee1dbb5841e9d8 -DITHARE_KSCOPE_SEED2=0x0713be964e1a9e47 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 934/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x365127a3d35dfe7d -DITHARE_KSCOPE_SEED2=0x5d29536d0ac81b4c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x365127a3d35dfe7d -DITHARE_KSCOPE_SEED2=0x5d29536d0ac81b4c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x365127a3d35dfe7d -DITHARE_KSCOPE_SEED2=0x5d29536d0ac81b4c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 935/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbc6235805953f30c -DITHARE_KSCOPE_SEED2=0x0aa6986d1094db01 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbc6235805953f30c -DITHARE_KSCOPE_SEED2=0x0aa6986d1094db01 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbc6235805953f30c -DITHARE_KSCOPE_SEED2=0x0aa6986d1094db01 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 936/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44d45a90b28682b0 -DITHARE_KSCOPE_SEED2=0xb5ed6f7110d49255 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44d45a90b28682b0 -DITHARE_KSCOPE_SEED2=0xb5ed6f7110d49255 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44d45a90b28682b0 -DITHARE_KSCOPE_SEED2=0xb5ed6f7110d49255 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 937/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x1afcf2e59382e051 -DITHARE_KSCOPE_SEED2=0x97b313e1633a7c3a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x1afcf2e59382e051 -DITHARE_KSCOPE_SEED2=0x97b313e1633a7c3a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x1afcf2e59382e051 -DITHARE_KSCOPE_SEED2=0x97b313e1633a7c3a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 938/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa61680b40c3d22b9 -DITHARE_KSCOPE_SEED2=0x07500e667be21fee -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa61680b40c3d22b9 -DITHARE_KSCOPE_SEED2=0x07500e667be21fee -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa61680b40c3d22b9 -DITHARE_KSCOPE_SEED2=0x07500e667be21fee -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 939/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf5fab5e4b431fa17 -DITHARE_KSCOPE_SEED2=0xafb198c31b6fa9de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf5fab5e4b431fa17 -DITHARE_KSCOPE_SEED2=0xafb198c31b6fa9de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf5fab5e4b431fa17 -DITHARE_KSCOPE_SEED2=0xafb198c31b6fa9de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 940/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd8061545808974c1 -DITHARE_KSCOPE_SEED2=0x1cf88eabc7305b57 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd8061545808974c1 -DITHARE_KSCOPE_SEED2=0x1cf88eabc7305b57 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd8061545808974c1 -DITHARE_KSCOPE_SEED2=0x1cf88eabc7305b57 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 941/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xe36ec817d6811e10 -DITHARE_KSCOPE_SEED2=0xca9680899101129b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xe36ec817d6811e10 -DITHARE_KSCOPE_SEED2=0xca9680899101129b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xe36ec817d6811e10 -DITHARE_KSCOPE_SEED2=0xca9680899101129b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 942/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x91393a0157b98394 -DITHARE_KSCOPE_SEED2=0x14c51bf31e64ab94 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x91393a0157b98394 -DITHARE_KSCOPE_SEED2=0x14c51bf31e64ab94 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x91393a0157b98394 -DITHARE_KSCOPE_SEED2=0x14c51bf31e64ab94 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 943/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa86681841c48ab73 -DITHARE_KSCOPE_SEED2=0xa7c9d874105a1832 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa86681841c48ab73 -DITHARE_KSCOPE_SEED2=0xa7c9d874105a1832 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa86681841c48ab73 -DITHARE_KSCOPE_SEED2=0xa7c9d874105a1832 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 944/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdea7e9fee3dadeed -DITHARE_KSCOPE_SEED2=0xbcbc668b5e3f8fa4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdea7e9fee3dadeed -DITHARE_KSCOPE_SEED2=0xbcbc668b5e3f8fa4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdea7e9fee3dadeed -DITHARE_KSCOPE_SEED2=0xbcbc668b5e3f8fa4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 945/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x4ae78900c7ad7063 -DITHARE_KSCOPE_SEED2=0x712fbd9d3492be47 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x4ae78900c7ad7063 -DITHARE_KSCOPE_SEED2=0x712fbd9d3492be47 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x4ae78900c7ad7063 -DITHARE_KSCOPE_SEED2=0x712fbd9d3492be47 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 946/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc82a6e4d7825ca6f -DITHARE_KSCOPE_SEED2=0x4153b0c031dca640 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc82a6e4d7825ca6f -DITHARE_KSCOPE_SEED2=0x4153b0c031dca640 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc82a6e4d7825ca6f -DITHARE_KSCOPE_SEED2=0x4153b0c031dca640 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 947/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x384cb02487202ad3 -DITHARE_KSCOPE_SEED2=0x1104e4ca4d4552b5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x384cb02487202ad3 -DITHARE_KSCOPE_SEED2=0x1104e4ca4d4552b5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x384cb02487202ad3 -DITHARE_KSCOPE_SEED2=0x1104e4ca4d4552b5 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 948/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xef7854fc8b293594 -DITHARE_KSCOPE_SEED2=0x74b3ef1f71605b8b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xef7854fc8b293594 -DITHARE_KSCOPE_SEED2=0x74b3ef1f71605b8b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xef7854fc8b293594 -DITHARE_KSCOPE_SEED2=0x74b3ef1f71605b8b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 949/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x029bff79b5904e03 -DITHARE_KSCOPE_SEED2=0x23df6b155e323cfd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x029bff79b5904e03 -DITHARE_KSCOPE_SEED2=0x23df6b155e323cfd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x029bff79b5904e03 -DITHARE_KSCOPE_SEED2=0x23df6b155e323cfd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 950/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x80e04179b732756a -DITHARE_KSCOPE_SEED2=0xaace173922357403 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x80e04179b732756a -DITHARE_KSCOPE_SEED2=0xaace173922357403 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x80e04179b732756a -DITHARE_KSCOPE_SEED2=0xaace173922357403 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 951/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8db2ee620c6bcab1 -DITHARE_KSCOPE_SEED2=0x58bde190aa226475 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8db2ee620c6bcab1 -DITHARE_KSCOPE_SEED2=0x58bde190aa226475 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8db2ee620c6bcab1 -DITHARE_KSCOPE_SEED2=0x58bde190aa226475 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 952/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xece7bfa802fc621e -DITHARE_KSCOPE_SEED2=0xbb73aa6871090d59 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xece7bfa802fc621e -DITHARE_KSCOPE_SEED2=0xbb73aa6871090d59 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xece7bfa802fc621e -DITHARE_KSCOPE_SEED2=0xbb73aa6871090d59 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 953/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x2066790a0bf8f648 -DITHARE_KSCOPE_SEED2=0x7e2562f7022d8a18 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x2066790a0bf8f648 -DITHARE_KSCOPE_SEED2=0x7e2562f7022d8a18 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x2066790a0bf8f648 -DITHARE_KSCOPE_SEED2=0x7e2562f7022d8a18 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 954/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfd969f8593417920 -DITHARE_KSCOPE_SEED2=0x29c44234fb5eae1d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfd969f8593417920 -DITHARE_KSCOPE_SEED2=0x29c44234fb5eae1d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xfd969f8593417920 -DITHARE_KSCOPE_SEED2=0x29c44234fb5eae1d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 955/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb7aa7e3f845a7c32 -DITHARE_KSCOPE_SEED2=0x8d68d62f9e404ce0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb7aa7e3f845a7c32 -DITHARE_KSCOPE_SEED2=0x8d68d62f9e404ce0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb7aa7e3f845a7c32 -DITHARE_KSCOPE_SEED2=0x8d68d62f9e404ce0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 956/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5e5a6d37f35e48ff -DITHARE_KSCOPE_SEED2=0xf64adb26837a41cb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5e5a6d37f35e48ff -DITHARE_KSCOPE_SEED2=0xf64adb26837a41cb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5e5a6d37f35e48ff -DITHARE_KSCOPE_SEED2=0xf64adb26837a41cb -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 957/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x2acde80cc915ebcf -DITHARE_KSCOPE_SEED2=0xfb29bfff0b3fbad6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x2acde80cc915ebcf -DITHARE_KSCOPE_SEED2=0xfb29bfff0b3fbad6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x2acde80cc915ebcf -DITHARE_KSCOPE_SEED2=0xfb29bfff0b3fbad6 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 958/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2008ed7a5d43f3bf -DITHARE_KSCOPE_SEED2=0x695ab982bc1a6243 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2008ed7a5d43f3bf -DITHARE_KSCOPE_SEED2=0x695ab982bc1a6243 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x2008ed7a5d43f3bf -DITHARE_KSCOPE_SEED2=0x695ab982bc1a6243 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 959/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44075c8e9a3e7ca6 -DITHARE_KSCOPE_SEED2=0xa7b469a56ce0c6d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44075c8e9a3e7ca6 -DITHARE_KSCOPE_SEED2=0xa7b469a56ce0c6d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x44075c8e9a3e7ca6 -DITHARE_KSCOPE_SEED2=0xa7b469a56ce0c6d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 960/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7a03acd58da42ac3 -DITHARE_KSCOPE_SEED2=0xb67c81b75cdd717d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7a03acd58da42ac3 -DITHARE_KSCOPE_SEED2=0xb67c81b75cdd717d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7a03acd58da42ac3 -DITHARE_KSCOPE_SEED2=0xb67c81b75cdd717d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 961/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x3322ed2e639e6e17 -DITHARE_KSCOPE_SEED2=0xbfb466cc8b9beea8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x3322ed2e639e6e17 -DITHARE_KSCOPE_SEED2=0xbfb466cc8b9beea8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x3322ed2e639e6e17 -DITHARE_KSCOPE_SEED2=0xbfb466cc8b9beea8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 962/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa6f1313fc0251529 -DITHARE_KSCOPE_SEED2=0x003de9a4dbf70352 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa6f1313fc0251529 -DITHARE_KSCOPE_SEED2=0x003de9a4dbf70352 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa6f1313fc0251529 -DITHARE_KSCOPE_SEED2=0x003de9a4dbf70352 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 963/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6e444571191e6557 -DITHARE_KSCOPE_SEED2=0xa988cf3b6dc750fc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6e444571191e6557 -DITHARE_KSCOPE_SEED2=0xa988cf3b6dc750fc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6e444571191e6557 -DITHARE_KSCOPE_SEED2=0xa988cf3b6dc750fc -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 964/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x29125d4e6d8fe85b -DITHARE_KSCOPE_SEED2=0x63710669c644e74f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x29125d4e6d8fe85b -DITHARE_KSCOPE_SEED2=0x63710669c644e74f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x29125d4e6d8fe85b -DITHARE_KSCOPE_SEED2=0x63710669c644e74f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 965/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x8d687456d519b124 -DITHARE_KSCOPE_SEED2=0x21cd0a466e6fc98b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x8d687456d519b124 -DITHARE_KSCOPE_SEED2=0x21cd0a466e6fc98b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x8d687456d519b124 -DITHARE_KSCOPE_SEED2=0x21cd0a466e6fc98b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 966/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd25cd9ceb0dd3917 -DITHARE_KSCOPE_SEED2=0x263af92c7c357648 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd25cd9ceb0dd3917 -DITHARE_KSCOPE_SEED2=0x263af92c7c357648 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xd25cd9ceb0dd3917 -DITHARE_KSCOPE_SEED2=0x263af92c7c357648 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 967/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcb422b5e11bd66ae -DITHARE_KSCOPE_SEED2=0x5e6287c402c9f188 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcb422b5e11bd66ae -DITHARE_KSCOPE_SEED2=0x5e6287c402c9f188 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcb422b5e11bd66ae -DITHARE_KSCOPE_SEED2=0x5e6287c402c9f188 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 968/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb4e2f015d9846a57 -DITHARE_KSCOPE_SEED2=0x355dd76ae67f9990 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb4e2f015d9846a57 -DITHARE_KSCOPE_SEED2=0x355dd76ae67f9990 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb4e2f015d9846a57 -DITHARE_KSCOPE_SEED2=0x355dd76ae67f9990 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 969/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x02466b3e52e64882 -DITHARE_KSCOPE_SEED2=0x50ba29addf3fbbdd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x02466b3e52e64882 -DITHARE_KSCOPE_SEED2=0x50ba29addf3fbbdd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x02466b3e52e64882 -DITHARE_KSCOPE_SEED2=0x50ba29addf3fbbdd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 970/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9d46336d27cdc121 -DITHARE_KSCOPE_SEED2=0x29b64773f4105570 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9d46336d27cdc121 -DITHARE_KSCOPE_SEED2=0x29b64773f4105570 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9d46336d27cdc121 -DITHARE_KSCOPE_SEED2=0x29b64773f4105570 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 971/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xffe66ad5e414fe43 -DITHARE_KSCOPE_SEED2=0x0692b9ddd2bc2055 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xffe66ad5e414fe43 -DITHARE_KSCOPE_SEED2=0x0692b9ddd2bc2055 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xffe66ad5e414fe43 -DITHARE_KSCOPE_SEED2=0x0692b9ddd2bc2055 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 972/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9a7d39963e6a5516 -DITHARE_KSCOPE_SEED2=0x025ce3e3e6dcd02f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9a7d39963e6a5516 -DITHARE_KSCOPE_SEED2=0x025ce3e3e6dcd02f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9a7d39963e6a5516 -DITHARE_KSCOPE_SEED2=0x025ce3e3e6dcd02f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 973/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x6f54ac4affeb5c31 -DITHARE_KSCOPE_SEED2=0xe97b4d2df4287f35 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x6f54ac4affeb5c31 -DITHARE_KSCOPE_SEED2=0xe97b4d2df4287f35 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x6f54ac4affeb5c31 -DITHARE_KSCOPE_SEED2=0xe97b4d2df4287f35 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 974/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8b3f7335006309f0 -DITHARE_KSCOPE_SEED2=0x256698430ca776cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8b3f7335006309f0 -DITHARE_KSCOPE_SEED2=0x256698430ca776cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x8b3f7335006309f0 -DITHARE_KSCOPE_SEED2=0x256698430ca776cf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 975/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1903cb9ca4fc2567 -DITHARE_KSCOPE_SEED2=0xe294d48b7bcb2c0c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1903cb9ca4fc2567 -DITHARE_KSCOPE_SEED2=0xe294d48b7bcb2c0c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x1903cb9ca4fc2567 -DITHARE_KSCOPE_SEED2=0xe294d48b7bcb2c0c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 976/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0067e78db65d5434 -DITHARE_KSCOPE_SEED2=0x672a5faab1e70938 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0067e78db65d5434 -DITHARE_KSCOPE_SEED2=0x672a5faab1e70938 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0067e78db65d5434 -DITHARE_KSCOPE_SEED2=0x672a5faab1e70938 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 977/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xb0af4d149ad55c10 -DITHARE_KSCOPE_SEED2=0x99215f488bf89d0b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xb0af4d149ad55c10 -DITHARE_KSCOPE_SEED2=0x99215f488bf89d0b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xb0af4d149ad55c10 -DITHARE_KSCOPE_SEED2=0x99215f488bf89d0b -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 978/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x06b09b9982086f31 -DITHARE_KSCOPE_SEED2=0xa4e7ec4ef0fead45 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x06b09b9982086f31 -DITHARE_KSCOPE_SEED2=0xa4e7ec4ef0fead45 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x06b09b9982086f31 -DITHARE_KSCOPE_SEED2=0xa4e7ec4ef0fead45 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 979/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6a86984b03c3de7f -DITHARE_KSCOPE_SEED2=0x4eb25731c7690363 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6a86984b03c3de7f -DITHARE_KSCOPE_SEED2=0x4eb25731c7690363 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6a86984b03c3de7f -DITHARE_KSCOPE_SEED2=0x4eb25731c7690363 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 980/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x57b8a08839f5efb3 -DITHARE_KSCOPE_SEED2=0x7df50b8953274d64 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x57b8a08839f5efb3 -DITHARE_KSCOPE_SEED2=0x7df50b8953274d64 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x57b8a08839f5efb3 -DITHARE_KSCOPE_SEED2=0x7df50b8953274d64 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 981/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x2ab84010c4383b1d -DITHARE_KSCOPE_SEED2=0x9fa2b567cb6d72da -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x2ab84010c4383b1d -DITHARE_KSCOPE_SEED2=0x9fa2b567cb6d72da -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x2ab84010c4383b1d -DITHARE_KSCOPE_SEED2=0x9fa2b567cb6d72da -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 982/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdda37da6277b7fa4 -DITHARE_KSCOPE_SEED2=0x9c9c0270b6a26e86 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdda37da6277b7fa4 -DITHARE_KSCOPE_SEED2=0x9c9c0270b6a26e86 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdda37da6277b7fa4 -DITHARE_KSCOPE_SEED2=0x9c9c0270b6a26e86 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 983/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcaf1118bff2fc1a5 -DITHARE_KSCOPE_SEED2=0xa0ab4d87ec849150 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcaf1118bff2fc1a5 -DITHARE_KSCOPE_SEED2=0xa0ab4d87ec849150 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcaf1118bff2fc1a5 -DITHARE_KSCOPE_SEED2=0xa0ab4d87ec849150 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 984/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc8ea1cc7c7aef39e -DITHARE_KSCOPE_SEED2=0x3574acc5eb065100 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc8ea1cc7c7aef39e -DITHARE_KSCOPE_SEED2=0x3574acc5eb065100 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc8ea1cc7c7aef39e -DITHARE_KSCOPE_SEED2=0x3574acc5eb065100 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 985/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x7e9911bbb51a8852 -DITHARE_KSCOPE_SEED2=0xff993381f61363f0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x7e9911bbb51a8852 -DITHARE_KSCOPE_SEED2=0xff993381f61363f0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x7e9911bbb51a8852 -DITHARE_KSCOPE_SEED2=0xff993381f61363f0 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 986/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x305be84826926dab -DITHARE_KSCOPE_SEED2=0xb77125b41bc29e3f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x305be84826926dab -DITHARE_KSCOPE_SEED2=0xb77125b41bc29e3f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x305be84826926dab -DITHARE_KSCOPE_SEED2=0xb77125b41bc29e3f -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 987/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbd19ede2f83fc2ff -DITHARE_KSCOPE_SEED2=0x15ed93facab4a899 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbd19ede2f83fc2ff -DITHARE_KSCOPE_SEED2=0x15ed93facab4a899 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbd19ede2f83fc2ff -DITHARE_KSCOPE_SEED2=0x15ed93facab4a899 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 988/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xabf0919e818642c9 -DITHARE_KSCOPE_SEED2=0xf9a5a4ca24379234 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xabf0919e818642c9 -DITHARE_KSCOPE_SEED2=0xf9a5a4ca24379234 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xabf0919e818642c9 -DITHARE_KSCOPE_SEED2=0xf9a5a4ca24379234 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 989/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x3bafe1d5a4b57c62 -DITHARE_KSCOPE_SEED2=0x9538f068b80c33cd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x3bafe1d5a4b57c62 -DITHARE_KSCOPE_SEED2=0x9538f068b80c33cd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x3bafe1d5a4b57c62 -DITHARE_KSCOPE_SEED2=0x9538f068b80c33cd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 990/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7e666812dc41eee9 -DITHARE_KSCOPE_SEED2=0x11b31cfaf7633127 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7e666812dc41eee9 -DITHARE_KSCOPE_SEED2=0x11b31cfaf7633127 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7e666812dc41eee9 -DITHARE_KSCOPE_SEED2=0x11b31cfaf7633127 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 991/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5d81b95768eb4d36 -DITHARE_KSCOPE_SEED2=0xf625f11bc1222a3d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5d81b95768eb4d36 -DITHARE_KSCOPE_SEED2=0xf625f11bc1222a3d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5d81b95768eb4d36 -DITHARE_KSCOPE_SEED2=0xf625f11bc1222a3d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 992/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5db6fb5bf3002fb4 -DITHARE_KSCOPE_SEED2=0xb167444c8e7d2b01 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5db6fb5bf3002fb4 -DITHARE_KSCOPE_SEED2=0xb167444c8e7d2b01 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x5db6fb5bf3002fb4 -DITHARE_KSCOPE_SEED2=0xb167444c8e7d2b01 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 993/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x90c077d072178353 -DITHARE_KSCOPE_SEED2=0xe7b0ff5c941732d2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x90c077d072178353 -DITHARE_KSCOPE_SEED2=0xe7b0ff5c941732d2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x90c077d072178353 -DITHARE_KSCOPE_SEED2=0xe7b0ff5c941732d2 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 994/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac09eb4e67d0ab2e -DITHARE_KSCOPE_SEED2=0xe31ce07e1cef9fa4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac09eb4e67d0ab2e -DITHARE_KSCOPE_SEED2=0xe31ce07e1cef9fa4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac09eb4e67d0ab2e -DITHARE_KSCOPE_SEED2=0xe31ce07e1cef9fa4 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 995/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0ae1728c59e263bd -DITHARE_KSCOPE_SEED2=0xd0ee0af35eef9480 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0ae1728c59e263bd -DITHARE_KSCOPE_SEED2=0xd0ee0af35eef9480 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0ae1728c59e263bd -DITHARE_KSCOPE_SEED2=0xd0ee0af35eef9480 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 996/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7ec3632cbe529554 -DITHARE_KSCOPE_SEED2=0x3bb9f2b243d5e8ba -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7ec3632cbe529554 -DITHARE_KSCOPE_SEED2=0x3bb9f2b243d5e8ba -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x7ec3632cbe529554 -DITHARE_KSCOPE_SEED2=0x3bb9f2b243d5e8ba -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 997/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xafd62fe6b3f7cbd0 -DITHARE_KSCOPE_SEED2=0x1d90da5eb092f4f8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xafd62fe6b3f7cbd0 -DITHARE_KSCOPE_SEED2=0x1d90da5eb092f4f8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xafd62fe6b3f7cbd0 -DITHARE_KSCOPE_SEED2=0x1d90da5eb092f4f8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 998/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa8ade78a1204beb4 -DITHARE_KSCOPE_SEED2=0x93156d79c7073a2c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa8ade78a1204beb4 -DITHARE_KSCOPE_SEED2=0x93156d79c7073a2c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa8ade78a1204beb4 -DITHARE_KSCOPE_SEED2=0x93156d79c7073a2c -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 999/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4b90d6a77953055c -DITHARE_KSCOPE_SEED2=0x85edb363c2f17e58 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4b90d6a77953055c -DITHARE_KSCOPE_SEED2=0x85edb363c2f17e58 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x4b90d6a77953055c -DITHARE_KSCOPE_SEED2=0x85edb363c2f17e58 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1000/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac5094d5edc9e036 -DITHARE_KSCOPE_SEED2=0xace1b53647a46559 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac5094d5edc9e036 -DITHARE_KSCOPE_SEED2=0xace1b53647a46559 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xac5094d5edc9e036 -DITHARE_KSCOPE_SEED2=0xace1b53647a46559 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1001/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x3c21e5143c2af8f8 -DITHARE_KSCOPE_SEED2=0x0b3255916b007524 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x3c21e5143c2af8f8 -DITHARE_KSCOPE_SEED2=0x0b3255916b007524 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x3c21e5143c2af8f8 -DITHARE_KSCOPE_SEED2=0x0b3255916b007524 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1002/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x56754e2bae8e034f -DITHARE_KSCOPE_SEED2=0xd333b754928c72db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x56754e2bae8e034f -DITHARE_KSCOPE_SEED2=0xd333b754928c72db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x56754e2bae8e034f -DITHARE_KSCOPE_SEED2=0xd333b754928c72db -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1003/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6dab08f78f760160 -DITHARE_KSCOPE_SEED2=0xabb7a05c15c0428d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6dab08f78f760160 -DITHARE_KSCOPE_SEED2=0xabb7a05c15c0428d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x6dab08f78f760160 -DITHARE_KSCOPE_SEED2=0xabb7a05c15c0428d -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1004/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0382e9443e71d751 -DITHARE_KSCOPE_SEED2=0x8a8258d71f501932 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0382e9443e71d751 -DITHARE_KSCOPE_SEED2=0x8a8258d71f501932 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x0382e9443e71d751 -DITHARE_KSCOPE_SEED2=0x8a8258d71f501932 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1005/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x7f9a12c905640847 -DITHARE_KSCOPE_SEED2=0xb780f320ccce171a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x7f9a12c905640847 -DITHARE_KSCOPE_SEED2=0xb780f320ccce171a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x7f9a12c905640847 -DITHARE_KSCOPE_SEED2=0xb780f320ccce171a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1006/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb336dd36f04e873 -DITHARE_KSCOPE_SEED2=0x7b32b3aae18caddf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb336dd36f04e873 -DITHARE_KSCOPE_SEED2=0x7b32b3aae18caddf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xeb336dd36f04e873 -DITHARE_KSCOPE_SEED2=0x7b32b3aae18caddf -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1007/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xba64adfa531d2982 -DITHARE_KSCOPE_SEED2=0x2819f565ccd23bdd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xba64adfa531d2982 -DITHARE_KSCOPE_SEED2=0x2819f565ccd23bdd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xba64adfa531d2982 -DITHARE_KSCOPE_SEED2=0x2819f565ccd23bdd -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1008/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb15946f084e46463 -DITHARE_KSCOPE_SEED2=0x843b90460b93c7f9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb15946f084e46463 -DITHARE_KSCOPE_SEED2=0x843b90460b93c7f9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xb15946f084e46463 -DITHARE_KSCOPE_SEED2=0x843b90460b93c7f9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1009/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xa3f9b2ed90d6f861 -DITHARE_KSCOPE_SEED2=0x1187e7905287a225 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xa3f9b2ed90d6f861 -DITHARE_KSCOPE_SEED2=0x1187e7905287a225 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xa3f9b2ed90d6f861 -DITHARE_KSCOPE_SEED2=0x1187e7905287a225 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1010/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x88326ca7ce344f04 -DITHARE_KSCOPE_SEED2=0xe7f8a16c8af1d654 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x88326ca7ce344f04 -DITHARE_KSCOPE_SEED2=0xe7f8a16c8af1d654 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x88326ca7ce344f04 -DITHARE_KSCOPE_SEED2=0xe7f8a16c8af1d654 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1011/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x41066c3757d0785d -DITHARE_KSCOPE_SEED2=0x3893a5955a0f09d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x41066c3757d0785d -DITHARE_KSCOPE_SEED2=0x3893a5955a0f09d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x41066c3757d0785d -DITHARE_KSCOPE_SEED2=0x3893a5955a0f09d9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1012/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcad92be5802f096a -DITHARE_KSCOPE_SEED2=0x08734c57b1aba44a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcad92be5802f096a -DITHARE_KSCOPE_SEED2=0x08734c57b1aba44a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xcad92be5802f096a -DITHARE_KSCOPE_SEED2=0x08734c57b1aba44a -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1013/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0x11fd1deafc329b51 -DITHARE_KSCOPE_SEED2=0xaeb784305a995f6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0x11fd1deafc329b51 -DITHARE_KSCOPE_SEED2=0xaeb784305a995f6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0x11fd1deafc329b51 -DITHARE_KSCOPE_SEED2=0xaeb784305a995f6e -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1014/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9f00953f95142ade -DITHARE_KSCOPE_SEED2=0xa06e373ab58f0583 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9f00953f95142ade -DITHARE_KSCOPE_SEED2=0xa06e373ab58f0583 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9f00953f95142ade -DITHARE_KSCOPE_SEED2=0xa06e373ab58f0583 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1015/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf422902b51f16843 -DITHARE_KSCOPE_SEED2=0x1763516bbe7aab97 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf422902b51f16843 -DITHARE_KSCOPE_SEED2=0x1763516bbe7aab97 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xf422902b51f16843 -DITHARE_KSCOPE_SEED2=0x1763516bbe7aab97 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1016/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbcc5e1d503524908 -DITHARE_KSCOPE_SEED2=0x304f9ded93acdba9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbcc5e1d503524908 -DITHARE_KSCOPE_SEED2=0x304f9ded93acdba9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xbcc5e1d503524908 -DITHARE_KSCOPE_SEED2=0x304f9ded93acdba9 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1017/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xa25cf03ce66cf87d -DITHARE_KSCOPE_SEED2=0x1bef6b360d2c9cda -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xa25cf03ce66cf87d -DITHARE_KSCOPE_SEED2=0x1bef6b360d2c9cda -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xa25cf03ce66cf87d -DITHARE_KSCOPE_SEED2=0x1bef6b360d2c9cda -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1018/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc1ab35e1431df1f8 -DITHARE_KSCOPE_SEED2=0x25abc937e3683e65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc1ab35e1431df1f8 -DITHARE_KSCOPE_SEED2=0x25abc937e3683e65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc1ab35e1431df1f8 -DITHARE_KSCOPE_SEED2=0x25abc937e3683e65 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1019/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa2c1a3d869b047d4 -DITHARE_KSCOPE_SEED2=0x7857c6a76995b662 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa2c1a3d869b047d4 -DITHARE_KSCOPE_SEED2=0x7857c6a76995b662 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xa2c1a3d869b047d4 -DITHARE_KSCOPE_SEED2=0x7857c6a76995b662 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1020/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdf4efac21072a50b -DITHARE_KSCOPE_SEED2=0x8cf3f9e59a6149de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdf4efac21072a50b -DITHARE_KSCOPE_SEED2=0x8cf3f9e59a6149de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xdf4efac21072a50b -DITHARE_KSCOPE_SEED2=0x8cf3f9e59a6149de -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1021/1024 ===${NOHIGHLIGHT}"
echo "$CXX  -DITHARE_KSCOPE_SEED=0xf5a43aac41781e7b -DITHARE_KSCOPE_SEED2=0x134255fd28e29171 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX  -DITHARE_KSCOPE_SEED=0xf5a43aac41781e7b -DITHARE_KSCOPE_SEED2=0x134255fd28e29171 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX  -DITHARE_KSCOPE_SEED=0xf5a43aac41781e7b -DITHARE_KSCOPE_SEED2=0x134255fd28e29171 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1022/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x373c9c4d429a0f7e -DITHARE_KSCOPE_SEED2=0x17e66b5e8069a8d8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x373c9c4d429a0f7e -DITHARE_KSCOPE_SEED2=0x17e66b5e8069a8d8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x373c9c4d429a0f7e -DITHARE_KSCOPE_SEED2=0x17e66b5e8069a8d8 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -m32 -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1023/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9a4aa739757cc247 -DITHARE_KSCOPE_SEED2=0x49ebec26b9f54147 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9a4aa739757cc247 -DITHARE_KSCOPE_SEED2=0x49ebec26b9f54147 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0x9a4aa739757cc247 -DITHARE_KSCOPE_SEED2=0x49ebec26b9f54147 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
echo "${HIGHLIGHT}=== Random Test 1024/1024 ===${NOHIGHLIGHT}"
echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc92e5220c4348d51 -DITHARE_KSCOPE_SEED2=0x3b2c2e99c773e708 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp"
$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc92e5220c4348d51 -DITHARE_KSCOPE_SEED2=0x3b2c2e99c773e708 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp
if [ ! $? -eq 0 ]; then
  echo "$CXX -O3 -DNDEBUG  -DITHARE_KSCOPE_SEED=0xc92e5220c4348d51 -DITHARE_KSCOPE_SEED2=0x3b2c2e99c773e708 -DITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS -DITHARE_KSCOPE_DBG_RUNTIME_CHECKS -o testapp -std=c++1z -lstdc++ -Werror ../officialtest.cpp">failedrandomtest.sh
  exit 1
fi

echo "./testapp"
./testapp
if [ ! $? -eq 0 ]; then
  echo "./testapp">failedrandomtest.sh
  exit 1
fi
rm testapp
