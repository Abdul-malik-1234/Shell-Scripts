#!/bin/bash
set -x #Debug mode
set -e #Exit if there is error
set -o pipefail

delete_ec2_instance() {
    local instance_id="$1"    
    aws ec2 terminate-instances --instance-ids "$instance_id"
   
    echo "Instance $instance_id deleted successfully."

}

main() {

    echo "**************************** Deleting EC2 instance... *************************************************"

    # Call the function to delete the EC2 instance

    delete_ec2_instance "$1"

    echo "**************************** EC2 instance deletion completed. *****************************************"
}

main "@"
