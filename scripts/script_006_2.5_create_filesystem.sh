#!/bin/bash
sudo mkfs -v -t ext4 /dev/sda1
sudo mkfs -v -t ext4 /dev/sda3
sudo mkswap /dev/sda2
