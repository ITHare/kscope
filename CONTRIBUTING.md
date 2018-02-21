Towards our noble goal of making C++17 compilers less buggy using kscope-provided testing, contributions in 
the following fields look the most interesting (feel free to make your own suggestions too, below is just a list of 
the-most-obvious-ideas):

* **running existing .sh/.bat tests in /test/ folder – and be ready to report bugs to respective compiler writers too**. 
To do it – find a box which is not-too-shabby in terms of RAM (at least 4G RAM+4G swap is recommended), 
then clone the latest master branch of kscope there, and you should be good to go. 
Running existing tests might help to reveal bugs under:
  * supposedly-C++17-compliant compilers-other-than-Clang/GCC/MSVC (when they start to support all-we-need-from-C++17, 
  with constexpr support, including constexpr-if, being the most-likely-missing features)
    * when the support from other compilers comes, most likely kscope will require some code changed patches to 
    support such other-compilers; such patches are ESPECIALLY welcome
  * *versions* of compilers other-than-{Clang5,GCC7.2,MSVC from VS 15.5.5) (while newer versions are supposed to work, in practice you never know)
    * of special interest are regressions in top-of-the-trunk compilers
  * platforms other x86/x64 (in theory, should be ok – but the less common the platform is, the more 
    chance that subtle codegen bugs in it are sitting there for ages :-( ).
  * operating systems other than Linux/Mac OS X/Windows
    * supporting such systems may require some patching of .sh or test/randomtestgen.cpp - such patches is 
      ESPECIALLY welcome. 
  * Oh, and if/when you find some bug (which may or may not happen):
    * try to check whether it can be a bug in the ithare::kscope (it can happen; TBH, currently about 50% of the bugs found 
      are still within kscope :-( )
    * after reporting the bug to the respective compiler team – please drop me a line, I will add your bug report to the /README.md (if you want - with your name too :-) ).
* **adding new injections** (along the lines of src/kscope_sample_extension.h); they’re really important to have 
  as-much-stuff-tested as possible. Ideally – there would be whole libraries of different injections, so even more 
  scenarios can be tested.
* for the most adventurous :-) – **adding new kaleidoscoped functions**, also to increase the number of the 
  scenarios-being-tested, though in a completely different space. Currently, of the most interest are 
  (a) not-system-related (~="pure") std:: functions (such as algorithms and containers), and (b) crypto-functions and parsers 
  (in particular, from TLS); (a) will allow to kaleidoscop things further, and (b) will allow to have more of compile-time 
  crypto (and things such as compile-time ASN.1 parser, etc.). If you’re interested – take a look at kaleidoscoped/ folder, 
  and see whether you like it (this is NOT documented yet, but I can be reached at nobugs@ithare.com to answer any questions 
  you may have).
  
