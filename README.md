# Настройка окружения

## Установка пакетов

1. Установите Homebrew, если он еще не установлен:
    ```sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
2. Установите необходимые пакеты:
    ```sh
    brew install git zsh tmux
    ```

## Настройка Zsh

1. Установите Oh My Zsh:
    ```sh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
2. Переключите оболочку на zsh:
    ```sh
    chsh -s $(which zsh)
    ```

## Настройка Tmux

1. Создайте файл конфигурации Tmux:
    ```sh
    cp ~/.tmux.conf ~/.tmux.conf.bak
    echo "set -g mouse on" >> ~/.tmux.conf
    ```

## Дополнительная настройка

Для более детальной настройки, пожалуйста, обращайтесь к [документации](https://example.com/docs).