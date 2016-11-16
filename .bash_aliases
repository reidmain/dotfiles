alias l="ls -lF"
alias la="ls -l@F"
alias ll="ls -laF"

alias ps_start="sudo su postgres -c 'pg_ctl start -D /opt/local/var/db/postgresql93/defaultdb'"
alias ps_stop="sudo su postgres -c 'pg_ctl stop -D /opt/local/var/db/postgresql93/defaultdb'"
alias ps_status="sudo su postgres -c 'pg_ctl status -D /opt/local/var/db/postgresql93/defaultdb'"
