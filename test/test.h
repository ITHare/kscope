#ifndef kscope_test_h_included
#define kscope_test_h_included

class Benchmark {
	std::chrono::high_resolution_clock::time_point start;

public:
	Benchmark() {
		start = std::chrono::high_resolution_clock::now();
	}
	int64_t us() {
		auto stop = std::chrono::high_resolution_clock::now();
		auto length = std::chrono::duration_cast<std::chrono::microseconds>(stop - start);
		return (int64_t)length.count();
	}
};

extern uint64_t bench_test_prng_state;//will be initialized with argc, 100% preventing potential for compile-time calculations 
inline uint32_t bench_test_prng(uint32_t mx) {//MT-UNSAFE, but for benchmark tests we don't care
	bench_test_prng_state = bench_test_prng_state * UINT64_C(6364136223846793005) + 1;
	return (( bench_test_prng_state >> 32 ) & 0x7FFF'FFFF) % mx;
}

#endif //kscope_test_h_included
