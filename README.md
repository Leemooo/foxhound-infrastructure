# Foxhound Defence IT Infrastructure

## Project Overview
This repository documents the end to end implementation of a secure, hybrid cloud infrastructure for Foxhound defence. The project transitions from a legacy on-prem setup to a modern Azure hybrid environment. 

## Phase 1: On-Prem Core
Infrastructure
**Network Architecture:**
- **Subnet:** 192.168.10.0/24 (Foxhound-Datacenter)
- **Hypervisor:** VMware Workstation Pro 17
- **Virtual Switch:** VMnet10 (Host-Only, No VMware DHCP)

### Server Inventory (Planned)
|  Hostname  |  Role  |  OS  |  IP Address  |
|  :---  |  :---  |  :---  |  :---  |
|  **FOX-DC01**  |  Domain Controller, DNS  |  Windows Server 2022  |  192.168.10.10  |
|  **FOX-WEB01**  |  Internal Web / App  |  Ubuntu  22.04 LTS  |  192.168.10.20  |
|  **FOX-WIN11**  |  Client Workstation  |  Windows 11  |  DHCP  |
