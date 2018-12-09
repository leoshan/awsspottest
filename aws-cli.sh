#!/bin/bash
#Create spot instance use config file
aws ec2 request-spot-fleet --spot-fleet-request-config file://config.json
