postconf -e "myhostname = $(hostname -f)"
 
postconf -e "virtual_mailbox_domains = proxy:mysql:/etc/postfix/sql/mysql_virtual_domains_maps.cf"
postconf -e "virtual_alias_maps = proxy:mysql:/etc/postfix/sql/mysql_virtual_alias_maps.cf, proxy:mysql:/etc/postfix/sql/mysql_virtual_alias_domain_maps.cf, proxy:mysql:/etc/postfix/sql/mysql_virtual_alias_domain_catchall_maps.cf"
postconf -e "virtual_mailbox_maps = proxy:mysql:/etc/postfix/sql/mysql_virtual_mailbox_maps.cf, proxy:mysql:/etc/postfix/sql/mysql_virtual_alias_domain_mailbox_maps.cf"
 
postconf -e "smtpd_tls_cert_file = /etc/pki/tls/certs/localhost.crt"
postconf -e "smtpd_tls_key_file = /etc/pki/tls/private/localhost.key"
postconf -e "smtpd_use_tls = yes"
postconf -e "smtpd_tls_auth_only = yes"
 
postconf -e "smtpd_sasl_type = dovecot"
postconf -e "smtpd_sasl_path = private/auth"
postconf -e "smtpd_sasl_auth_enable = yes"
postconf -e "smtpd_recipient_restrictions = permit_sasl_authenticated, permit_mynetworks, reject_unauth_destination"
 
postconf -e "mydestination = localhost"
postconf -e "mynetworks = 127.0.0.0/8"
postconf -e "inet_protocols = ipv4"
postconf -e "inet_interfaces = all"

postconf -e "virtual_transport = lmtp:unix:private/dovecot-lmtp"
