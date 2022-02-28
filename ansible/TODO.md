# Build script to ensure VM configuration set/built:


{
  "canIpForward": false,
  "confidentialInstanceConfig": {
    "enableConfidentialCompute": false
  },
  "cpuPlatform": "Intel Broadwell",
  "creationTimestamp": "2022-02-20T14:06:38.887-08:00",
  "deletionProtection": false,
  "description": "",
  "disks": [
    {
      "guestOsFeatures": [
        {
          "type": "UEFI_COMPATIBLE"
        },
        {
          "type": "VIRTIO_SCSI_MULTIQUEUE"
        }
      ],
      "type": "PERSISTENT",
      "licenses": [
        "projects/debian-cloud/global/licenses/debian-10-buster"
      ],
      "deviceName": "unifi00",
      "autoDelete": true,
      "source": "projects/ar-unifi-341921/zones/us-west1-b/disks/unifi00",
      "index": 0,
      "boot": true,
      "kind": "compute#attachedDisk",
      "mode": "READ_WRITE",
      "interface": "SCSI",
      "diskSizeGb": "10"
    }
  ],
  "displayDevice": {
    "enableDisplay": false
  },
  "fingerprint": "W37wA9mosRk=",
  "hostname": "unifi.andyrobb.com",
  "id": "165455779929720193",
  "kind": "compute#instance",
  "labelFingerprint": "42WmSpB8rSM=",
  "lastStartTimestamp": "2022-02-27T19:38:56.037-08:00",
  "lastStopTimestamp": "2022-02-27T19:38:11.490-08:00",
  "machineType": "projects/ar-unifi-341921/zones/us-west1-b/machineTypes/e2-micro",
  "metadata": {
    "fingerprint": "uoy83AoXIJ4=",
    "kind": "compute#metadata",
    "items": [
      {
        "value": "ar-unifi-backups",
        "key": "bucket"
      }
    ]
  },
  "name": "unifi00",
  "networkInterfaces": [
    {
      "stackType": "IPV4_ONLY",
      "name": "nic0",
      "network": "projects/ar-vpc-host-prod-341920/global/networks/ar-shared-vpc-prod-1",
      "accessConfigs": [
        {
          "name": "External NAT",
          "type": "ONE_TO_ONE_NAT",
          "natIP": "34.82.216.41",
          "kind": "compute#accessConfig",
          "networkTier": "PREMIUM"
        }
      ],
      "subnetwork": "projects/ar-vpc-host-prod-341920/regions/us-west1/subnetworks/ar-prod-us-west1-subnet-public",
      "networkIP": "10.66.0.3",
      "fingerprint": "Ht4oEzgQWSk=",
      "kind": "compute#networkInterface"
    }
  ],
  "reservationAffinity": {
    "consumeReservationType": "ANY_RESERVATION"
  },
  "scheduling": {
    "onHostMaintenance": "MIGRATE",
    "provisioningModel": "STANDARD",
    "automaticRestart": true,
    "preemptible": false
  },
  "selfLink": "projects/ar-unifi-341921/zones/us-west1-b/instances/unifi00",
  "serviceAccounts": [
    {
      "email": "35875733223-compute@developer.gserviceaccount.com",
      "scopes": [
        "https://www.googleapis.com/auth/devstorage.full_control",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring.write",
        "https://www.googleapis.com/auth/service.management.readonly",
        "https://www.googleapis.com/auth/servicecontrol",
        "https://www.googleapis.com/auth/trace.append"
      ]
    }
  ],
  "shieldedInstanceConfig": {
    "enableSecureBoot": false,
    "enableVtpm": true,
    "enableIntegrityMonitoring": true
  },
  "shieldedInstanceIntegrityPolicy": {
    "updateAutoLearnPolicy": true
  },
  "shieldedVmConfig": {
    "enableSecureBoot": false,
    "enableVtpm": true,
    "enableIntegrityMonitoring": true
  },
  "shieldedVmIntegrityPolicy": {
    "updateAutoLearnPolicy": true
  },
  "startRestricted": false,
  "status": "RUNNING",
  "tags": {
    "items": [
      "unifi-controller"
    ],
    "fingerprint": "oYzqrxuvlw8="
  },
  "zone": "projects/ar-unifi-341921/zones/us-west1-b"
}