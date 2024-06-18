CardSharp
=========

CardSharp is a python library for the creation of MCNP6 input decks. 

The library supports geometry generation with automatic assignment of surface numbers, cell numbers, transform numbers and material numbers along with MCNP Universes and FILL feature. Rectangular and Hexagonal Lattices are also supported. 

Support for a good selection of common sources and tallies is also provided. Cards or features which are currently not supported in the library can also be inserted as raw strings into the output stream. 

Combining Python features like descriptively named variables, functions and for loops with library functions provides an intuitive and parametric way to create, modify and maintain complicated geometries and simulation models. The generated card deck also has human readable comments which makes it easy to read and relate back to the python source. Some support for running MCNP, reading tallies and plotting is also planned.

Requirements
------------
CardSharp requires Python 3.x and numpy. 
Matplotlib is needed for plotting tallies.

Installation
------------
CardSharp does not need to be installed.

Simply copy the CardSharp folder and the CardSharpTests folder to your hard drive and browse/run the tests to become familiar with CardSharp. The generated MCNP input decks go into the ZOutput folder which is at the same level as the other two folders.

To develop your own MCNP simulations using CardSharp, create a folder to hold your scripts at the same level as the CardSharp folder, copy a test that is similar to what you want to do and modify it.

How to cite
-----------
Add link/DOI to paper.
