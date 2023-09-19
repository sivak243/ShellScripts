#!/bin/bash

ping -c 1 "www.google.com" > sample.txt   # Overide the file
ping -c 1 "www.google.com" >> sample1.txt # Concat the existing file


