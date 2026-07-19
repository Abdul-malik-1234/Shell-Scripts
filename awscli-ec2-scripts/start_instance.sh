#!/bin/bash

start_ec2_instance() {
    local instance_id="$1"
    
    echo "Attempting to start instance: $instance_id..."
    
    # Run the command and capture the exit status
    if aws ec2 start-instances --instance-ids "$instance_id" > /dev/null; then
        echo "Successfully sent start request for $instance_id."
    else
        echo "Error: Failed to start instance $instance_id. Check your ID and AWS permissions."
        return 1
    fi
}

main() {
    # Check if an argument was provided
    if [ -z "$1" ]; then
        echo "Usage: $0 <instance-id>"
        exit 1
    fi
    
    start_ec2_instance "$1"
}

main "$@"
