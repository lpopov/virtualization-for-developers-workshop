#includes needed modules
exec { 'apt-get update':
    command => "/usr/bin/apt-get update"
    #onlyif => "/bin/bash -c 'exit $(( $(( $(date +%s) - $(stat -c %Y /var/lib/apt/lists/$( ls /var/lib/apt/lists/ -tr1|tail -1 )) )) <= 604800 ))'"
}

include apache, mysql, php
