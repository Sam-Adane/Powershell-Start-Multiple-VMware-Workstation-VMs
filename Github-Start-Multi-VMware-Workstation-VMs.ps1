Function Start-VMsAuto {

$VMRun = "C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe"

#Input VMs to autostart on a new line separated by comma;
$Auto_Start_VMs = @(
"D:\Home-Lab\VMware\DC01.vmx",
"D:\Home-Lab\VMware\SCCM.vmx",
"D:\Home-Lab\VMware\WSUS.vmx"
)

$Auto_Start_VMs | ForEach-Object {& $VMRun -T ws start $($_)}

}

Start-VMsAuto