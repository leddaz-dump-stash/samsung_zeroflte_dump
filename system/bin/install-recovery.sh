#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/15570000.ufs/by-name/RECOVERY:28524544:a02efc6b2a13a03ec5e5a700a61d016fdf86b5a3; then
  applypatch EMMC:/dev/block/platform/15570000.ufs/by-name/BOOT:24403968:8b95b4736f0e74c6d8cbc525c33def1885889804 EMMC:/dev/block/platform/15570000.ufs/by-name/RECOVERY a02efc6b2a13a03ec5e5a700a61d016fdf86b5a3 28524544 8b95b4736f0e74c6d8cbc525c33def1885889804:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
