#!/bin/bash -xv

MY_ZONE=us-central1-f

echo "resources:
- name: my-vm
  type: compute.v1.instance
  properties:
    zone: ZONE
    machineType: zones/ZONE/machineTypes/n1-standard-1
    metadata:
     items:
     - key: startup-script
       value: "apt-get update"
    disks:
    - deviceName: boot
      type: PERSISTENT
      boot: true
      autoDelete: true
      initializeParams:
        sourceImage: https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-9-stretch-v20170918
    networkInterfaces:
    - network: https://www.googleapis.com/compute/v1/projects/PROJECT_ID/global/networks/default
      accessConfigs:
      - name: External NAT
        type: ONE_TO_ONE_NAT
" > mydeploy.yaml

sed -i -e 's/PROJECT_ID/'$DEVSHELL_PROJECT_ID/ mydeploy.yaml
sed -i -e 's/ZONE/'$MY_ZONE/ mydeploy.yaml
