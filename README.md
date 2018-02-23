# kscope
kscope is a short for kaleidoscope. Essentially - a library which recursively generates randomized code while keeping it 100% equivalent to the original one. Can be used for compiler torture-testing and optimisation testing, and for a few other things too :-).

**The Big Idea(tm) behind kscope project is to make C++17 compilers less buggy (via providing reproducible bug reports, and pushing respective compiler teams to fix them).** An unusual part of specifically kscope, is that we're using C++17 itself to generate very different (but supposedly-equivalent) code depending on compile-time define -DITHARE_KSCOPE_SEED . A bit of further motivation and some explanations can be found at http://ithare.com/c17-compiler-bug-hunt-very-first-results-12-bugs-reported-3-already-fixed/ .

# List of already-reported bugs

Compiler: | Clang | GCC | MSVC 
--------- | ----- | --- | ---- 
Reported-and-Fixed Bugs | ~~[#36055](https://bugs.llvm.org/show_bug.cgi?id=36055)~~ (fixed in trunk in 2 weeks after kscope report, fix reportedly scheduled to apply to Clang 6.0) | ~~[#84401](https://gcc.gnu.org/bugzilla/show_bug.cgi?id=84401)~~ (an enhancement; reportedly fixed as of r251104 - 6 days after kscope report) | ~~[#195484](https://developercommunity.visualstudio.com/content/problem/195484/p-option-doesnt-replace-every-second-occurrence-of.html)~~ (reportedly fixed in a week after kscope report, fix scheduled to apply to VS2017 15.7 Preview 2) <br> ~~[#195579](https://developercommunity.visualstudio.com/content/problem/195579/misreported-location-for-warning-in-constexpr-func.html)~~ (reportedly, was fixed before kscope report in a recent preview) <br> ~~[#196885](https://developercommunity.visualstudio.com/content/problem/196885/c1001-in-fddvctoolscompilercxxfeslp1cwalkcpp-line.html)~~ (reportedly fixed in 3 days(!) after kscope report, fix scheduled to apply to VS2017 15.7 Preview 2)
Reported-and-Pending Bugs | 	[#36333](https://bugs.llvm.org/show_bug.cgi?id=36333) (only Clang 5.0.x, upcoming Clang 6.0 seems to be unaffected) | 	[#47488](https://gcc.gnu.org/bugzilla/show_bug.cgi?id=47488)  (it seems that we run into a new manifestation of the old bug, we tried to bump it) <br>[#84463](https://gcc.gnu.org/bugzilla/show_bug.cgi?id=84463) | [#195483](https://developercommunity.visualstudio.com/content/problem/195483/continue-in-constexpr-function-causes-constexpr-fu.html) (reportedly already-known to MSFT internally but not fixed yet) <br>[#195665](https://developercommunity.visualstudio.com/content/problem/195665/-line-cannot-be-used-as-an-argument-for-constexpr.html) (reportedly already-known to MSFT internally but not fixed yet; OTOH, some MSFT ppl say this incompliance is actually a feature (really?)) <br>[#196900](https://developercommunity.visualstudio.com/content/problem/196900/c1001-in-file-msc1cpp-line-1507.html) (reportedly already-known to MSFT internally but not fixed yet) <br>[#199554](https://developercommunity.visualstudio.com/content/problem/199554/suspected-bad-code-generation-for-release-build.html) <br>[#202584](https://developercommunity.visualstudio.com/content/problem/202584/suspected-invalid-codegen-for-release-build.html)<br>[#202598](https://developercommunity.visualstudio.com/content/problem/202598/suspected-invalid-codegen-for-x86-release-build.html)
# License

License of the kscope project (including kscope contributions to adaptations of 3rd-party open-source projects) is 3-clause BSD License. On the other hand, whenever 3rd-party code is adapted by kscope - BOTH original license of the 3rd-party code, AND kscope's 3-clause BSD license apply (on the plus side, as of now and to the best of our knowledge, all the 3rd-party licenses used by kscope, are permissive). For more detail, see [LICENSE.md](https://github.com/ITHare/kscope/blob/master/LICENSE.md) .

# Contributing

Contributions are **VERY welcome**. For list of the ideas on "how to make our test coverage better" (ranging from simple running existing tests under different platforms, to writing your own injective functions and kaleidoscoping crypto) - see [CONTRIBUTING.md](https://github.com/ITHare/kscope/blob/master/CONTRIBUTING.md) . 
