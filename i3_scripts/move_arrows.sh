#!/bin/bash


layout=$(i3-msg -t get_tree | jq -r 'recurse(.nodes[];.nodes!=null)|select(.nodes[].focused).layout')

if [ $layout == "tabbed" ]; then
  echo "layout is tabbed"
else 
  echo "layout is not tabbed"
fi
