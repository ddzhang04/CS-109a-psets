#!/bin/bash

# CS109a Environment Setup Script
echo "Setting up CS109a Python environment..."

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "Installing required packages..."
pip install -r requirements.txt

# Install ipykernel for Jupyter
echo "Installing ipykernel..."
pip install ipykernel

# Create kernel for Jupyter
echo "Creating Jupyter kernel..."
python -m ipykernel install --user --name=cs109a --display-name="Python (CS109a)"

echo "Setup complete! You can now:"
echo "1. Open VS Code in this directory"
echo "2. Select the 'Python (CS109a)' kernel when working with notebooks"
echo "3. Or activate the environment manually with: source venv/bin/activate"
