# https://wiki.mikrotik.com/wiki/Dynamic_DNS_Update_Script_for_No-IP_DNS
# Запустить в терминале SSH для создания периодического события


/system scheduler add comment="Update No-IP DDNS" disabled=no interval=5m name=no-ip_ddns_update on-event=no-ip_ddns_update policy=read,write,test