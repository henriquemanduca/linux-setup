echo "Do you want to continue? (y/n)"
read response

if [[ "$response" == "y" || "$response" == "Y" ]]; then
    echo "Continuing..."
    # Add your code here for the desired actions
else
    echo "Exiting..."
    exit 0
fi
