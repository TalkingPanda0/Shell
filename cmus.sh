#!/bin/sh
cmus-remote -Q | grep "tag title " -m 1 | cut -c 11-
