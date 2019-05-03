#!/usr/bin/env python
# Usage: subscribe.py topic_arn email [role_arn]

import sys
sys.path.append('./vendored')
import boto3

# Assume a role which is allowed to create resources in another account if a role ARN has been provided
if len(sys.argv) == 4:
    creds = boto3.client('sts').assume_role(
        RoleArn=(sys.argv[3]),
        RoleSessionName='SubscribeSession',
        DurationSeconds=900)
    sns_client = boto3.client(
        'sns',
        aws_access_key_id=creds['Credentials']['AccessKeyId'],
        aws_secret_access_key=creds['Credentials']['SecretAccessKey'],
        aws_session_token=creds['Credentials']['SessionToken']
    )
else:
  sns_client = boto3.client('sns')

sns_client.subscribe(
    TopicArn=(sys.argv[1]),
    Protocol='email',
    Endpoint=(sys.argv[2])
)
