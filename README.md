# 💻 Dev Dotfiles by net-olz

[![Typing
SVG](https://readme-typing-svg.herokuapp.com?color=%2336BCF7&lines=Я+раздобай+кодю+как+могу.)](https://git.io/typing-svg)

Привет! Это мои **личные Bash алиасы и функции**, которые ускоряют
работу с:

-   🐳 Docker / Docker Compose\
-   🧰 Git\
-   🐍 Python / UV\
-   🖥 Системные команды Linux

Репозиторий полностью переносимый --- можно развернуть на любом сервере
за пару команд.

------------------------------------------------------------------------

# ⚡ Автоматическая установка (рекомендуется)

Самый простой способ установить dotfiles --- запустить install-скрипт:

``` bash
bash <(curl -fsSL https://raw.githubusercontent.com/net-olz/dotfiles/main/install.sh)
```

или

``` bash
curl -fsSL https://raw.githubusercontent.com/net-olz/dotfiles/main/install.sh | bash
```

Что делает скрипт:

1️⃣ Клонирует репозиторий в `~/.dotfiles`\
2️⃣ Создаёт символическую ссылку `~/.bash_aliases_dev`\
3️⃣ Подключает алиасы в `~/.bashrc`\
4️⃣ Применяет настройки

После установки просто перезапусти терминал или выполни:

``` bash
source ~/.bashrc
```

------------------------------------------------------------------------

# 🛠 Ручная установка

Если хочешь установить всё вручную.

### 1️⃣ Клонируем репозиторий

``` bash
git clone https://github.com/net-olz/dotfiles.git ~/.dotfiles
```

### 2️⃣ Создаём символическую ссылку

``` bash
ln -s ~/.dotfiles/bash_aliases_dev ~/.bash_aliases_dev
```

### 3️⃣ Подключаем в \~/.bashrc

``` bash
# Load custom dev aliases
if [ -f ~/.bash_aliases_dev ]; then
    source ~/.bash_aliases_dev
fi
```

### 4️⃣ Применяем изменения

``` bash
source ~/.bashrc
```

------------------------------------------------------------------------

# 🔄 Обновление dotfiles

Если репозиторий уже установлен, можно просто обновить его:

``` bash
cd ~/.dotfiles
git pull
```

------------------------------------------------------------------------

# 📖 Проверить алиасы

Посмотреть список всех доступных алиасов:

``` bash
alias
```

------------------------------------------------------------------------

💡 Маленький лайфхак --- можно добавить alias для обновления:

``` bash
alias dotfiles-update="git -C ~/.dotfiles pull"
```

Теперь обновление будет одной командой:

``` bash
dotfiles-update
```
