#!/bin/bash

## Example with boolean value (not wrapped in "")
tanzu acc generate-from-local \
    --accelerator-path matts-simple-accelerator=./ \
    --server-url http://accelerator.104.42.119.202.nip.io \
    --options '{"firstConfigurableParameter": "Parameter 1", "secondConfigurableParameterCheckbox": true}' \
    -o "${HOME}/matts-simple-accelerator/"
