#!/bin/bash

## Example with boolean value (not wrapped in "")
tanzu acc generate-from-local \
    --accelerator-path matts-simple-accelerator=./ \
    --server-url http://accelerator.104.42.119.202.nip.io \
    --options '{"firstConfigurableParameter": "Parameter 1", "secondConfigurableParameterCheckbox": true}' \
    -o "${HOME}/matts-simple-accelerator/"

# Results in the following error:
# Error with values: [secondConfigurableParameterCheckbox: expected string but value is of Java type java.lang.Boolean]"

## Example with stringified boolean value (wrapped in "")
tanzu acc generate-from-local \
    --accelerator-path matts-simple-accelerator=./ \
    --server-url http://accelerator.104.42.119.202.nip.io \
    --options '{"firstConfigurableParameter": "Parameter 1", "secondConfigurableParameterCheckbox": "true"}' \
    -o "${HOME}/matts-simple-accelerator/"

# Results in the following error:
# EL1001E: Type conversion problem, cannot convert from java.lang.String to java.lang.Boolean"
