#!/bin/bash

# Define variables
APP_URL="http://example.com"  # Replace with your application URL
EXPECTED_STATUS=200           # HTTP status code indicating application is up

# Function to check application status
check_application_status() {
    local http_status=$(curl -s -o /dev/null -w "%{http_code}" $APP_URL)
    
    if [ $http_status -eq $EXPECTED_STATUS ]; then
        echo "Application is UP. HTTP Status Code: $http_status"
    else
        echo "Application is DOWN. HTTP Status Code: $http_status"
        # You can add additional actions here (e.g., send an alert)
    fi
}

# Main function to run checks
main() {
    check_application_status
}

# Execute main function
main
