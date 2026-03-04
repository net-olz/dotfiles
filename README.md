# 💻 Dev Dotfiles by net-olz

Привет! Это мои **личные Bash алиасы и функции**, которые ускоряют работу с:

- 🐳 Docker / Docker Compose  
- 🧰 Git  
- 🐍 Python / UV  
- 🖥 Системные команды Linux  

Репозиторий полностью переносимый — можно развернуть на любом сервере за пару команд.

---

## 🌟 Быстрый старт

### 1️⃣ Клонируем репозиторий

```bash
git clone git@github.com:net-olz/dotfiles.git ~/.dotfiles
```

### 2️⃣ Создаём символическую ссылку

```bash
ln -s ~/.dotfiles/bash_aliases_dev ~/.bash_aliases_dev
```

### 3️⃣ Подключаем в ~/.bashrc

```bash
# Load custom dev aliases
if [ -f ~/.bash_aliases_dev ]; then
    source ~/.bash_aliases_dev
fi
```

### 4️⃣ Применяем изменения

```bash
source ~/.bashrc
```
