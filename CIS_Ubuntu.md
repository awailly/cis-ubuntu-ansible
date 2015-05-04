# CIS Security Bencmarks for Ubuntu

### Recommendations

This recommendations provide prescriptive guidance for system and application administrators who plan to develop, deploy,
assess, or secure solutions that incorporate Ubuntu server.

### 1 - Patching and Software Updates

Newer patches may contain security enhancements that would not be available through the latest full update. As a result, it is recommended that the latest software patches be used to
take advantage of the latest functionality.

### 2 - Filesystem Configuration

Directories that are used for system-wide functions can be further protected by placing them on separate partitions. This provides protection for resource exhaustion and enables the use of mounting options that are applicable to the directory's intended use. It is recommended to store user's data on separate partitions and have stricter mount options.

### 3 - Secure Boot Settings

Malicious code try to start as early as possible during the boot process, so boot loader configuration files must be protected. Fixing permissions to read and write for root only prevents non-root users from seeing the boot parameters or changing them. Non-root users who read the boot parameters may be able to identify weaknesses in security upon boot and be able to exploit them. It is recommendated to protect boot loader with a boot password will prevent an unauthorized user from entering boot parameters or changing the boot partition. 

### 4 - Process Hardening

During execution the process offers a surface of vulnerability which must be reduce. Core dump can be used to glean confidential information and must be restricted. Activating whenever possible processors function to prevent exploitation of buffer overflow vulnerabilities





### 5 - OS Services 


### 6 - Special Purpose Services

### 7 - Network Configuration and Firewalls


### 8 - Logging and Auditing 


### 9 - System Access, Authentication and Authorization 

### 10 - User Accounts and Environment 

### 11 - Warning Banners

### 12 - Verify System File Permissions

### 13 - Review User and Group Settings
