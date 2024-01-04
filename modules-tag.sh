#!/bin/bash

function set_tag {
    cd $1
    git reset --hard $2
    cd -
}

set_tag aws/lb tags/v8.2.1
set_tag aws/s3 tags/v3.6.0
set_tag aws/sg tags/v4.16.2
set_tag aws/sns tags/v5.0.0
set_tag aws/sqs tags/v4.0.0
set_tag aws/ec2 tags/v4.3.0
set_tag aws/iam tags/v5.17.0
set_tag aws/rds-aurora tags/v7.6.0
set_tag aws/rds tags/v5.6.0

set_tag gcp/storage tags/v3.4.1
set_tag gcp/lb-http tags/v7.0.0
set_tag gcp/instance tags/v8.0.0
set_tag gcp/iam tags/v7.4.1
set_tag gcp/db tags/v13.0.1
