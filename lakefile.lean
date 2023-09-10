import Lake
open Lake DSL

package «gelfond-schneider»

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"@"aided_by"

@[default_target]
lean_lib GelfondSchneider
