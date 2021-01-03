#!/bin/sh

# Comando falha, deploy para
set -e

printf "\033[0;32m Deploy de atualizações para o Github... \033[0m\n"

# Build no projeto
hugo -t hugo-flex


# Pasta public
cd public

# Adiciona modificações ao git
git add .

# Commit
msg="Rebuild do site em $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

# Push no source e build
git push origin master
