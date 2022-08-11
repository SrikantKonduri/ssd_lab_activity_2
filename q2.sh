#!/bin/bash

shells=$(cat /etc/shells)
grep -E '/usr' /etc/shells | awk -F'/' '{print $NF}'