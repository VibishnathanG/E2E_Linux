#!/bin/bash

# Paameter Expansion with positional Args and 0 will be taken
#  default if args is unset.

# echo $(( ${2:-0} $1 ${3:-0} $1 ${4:-0} $1 ${5:-0} ))


echo $(( $@ ))

echo $(( $(eval echo $(echo {10..20} | sed 's/ / + /g' ))))

