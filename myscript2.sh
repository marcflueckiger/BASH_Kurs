#!/bin/bash

echo '$@ '$@
echo '$* '$*
echo '$? '$?
echo '$# ' $#
echo '$0 '$0
echo '$1 '$1
echo '$2 '$2

echo '$1 '$1
shift
echo '$1 nach shift '$1
