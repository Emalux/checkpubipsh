#!/bin/bash

# Definir opções
opcoes=("icanhazip.com" "http://checkip.amazonaws.com" "http://ipecho.net/plain" "l2.io/ip" "ifconfig.me/ip")

# Exibir o menu e obter a escolha do usuário
select opcao in "${opcoes[@]}"; do
    echo "Você escolheu: ${opcao}"
    break # Saír do loop depois de uma escolha
done

# Executar ações com base na escolha
case "$opcao" in
    "icanhazip.com")
        curl icanhazip.com
        ;;
    "http://checkip.amazonaws.com")
        curl http://checkip.amazonaws.com
        ;;
    "http://ipecho.net/plain")
        curl http://ipecho.net/plain
        ;;
    "l2.io/ip")
        curl l2.io/ip
        ;;
    "ifconfig.me/ip")
        curl ifconfig.me/ip
        ;;
    *)
        echo "Opção inválida"
        ;;
esac
