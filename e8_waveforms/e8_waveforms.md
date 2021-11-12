e8 - Waveforms
--------------

Assume a combinatorial module called `f` which has two 12-bit inputs `x` and `y`,
and produces two 12-bit outputs called `a` and `b`. 

Create a module called `e8_waveforms` which tests every input combination where
"x==y+1" and saves the inputs and outputs as waveforms to a file called `e8_waveforms.vcd`.
The signals should appear in the waveform as signals `e8_waveforms.a`,
`e8_waveforms.b`, `e8_waveforms.x` and `e8_waveforms.y`.

The following notes are merely making explicit the assumptions about any
testbench which would do this:

- An input+output combination is present in the waveform if the inputs (and outputs)
  appear for a non-zero period of time.

- The inputs can be presented in any order, as long as they all appear at least once.

- Inputs may be repeated (though not sure why you would want to).

- Other input combinations may appear, if needed (not sure why they would be)

- The test-bench must terminate within a "reasonable" amount of time (e.g. <5 seconds)

- The output waveform must be of "reasonable" size (e.g. <1MB)

- Other signals can be present in the waveform file.

- The signals that appear in the waveform must have the same widths as the
  ports on `f`.

