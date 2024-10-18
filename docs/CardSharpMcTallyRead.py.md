# Module: CardSharpMcTallyRead.py
This file is an abstraction layer for whatever code will be used to parse
mctal files. Currently mctal.py.

From the MCNP manual:
A MCTAL file contains the tally data of one dump of a RUNTPE file. Page 6-29.

A tally in MCNP can have 9 possible dimensions.

- facet f The facet of the tally, cell, surface, point number.
- direct/flagged d The flagged/unflagged contribution for cell/surface tallies OR the
                  direct/scattered contribution for point detectors (this dimension never
                  exceeds 2).
- user u The user bins established by use of an FT tally input or by use of a
        TALLYX routine.
- segment s The segmenting bins established by use of an FS tally input.
- multiplier m The multiplier bins established by use of an FM tally input.
- cosine c The cosine bins established by use of an C tally input.
- energy e The energy bins established by use of an E tally input.
- time t The time bins established by use of a T tally input.
- perturbation pert The perturbation number established by use of PERT inputs.

  ??? Does not seem to work if the tally was created with a list of cells or
  ??? a list of list of cells. Which is allowed by MCNP and works.
  ??? Except that the tally reader does not support it.

-----------------
-----------------
## Function: getTallyFromMctal
(filepath, tallyNumWtype, objectNum, t_or_d):

tallyNumWtype - tally number with type. For tally numbers 15, 25, the tally type is 5.
objectNum corresponds to a facet. (cell, surface, point ???).
A given tally can have multiple tally objects in it, say corresponding to different points. These are t.object_bins.
For each object, there are two possible tallies. t_or_d.
For each of t or d, there is 'data' or 'err'.

And each object can have a single bin or a spectrum!!! ???

Suppose there were two points in an F5 tally.
There would be two objects, each with a t and a d tally, for a total of 4 t.vals dictionaries.
t.vals[0]/t.vals[1] would be the t/d of the first.
t.vals[2]/t.vals[3] wold be the t/d of the second.

t_or_d = 0 is total.
t_or_d = 1 is direct.

Start of energy bins is always zero. don't return that.
Last bin is total, DON'T return that either.

-----------------
## Function: getRadiographyTallyFromMctal
(filepath, tallyNumWtype, t_or_d):

t_or_d = 0: # Total, with scatter.
t_or_d = 1: # Direct, no scatter.
   If the tally has spectral bins, is there a total bin???
Do I need separate methods for tallies with and without energy bins?

-----------------
## Function: exploreMctalFile
(filepath):

Use this function to explore the contents of a tally file whose structure is not known.

Needs to be fixed to work for all tally files.

-----------------
## Function: printIfShow
(*args, **kwargs):



