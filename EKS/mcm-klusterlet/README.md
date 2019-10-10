# MCM Klusterlet within Amazon Elastic Kubernetes Service
Copyright IBM Corp. 2019, 2019 
This code is released under the Apache 2.0 License.

## Overview
This terraform template imports an existing kubernetes cluster within the Amazon Elastic Kubernetes Service (EKS) into a v3.2.0 MCM hub-cluster. 

## Prerequisites
* Tiller should not be installed within the kubernetes cluster

## Automation summary
The terraform template performs the following activities to import the specified EKS cluster into the MCM hub-cluster:
* Authenticates with the ICP server hosting the MCM hub-cluster
* Authenticates with Amazon EC2
* Uses the given kubernetes cluster details to configure the import process
* Runs the import commands supported by the MCM hub-cluster

## Template input parameters

| Parameter Name                  | Parameter Description | Required | Allowed Values |
| :---                            | :--- | :--- | :--- |
| icp\_url                        | URL, including port, for the ICP server hosting the MCM hub-cluster | true | |
| icp\_admin\_user                | User name for connecting to the ICP server | true | |
| icp\_admin\_password            | Password for connecting to the ICP server | true | |
| cluster_name                    | Name of the target cluster to be imported into the MCM hub cluster | true | |
| cluster_namespace               | Namespace in the hub cluster into which the target cluster will be imported; Defaults to cluster name | | |
| cluster_endpoint                | URL for the target kubernetes cluster endpoint | true | |
| cluster_user                    | Username for accessing the target kubernetes cluster | true | |
| cluster_token                   | Token for authenticating with the target kubernetes cluster | true | |