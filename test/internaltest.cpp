//File used for INTERNAL testing of ithare::kscope.
// NEITHER use it, NOR consider practices here as 'good' ones ;-)

#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#endif

//{
#define ITHARE_KSCOPE_SEED 0x0c7dfa61a871b133
#define ITHARE_KSCOPE_SEED2 0xdacb5ca59a237d13 

//#define ITHARE_KSCOPE_CRYPTO_PRNG

#define ITHARE_KSCOPE_CONSISTENT_XPLATFORM_IMPLICIT_SEEDS
#define ITHARE_KSCOPE_ENABLE_AUTO_DBGPRINT 2
//} internal debugging: should go BEFORE #include obf.h

#include "../src/kscope.h"
#include <chrono>//for benchmarking
#include <thread>

using namespace ithare::kscope;

ITHARE_KSCOPE_DECLAREFUNC
uint64_t factorial(uint64_t x) {
	ITHARE_KSCOPE_FINT(uint64_t) ret = 1;
	ITHARE_KSCOPE_FDBGPRINT(ret);
	for(size_t i=2; i <= x ; ++i ) {
		ret *= i;
	}
	return ret;
}

int main(int argc, char** argv) {
	uint64_t x = 20;
	if(argc>1)
		x = atoi(argv[1]);
	uint64_t f = ITHARE_KSCOPE_CALL6(factorial)(x);
	std::cout << "factorial(" << x << ")=" << f << std::endl;
	return 0;
}
