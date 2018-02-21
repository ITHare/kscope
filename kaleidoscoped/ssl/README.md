kaleidoscoped/ssl is intended to contain a very limited set of tls-related stuff adapted from LibreSSL. 
The idea is to eventually support very-minimal (but still working) fully-kaleidoscoped TLS implementation (currently, 
we have just started and ~1% of that goal). As a nice side effect, it will provide constexpr versions of all the supported 
crypto, enabling use of supported crypto in compile-time.  

All the code inherited from LibreSSL, keeps their respective licenses (to the best of our knowledge, 
it is a combination of public domain, BSD, OpenSSL, and SSLeay licenses. 

All the additions/changes made by kscope project, are under 3-claus BSD license.
