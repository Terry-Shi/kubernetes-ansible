#!/bin/bash

etcdctl set /coreos.com/network/config '{"Network": "{{ flannel_subnet }}"}'
