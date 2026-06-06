#!/bin/bash

# Rileva il sistema operativo
OS="$(uname -s)"

# Imposta la lingua in italiano per l'output (se supportata)
export LC_TIME=it_IT.UTF-8

case "$OS" in
    Linux*)
        # Comando per Linux
        GIORNO=$(date +%A)
        NUMERO=$(date +%u) # 1=Lunedì, 7=Domenica
        ;;
    Darwin*)
        # Comando per macOS (BSD date)
        GIORNO=$(date +%A)
        NUMERO=$(date +%u)
        ;;
    CYGWIN*|MINGW*|MSYS*)
        # Comando per Windows (tramite Git Bash o ambienti simili)
        GIORNO=$(date +%A)
        NUMERO=$(date +%u)
        ;;
    *)
        echo "Sistema operativo non supportato direttamente."
        exit 1
        ;;
esac

echo "Giorno della settimana: $GIORNO"
echo "Numero del giorno: $NUMERO (1=Lunedì, 7=Domenica)"
