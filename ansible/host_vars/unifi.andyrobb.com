---
bucket: ar-unifi-backups
acme_challenge_type: http-01
acme_directory: https://acme-v02.api.letsencrypt.org/directory
acme_version: 2
acme_email: andy@andyrobb.com
letsencrypt_dir: /etc/letsencrypt
letsencrypt_keys_dir: /etc/letsencrypt/keys
letsencrypt_csrs_dir: /etc/letsencrypt/csrs
letsencrypt_certs_dir: /etc/letsencrypt/certs
letsencrypt_account_key: /etc/letsencrypt/account/account.key
domain_name: unifi.andyrobb.com
