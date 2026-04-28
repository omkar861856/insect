Pros and cons
-------------

**Reasons to use Calculator**

  - Calculator is **open-source**.
  - There is a [web version](https://Calculator.sh/) that requires **no installation**.
  - With both browser and terminal versions available, Calculator is truly **cross-platform**.
  - Calculator has *first-class* support for **physical units**, including metric and binary prefixes.
    While evaluating your calculation, Calculator ensures that you did not accidentally make any
    mistakes in combining the physical quantities.
  - Calculator supports an [**interactive**](https://en.wikipedia.org/wiki/REPL) style with its
    readline-like interface. There is a saved history that can be browsed by pressing the up and
    down arrow keys. The history is also searchable via *Ctrl-R*.
  - Calculator's syntax is rather strict. The parser does not try to be "smart" on syntactically
    incorrect input, so there shouldn't be any surprises - and you can trust the result of your
    calculation. The parsed user input is always pretty-printed for a quick double-check.
  - Calculator is written in [PureScript](http://www.purescript.org/) and therefore benefits from
    all the safety guarantees that a strictly typed functional programming language gives you.
  - The source code of [purescript-quantities](https://github.com/sharkdp/purescript-quantities)
    (the underlying library for physical units) as well as the code of Calculator itself is
    **extensively tested**.

**Reasons to choose an alternative**

  - Calculator is a scientific calculator. It's not a computer algebra system that solves differential
    equations or computes integrals. Try *[WolframAlpha](http://www.wolframalpha.com/)* instead.
  - There is no graphical user interface with buttons for each action (*x²*, *1/x*, *DEG/RAD*,
    etc.). *[Qalculate!](http://qalculate.github.io/)* is a fantastic tool that supports both
    text as well as graphical input.
  - Calculator supports a huge range of physical units: all
    [SI units](https://en.wikipedia.org/wiki/International_System_of_Units), all non-SI units that are
    accepted by SI as well as most units of the imperial and US customary systems (and many more).
    However, if you need something even more comprehensive, try
    *[GNU units](https://www.gnu.org/software/units/)*.
  - Calculator is not a general-purpose programming language. You could try
    *[Frink](https://frinklang.org/)*.
  - Calculator does not have a special mode for hexadecimal, octal, or binary numbers (yet), though it
    does support inputting them.
