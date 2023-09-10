# ------------------------------------
# Docker aliases and functions
# ------------------------------------

# Get latest container ID
alias dl="docker ps -l -q"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -it -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -it"

# Stop all containers
alias dstop="docker stop \$(docker ps -aq)"

# Remove all containers
alias drm="docker rm -v \$(docker ps -aq)"

# Force stop and remove all containers
alias drmf="docker rm -vf \$(docker stop \$(docker ps -aq))"

# Show dangling volumes
alias dangling="docker volume ls -qf dangling=true"

# Remove all dangling volumes
alias drmv="docker volume rm -f \$(docker volume ls -qf dangling=true)"

# Remove all images
alias drmi="docker rmi \$(docker image ls -aq)"

# Force remove all images(removes also images of )
alias drmif="docker rmi -f \$(docker image ls -aq)"

# Remove all unused networks
alias drmn="docker network prune"

# Force remove all unused networks
alias drmnf="docker network prune -f"

# Dockerfile build, e.g., $dbu tcnksm/test 
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# Bash into running container
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# shell into running container. Some images don't have bash
dsh() { docker exec -it $(docker ps -aqf "name=$1") sh; }
