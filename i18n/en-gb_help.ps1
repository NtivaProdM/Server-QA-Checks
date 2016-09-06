﻿$script:qaNotes['acc01']='<xml><description>Check all local users to ensure that no non-standard accounts exist.Unless the server is not in a domain, there should be no additional user accounts. Example standard accounts include "ASPNET", "__VMware"</description><pass>No additional local accounts exist</pass><fail>One or more local accounts exist</fail><applies>All</applies></xml>'
$script:qaNotes['acc02']='<xml><description>Checks to see if the local default accounts have been renamed. The "Administrator" and "Guest" accounts should be.</description><pass>Local admin account has been renamed</pass><fail>A local admin account was found that needs to be renamed</fail><applies>All</applies></xml>'
$script:qaNotes['acc03']='<xml><description>Check the local administrators group to ensure no non-standard accounts exist.If there is a specific application requirement for local administration access then these need to be well documented.</description><pass>No local administrators found</pass><warning>This is a workgroup server, is this correct.?</warning><fail>One or more local administrator accounts exist</fail><applies>All</applies></xml>'
$script:qaNotes['acc04']='<xml><description>Check all local groups and ensure no additional groups exist. If there is a specific application requirement for local groups then these need to be documented with a designated team specified as the owner. If you use specific role groups, make sure they are excluded in the settings file.</description><pass>No additional local accounts</pass><fail>One or more local groups exist</fail><na>Server is a domain controller</na><applies>All</applies></xml>'
$script:qaNotes['acc05']='<xml><description>Checks all services to ensure no user accounts are assigned. If specific application service accounts are required then they should be domainlevel accounts (not local) and restricted from interactice access by policy.</description><pass>No services found running under a local accounts</pass><fail>One or more services was found to be running under local accounts</fail><applies>All</applies></xml>'
$script:qaNotes['acc06']='<xml><description>Checks to make sure that the guest user account has been disabled. The guest account is located via the well known SID.</description><pass>Guest account is disabled</pass><fail>Guest account has not been disabled</fail><na>Guest account does not exist</na><applies>All</applies></xml>'
$script:qaNotes['com01']='<xml><description>Check McAfee anti virus is installed and updating automatically. Also checks that virus definitions are up to date.</description><pass>McAfee product found, DATs are</pass><fail>McAfee product not found, install required / DATs are not up-to-date / No DAT version found</fail><applies>All</applies></xml>'
$script:qaNotes['com02']='<xml><description>Check relevant monitoring tool agent is installed and that the correct port is open to the management server</description><pass>{0} found, Port {1} open to {2}</pass><fail>Monitoring software not found, install required / {0} found, Agent not configured with port and/or servername / {0} found, Port {1} not open to {2}</fail><applies>All</applies></xml>'
$script:qaNotes['com03']='<xml><description>Check relevant SCCM agent is installed, and that the correct port is open to the management server</description><pass>SCCM agent found, Port {0} open to {1}</pass><fail>SCCM agent not found, install required / SCCM agent found, Agent not configured with port and/or servername / SCCM agent found, Port {0} not open to {1}</fail><applies>All</applies></xml>'
$script:qaNotes['com04']='<xml><description>Check NetBackup agent is installed</description><pass>{0} found, Port 1556 open to {1}</pass><fail>{0} not found / Port 1556 not open to {0} / Backup agent software not found, but this server has {0} installed which requires it / Backup agent software not found, but this server is a domain controller which requires it</fail><manual>Is this server backed up via VADP.?Manually check vCenter annotations, and look for "NetBackup.</manual><applies>All</applies></xml>'
$script:qaNotes['com05']='<xml><description>Check server is compliant with patch policy (must be patched to latest released patch level for this customer) Check date of last patch and FAIL if not within 35 days</description><pass>Windows patches applied</pass><warning>Server not patched within the last {0} days / Operating system not supported by check</warning><fail>Server not patched within the last {0} days / No last patch date - server has never been updated</fail><applies>All</applies></xml>'
$script:qaNotes['com06']='<xml><description>Check that a WSUS server has been specified</description><pass>WSUS server configured, Port {0} open to {1}</pass><fail>WSUS server has not been configured / WSUS server configured, Port {0} not open to {1}</fail><applies>All</applies></xml>'
$script:qaNotes['com07']='<xml><description>Check sentinel monitoring agent is installed, and that the correct port is open to the management server</description><pass>Sentinel agent found, Port {0} open to {1}</pass><fail>Sentinel agent not found, install required / Port {0} not open to {1}</fail><applies>All</applies></xml>'
$script:qaNotes['drv01']='<xml><description>Check the system drive is a minimum of 50gb for Windows 2008+ servers (some are reporting 49gb)</description><pass>System drive ({0}) meets minimum required size</pass><fail>System drive ({0}) is too small, should be {1}gb</fail><manual>Unable to get drive size, please check manually</manual><applies>All</applies></xml>'
$script:qaNotes['drv02']='<xml><description>Ensure all drives have a minimum % of free space.The default value is 17%</description><pass>All drives have the required minimum free space of {0}%</pass><fail>One or more drives were found with less than {0}% free space</fail><manual>Unable to get drive information, please check manually</manual><applies>All</applies></xml>'
$script:qaNotes['drv03']='<xml><description>Check the page file is located on the system root drive and fixed size.The default setting is 4096MB (4GB) If the page file is larger a document detailing the tuning processused must exist and should follow Microsoft best tuning practices (http://support.microsoft.com/kb/2021748)</description><pass>Pagefile is set correctly</pass><fail>Pagefile is system managed, it should be set to a custom size of {0}mb / Pagefile should be set on the system drive, to Custom, with Initial and Maximum sizes set to {0}mb / Pagefile does not exist on {0} drive</fail><manual>Unable to get page file information, please check manually</manual><applies>All</applies></xml>'
$script:qaNotes['drv04']='<xml><description>If a CD/DVD drive is present on the server confirm it is configured as "</description><pass>CD/DVD drive set correctly</pass><fail>CD/DVD drive found, but not configured as {0}</fail><na>No CD/DVD drives found</na><applies>All</applies></xml>'
$script:qaNotes['drv05']='<xml><description>Check Shared Folders to ensure no additional shares are present (Shared folders should be documented with a designated team specified as the owner)</description><pass>No additional shares found</pass><warning>Shared folders found, check against documentation</warning><applies>All</applies></xml>'
$script:qaNotes['drv06']='<xml><description>Where SAN storage is used, ensure multipathing software is installed and Dual Paths are present and functioning. ** ONLY CHECKS IF SOFTWARE INSTALLED **</description><fail>SAN storage software not found, install required</fail><manual>{0} found</manual><na>Not a physical machine</na><applies>Physicals</applies></xml>'
$script:qaNotes['drv07']='<xml><description>Check local disk array management agent is installed on the server. ** ONLY CHECKS IF SOFTWARE INSTALLED **</description><fail>Disk management software not found, install required</fail><manual>{0} found</manual><na>Not a physical machine</na><applies>Physicals</applies></xml>'
$script:qaNotes['drv08']='<xml><description>Ensure all drives are formatted as</description><pass>All drives are formatted as</pass><fail>One or more drives were found not formatted as</fail><manual>Unable to get drive information, please check manually</manual><applies>All</applies></xml>'
$script:qaNotes['hvh01']='<xml><description>Check Hyper-V is installed on server core</description><pass>Hyper-V is using Windows Server Core</pass><fail>Hyper-V is not using Windows Server Core</fail><na>Not a Hyper-V server</na><applies>Hyper-V Hosts</applies></xml>'
$script:qaNotes['hvh02']='<xml><description>Check Hyper-V is the only one installed</description><pass>No extra server roles or features exist</pass><fail>One or more extra server roles or features exist</fail><na>Not a Hyper-V server</na><applies>Hyper-V Hosts</applies></xml>'
$script:qaNotes['hvh03']='<xml><description>Check all VMs are running from a non-system drive</description><pass>No virtual machines are using the system drive</pass><fail>One or more virtual machines are using the system drive</fail><na>Not a Hyper-V server / No virtual machines exist on this host</na><applies>Hyper-V Hosts</applies></xml>'
$script:qaNotes['net01']='<xml><description>Check IPv6 has been unbound on all active NICs, or globally</description><pass>IPv6 disabled globally / IPv6 enabled globally, but disabled on all NICs</pass><fail>IPv6 enabled globally, and NIC(s) found with IPv6 enabled</fail><applies>All</applies></xml>'
$script:qaNotes['net02']='<xml><description>Check there are no unused Network interfaces on the server. We define "not in use" by showing any ENABLED NICs set to DHCP All NICs should have a statically assigned IP address.</description><pass>No DHCP enabled adapters found</pass><fail>DHCP enabled adapters found</fail><applies>All</applies></xml>'
$script:qaNotes['net03']='<xml><description>Check network interfaces are labelled so their purpose is easily identifiable. FAIL if any Adapter Names are "Local Area Connection x" or "Ethernet x"</description><pass>All adapters renamed from default</pass><fail>An adapter was found with the default name</fail><applies>All</applies></xml>'
$script:qaNotes['net04']='<xml><description>Check binding order is set correctly for "Production" as the primary network adapter then as applicable for other interfaces If no "Production" adapter is found, "Management" should be first</description><pass>Binding order correctly set</pass><fail>No network adapters found / {0} or {1} adapters not listed / Binding order incorrect, {0} should be first / Registry setting not found</fail><applies>All</applies></xml>'
$script:qaNotes['net05']='<xml><description>Check the network adapter speed and duplex settings. Should be set to "Full Duplex" and "Auto"</description><pass>All network adapters configured correctly</pass><warning>One or more network adapters configured incorrectly</warning><fail>No network adapters found or enabled</fail><applies>All</applies></xml>'
$script:qaNotes['net06']='<xml><description>Check local network management agent is installed on the server. ** ONLY CHECKS IF SOFTWARE INSTALLED **</description><pass>{0} found</pass><fail>Network management software not found, install required</fail><na>Not a physical machine</na><applies>Physicals</applies></xml>'
$script:qaNotes['net07']='<xml><description>Check network interfaces for known teaming names, manually check they are configured correctly. Fail if no teams found or if server is a virtual.Checked configuration is: Teaming Mode: "Static Independent";Load Balancing Mode: "Address Hash";Standby Adapter: (set)</description><pass>Network team count: {0}</pass><fail>No teamed network adapter(s) found / There are no network teams configured on this server / Native teaming enabled on virtual machine / Team configuration is not set correctly</fail><manual>Teamed network adpater(s) found, check they are configured correctly</manual><na>Not a physical server / Operating system not supported</na><applies>Physicals</applies></xml>'
$script:qaNotes['net08']='<xml><description>Check that a management network adapter exists. This must always be present on a server and labelled correctly</description><pass>Management network adapter found</pass><fail>No management network adapter</fail><applies>All</applies></xml>'
$script:qaNotes['net09']='<xml><description>Checks to make sure the specified static routes have been added</description><pass>All static routes are present</pass><fail>One or more static routes are missing or incorrect</fail><na>No static routes to check</na><applies>All</applies></xml>'
$script:qaNotes['reg01']='<xml><description>Check that the server time is correct.If a valid source is used, the time is also checked against that source. Maximum time difference allowed is 10 seconds.Any longer and the check fails</description><pass>Time source is set to a remote server, and is syncronsized correctly</pass><fail>Time source is set to a remote server, and is not syncronsized correctly / Time source is not set / Time source is not set correctly / Error getting required information /</fail><manual>Not a supported operating system for this check</manual><applies>All</applies></xml>'
$script:qaNotes['reg02']='<xml><description>Check that the server timezone is correct.Default setting is "(GMT) Greenwich Mean Time</description><pass>Server timezone set correctly</pass><fail>Server timezone is incorrect and should be set to {0}</fail><applies>All</applies></xml>'
$script:qaNotes['reg03']='<xml><description>Ensure the Region and Language > Location is set correctly. Default setting is "United Kingdom"</description><pass>Regional location set correctly</pass><fail>Regional location incorrectly set to {0} / Registry setting not found</fail><applies>All</applies></xml>'
$script:qaNotes['reg04']='<xml><description>Ensure the Region and Language > keyboard and Languages is set correctly Default setting is "English (United Kingdom)"</description><pass>Keyboard layout is set correctly</pass><fail>Keyboard layout is not set correctly / Registry setting not found</fail><applies>All</applies></xml>'
$script:qaNotes['sec01']='<xml><description>Ensure security ciphers are set correctly.Settings taken from https://www.nartac.com/Products/IISCrypto/Default.aspx using "Best Practices/FIPS 140-2" settings</description><pass>All ciphers set correctly</pass><fail>One or more ciphers set incorrectly</fail><applies>All</applies></xml>'
$script:qaNotes['sec02']='<xml><description>Ensure hashes are set correctly. Settings taken from https://www.nartac.com/Products/IISCrypto/Default.aspx using "Best Practices/FIPS 140-2" settings</description><pass>All hashes set correctly</pass><fail>One or more hashes set incorrectly</fail><applies>All</applies></xml>'
$script:qaNotes['sec03']='<xml><description>Ensure key exchange algorithms are set correctly.Settings taken from https://www.nartac.com/Products/IISCrypto/Default.aspx using "Best Practices/FIPS 140-2" settings</description><pass>All key exchange algorithms set correctly</pass><fail>One or more key exchange algorithms set incorrectly</fail><applies>All</applies></xml>'
$script:qaNotes['sec04']='<xml><description>Ensure protocols are set correctly.Settings taken from https://www.nartac.com/Products/IISCrypto/Default.aspx using "Best Practices/FIPS 140-2" settings</description><pass>All protocols set correctly</pass><fail>One or more protocols set incorrectly</fail><applies>All</applies></xml>'
$script:qaNotes['sec05']='<xml><description>Ensure the security cipher order is set correctly.Settings taken from https://www.nartac.com/Products/IISCrypto/Default.aspx using "Best Practices/FIPS 140-2" settings</description><pass>Cipher suite order set correctly</pass><fail>Cipher suite order not set correctly / Cipher suite order set to the default value</fail><applies>All</applies></xml>'
$script:qaNotes['sec06']='<xml><description>Ensure the system is set to reject attempts to enumerate accounts in the SAM by anonymous users.</description><pass>Reject annonymous account enumeration is enabled</pass><fail>Reject annonymous account enumeration is disabled / Registry setting not found</fail><applies>All</applies></xml>'
$script:qaNotes['sec07']='<xml><description>Ensure the system is set to reject attempts to enumerate shares in the SAM by anonymous users.</description><pass>Reject annonymous share enumeration is enabled</pass><fail>Reject annonymous share enumeration is disabled / Registry setting not found</fail><applies>All</applies></xml>'
$script:qaNotes['sec08']='<xml><description>Check system is not caching domain credentials</description><pass>Domain credential caching is disabled</pass><fail>Domain credential caching is enabled / Registry setting not found</fail><applies>All</applies></xml>'
$script:qaNotes['sec09']='<xml><description>Ensure the system is set to request administrative credentials before granting an application elevated privileges.Default setting is either "(1):Prompt for credentials on the secure desktop" or "(3):Prompt for credentials"</description><pass>Prompt for credentials is enabled</pass><fail>System is not set to "Prompt for credentials" when launching an application with elevated privileges / Registry setting not found</fail><applies>All</applies></xml>'
$script:qaNotes['sec10']='<xml><description>Ensure the system is set to restrict anonymous access to named pipes</description><pass>Restrict annonymous pipe/share access is enabled</pass><fail>Restrict annonymous pipe/share access is disabled / Registry setting not found</fail><applies>All</applies></xml>'
$script:qaNotes['sec11']='<xml><description>Checks to see if the default webpage is present in</description><pass>IIS Installed, "iisstart.htm" not listed in default documents</pass><fail>IIS Installed, default document "iisstart.htm" configured</fail><na>IIS not Installed</na><applies>All</applies></xml>'
$script:qaNotes['sec12']='<xml><description>Ensure SMB signing is turned on.</description><pass>SMB Signing configured correctly</pass><fail>SMB Signing not configured correctly / Registry setting not found</fail><applies>All</applies></xml>'
$script:qaNotes['sec13']='<xml><description>If server is Domain Controller or a Terminal Server ensure RSA authentication manager is installed and PIN is required to access server.</description><pass>{0} found</pass><fail>RSA software not found</fail><na>Not a domain controller or terminal services server</na><applies>All</applies></xml>'
$script:qaNotes['sec14']='<xml><description>Checks to see if there are any addional firewall rules, and warns if there are any. This ignores all default pre-configured rules, and netbackup ports rules (1556, 13724) macmnsvc: McAfee Service;nbwin: NetBackup Client</description><pass>No additional firewall rules exist</pass><warning>One or more additional firewall rules exist, check they are required</warning><applies>All</applies></xml>'
$script:qaNotes['sec15']='<xml><description>Check if Windows firewall is enabled or disabled</description><pass>Windows firewall is set correctly</pass><fail>Windows firewall is not set correctly</fail><applies>All</applies></xml>'
$script:qaNotes['sys01']='<xml><description>Check for a pending reboot</description><pass>Server is not waiting for a reboot</pass><fail>Server is waiting for a reboot</fail><applies>All</applies></xml>'
$script:qaNotes['sys02']='<xml><description>Check windows is licensed.</description><pass>Windows is licenced, Port 1688 open to KMS Server {0}</pass><fail>Windows is licenced, Port 1688 not open to KMS Server {0} / Windows licence check failed / Windows not licenced</fail><applies>All</applies></xml>'
$script:qaNotes['sys03']='<xml><description>Check services and ensure all services set to start automatically are running (NetBackup Bare Metal Restore Boot Server,NetBackup SAN Client Fibre Transport Service and .NET4.0 are all expected to be Automatic but not running)</description><pass>All auto-start services are running</pass><fail>An auto-start service was found not running</fail><applies>All</applies></xml>'
$script:qaNotes['sys04']='<xml><description>Check services and ensure all listed services are set to disabled and are stopped</description><pass>All services are configured correctly</pass><fail>One or more services are configured incorrectly</fail><applies>All</applies></xml>'
$script:qaNotes['sys05']='<xml><description>Check System Event Log and ensure no errors or warnings are present in the last 14 days.If found, will return the latest 15 entries</description><pass>No errors found in system event log</pass><warning>Errors were found in the system event log</warning><applies>All</applies></xml>'
$script:qaNotes['sys06']='<xml><description>Check Application Event Log and ensure no errors or warnings are present in the last 14 days.If found, will return the latest 15 entries</description><pass>No errors found in application event log</pass><warning>Errors were found in the application event log</warning><applies>All</applies></xml>'
$script:qaNotes['sys07']='<xml><description>Checks Device Manager to ensure there are no unknown devices, conflicts or errors.</description><pass>No device errors found</pass><fail>Device errors found</fail><applies>All</applies></xml>'
$script:qaNotes['sys09']='<xml><description>Check to see if any non standard scheduled tasks exist onthe server (Any application specific scheduled tasksshould be documented with a designated contact point specified).Skips any Microsoft specific tasks</description><pass>No additional scheduled tasks found</pass><warning>Additional scheduled tasks found - make sure these are documented</warning><applies>All</applies></xml>'
$script:qaNotes['sys10']='<xml><description>Check to see if any printers exist on the server. If printers exist, ensure the spooler directory is not stored on the system drive.</description><pass>Printers found, and spool directory is not set to default path</pass><fail>Spool directory is set to the default path and needs to be changed, Registry setting not found</fail><na>No printers found / Print Spooler service is not running</na><applies>All</applies></xml>'
$script:qaNotes['sys11']='<xml><description>Ensure autorun is disabled.</description><pass>Autorun is disabled</pass><fail>Autorun is enabled</fail><applies>All</applies></xml>'
$script:qaNotes['sys12']='<xml><description>Check if SNMP role is install on the server.If so, ensure the SNMP community strings follow the secure password policy.</description><pass>SNMP Service installed, but disabled</pass><fail>SNMP Service installed, no communities configured</fail><manual>SNMP Service installed, communities listed</manual><na>SNMP Service not installed</na><applies>All</applies></xml>'
$script:qaNotes['sys13']='<xml><description>Checks that the currently logged on user is a member of the domain and not a local user account</description><pass>Currently logged on with domain user account</pass><warning>This is a workgroup server, is this correct.?</warning><fail>Not currently logged on with current domain user account</fail><applies>All</applies></xml>'
$script:qaNotes['sys14']='<xml><description>Check power plan is set to High Performance.</description><pass>Power plan is set correctly</pass><fail>Power plan is not set correctly</fail><applies>All</applies></xml>'
$script:qaNotes['sys15']='<xml><description>Check hibernation is turned off</description><pass>Hibernation is currently disabled</pass><fail>Hibernation is currently enabled</fail><applies>All</applies></xml>'
$script:qaNotes['sys16']='<xml><description>Check that remote desktop is enabled and that Network Level Authentication (NLA) is set</description><pass>Secure remote desktop and NLA enabled</pass><warning>Network Level Authentication is not set</warning><fail>Secure remote desktop disabled</fail><applies>All</applies></xml>'
$script:qaNotes['sys17']='<xml><description>If server is a Terminal Services Server ensure it has a licence server set.</description><pass>Terminal services server is licenced</pass><fail>Terminal services server is not licenced</fail><na>Not a terminal services server</na><applies>All</applies></xml>'
$script:qaNotes['vhv01']='<xml><description>Check that the latest HyperV tools are installed</description><pass>HyperV tools are up to date</pass><fail>HyperV tools can be upgraded</fail><manual>Unable to check the HyperV Tools upgrade status</manual><na>Not a virtual machine</na><applies>Virtuals</applies></xml>'
$script:qaNotes['vmw01']='<xml><description>Check that the latest vmware tools are installed</description><pass>VMware tools are up to date</pass><fail>VMware tools can be upgraded</fail><manual>Unable to check the VMware Tools upgrade status</manual><na>Not a virtual machine</na><applies>Virtuals</applies></xml>'
$script:qaNotes['vmw02']='<xml><description>Check that VMware Host Time Sync is disabled</description><pass>VMware tools time sync is disabled</pass><fail>VMware tools time sync is enabled</fail><manual>Unable to check the VMware time sync status</manual><na>Not a virtual machine</na><applies>Virtuals</applies></xml>'
$script:qaNotes['vmw03']='<xml><description>Check all virtual servers have network cards that are configured as VMXNET3</description><pass>All active NICS configured correctly</pass><warning>No network adapters found</warning><fail>One or more active NICs were found not to be VMXNET3</fail><na>Not a virtual machine</na><applies>Virtuals</applies></xml>'
$script:qaNotes['vmw04']='<xml><description>Check Windows disk controller is set correctly. Default setting is "LSI logic SAS"</description><pass>Disk controller set correctly</pass><fail>No SCSI controllers found / Disk controller not set correctly</fail><na>Not a virtual machine</na><applies>Virtuals</applies></xml>'
$script:qaNotes['vmw05']='<xml><description>Checks to see if there are are more than 8 drives attached to the same SCSI adapter.</description><pass>More than 7 drives exist, but on different SCSI adapters</pass><fail>More than 7 drives exist on one SCSI adapter</fail><na>Not a virtual machine / There are less than 8 drives attached to server</na><applies>Virtuals</applies></xml>'
$script:qaNotes['vmw06']='<xml><description>Checks to see if the total VM size is less than 1tb</description><pass>VM is smaller than 1</pass><warning>VM is larger than 1TB.Make sure there is an engineering exception in place for this</warning><na>Not a virtual machine</na><applies>Virtuals</applies></xml>'
$script:qaNotes['vmw07']='<xml><description>Checks for any mounted CD/DVD or floppy drives</description><pass>No CD/ROM or floppy drives are mounted</pass><fail>One or more CD/ROM or floppy drives are mounted</fail><na>Not a virtual machine</na><applies>Virtuals</applies></xml>'

