high performance interpreter.  A really fast just in time compiler.   Can run rails applications now.  

The approach the wider project is taking is they want to make all the languages fast.  The way it was done in the past is that it had to be done individually for every different language.   So if your language didn't have a company like google, it wasn't going to get a high performance jit.  The breakthrough was that they could do something that worked for all languages and make all languages have the same sort of good performance as if google had invested the time and money into the language.

Remote Ruby 18:30.  We added a new kind of abstraction.  In our system, what you do, when you want to implement a language is you write an interpreter.  What you'd normally do from there is you'd write a jit compiler for your language and that's where all the work is.  But what we've done is written a program that takes, as input in interpreter and it produces a jit from that interpreter automatically.   This is a mathematical trick called partial evaluation. It basically takes an interpreter as an input and it gives you a compiler as an output.  Because, if we can understand the program as in input, we can write ways to inline between different languages.  The interpreter is like a data structure the compiler can recognize.


GraalVM is a high-performance runtime that provides support for multiple programming languages and execution modes. It’s designed to improve the performance and interoperability of applications written in languages like Java, JavaScript, Python, Ruby, R, and even LLVM-based languages like C and C++.
Key Features of GraalVM
1. Polyglot Capabilities

GraalVM allows you to run code from different languages in the same runtime. For example, you can call Python code from Java or JavaScript from Ruby.
2. High-Performance JIT Compiler

GraalVM includes a Just-In-Time (JIT) compiler that replaces the default JIT compiler (C2) in the Java Virtual Machine (JVM). It produces highly optimized native machine code, improving performance for Java and other JVM-based languages.
3. Native Image (AOT Compilation)

GraalVM can compile Java applications ahead-of-time into native executables using the native-image tool. This results in:

    Very fast startup time

    Low memory footprint

    No need for a JVM at runtime

This is especially beneficial for microservices and serverless applications.
4. Tooling and Debugging

GraalVM provides debugging, profiling, and monitoring tools that work across multiple languages and execution modes.
5. Compatibility with Existing Java Code

GraalVM is fully compatible with existing Java code and libraries. You can use it as a drop-in replacement for a traditional JVM.
Example Use Cases

    Microservices: Fast-starting native images for small, efficient services

    Polyglot Applications: Embedding R, Python, or JavaScript in Java

    Performance Optimization: Replace the JVM's default compiler to gain performance

Versions

    Community Edition: Free and open-source

    Enterprise Edition: Commercial support and additional optimizations (like better performance and security features)

Summary

GraalVM is:

    A modern runtime for Java and other languages

    A polyglot environment

    A platform for compiling Java code into fast native executables

    A tool for performance tuning and language interoperability

Would you like help installing it or seeing a simple example of its use?




🟢 Core Languages (with robust support):
Language	Description
Java	Primary language, runs with improved performance via the Graal JIT or Native Image.
JavaScript	Fully supported, including Node.js and npm ecosystem.
Python	Partial support, mostly for embedding and scripting; not intended for full CPython compatibility.
Ruby	Runs on the TruffleRuby interpreter; mostly compatible with standard Ruby, but not 100%.
R	Runs via FastR; suitable for statistical computing and data science.
WebAssembly	Supported experimentally; useful for embedding wasm modules.
LLVM-based languages	C, C++, Rust (via LLVM bitcode using Sulong). Enables executing LLVM IR (bitcode) on the GraalVM runtime.
🟡 Experimental / Limited Support:
Language	Notes
Kotlin, Scala, Clojure, Groovy	Work out of the box since they are JVM languages. GraalVM treats them like Java.
Smalltalk	Experimental community projects exist.
PHP	Early experiments exist via third-party projects, but not production-grade.
