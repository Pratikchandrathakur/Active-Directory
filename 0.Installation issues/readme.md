# Windows Server 2022 Installation Troubleshooting Guide

## Overview
This guide documents the process of troubleshooting and resolving installation issues encountered during Windows Server 2022 deployment.

## System Specifications
- **Operating System**: Windows Server 2022
- **Hardware Platform**: [Specify Server/Hardware Model]
- Ideally 4GB  Memory and 60 GB Hard Disk space.
- **Installation Media**: [ISO Version/Source]

## Encountered Issues
### windows cannot find the microsoft software license term in vmware workstation 
**Description**: 
This is issue which will be most likely to be happened to the most people who love Vmware workstation/Pro

**Symptoms**:<br>
![image](https://github.com/user-attachments/assets/407ff8ec-2387-4b2c-9b37-34ba98e71088)


## Troubleshooting Steps

### 1. Pre-Installation Checks
- Verify hardware compatibility
- Check minimum system requirements
- Ensure BIOS/UEFI settings are correct
  - Enable virtualization
  - Check boot order
  - Disable secure boot if causing conflicts

### 2. Installation Media Verification
- Validate ISO file integrity
  - MD5/SHA checksum
  - Re-download from official Microsoft source
- Test USB/DVD creation process
- Try alternative installation methods

## Resolution Steps
### Proposed Fix 1: [First Solution]
**Procedure**:
1. Use the the option which suggest i will use the ISO image later and go ahead.<br>
  ![image](https://github.com/user-attachments/assets/15950b44-6ef1-410c-98dc-0771bd8679bc)

3. Select Windows and select Microsoft server 2022
4. select microsoft evaluatio server standard and also make a individual folder for this vm.
5. click next and select the default one when selecting disk behaviour
6. click next and your VM is created but wait main part is here
7. select your created VM and click on edit configuration file and on click on CD/DVD.
8. Select the boot from ISO and browse and then select your downloaded image file
9. Now on the top left there is options tab click on it and click to Advanced
10. then Select the boot option as BIOS then the last step power on your pc and you are good to go 


## Resolved Screenshots
![image](https://github.com/user-attachments/assets/875d40f3-a4e0-49b4-91ca-920ac182cfd9)


## Lessons Learned
- [Key insights from the troubleshooting process]
- [Recommendations for future installations]

## Contact and Support
**Primary Troubleshooter**: [Pratik Chandra Thakur]
**Date of Incident**: [Dec 2, 2024]

---

**Disclaimer**: This guide is specific to the encountered installation scenario and may not apply universally.
