#!/bin/bash

# Setup nbstripout git filter automatically
echo "Setting up nbstripout git filter..."

# Configure git filter to use python -m nbstripout
git config --global filter.nbstripout.clean "python -m nbstripout"
git config --global filter.nbstripout.smudge cat
git config --global filter.nbstripout.required true

echo "nbstripout configured successfully!"

