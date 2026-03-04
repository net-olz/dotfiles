#!/bin/bash

set -e  # Выход при ошибке

echo "🚀 Установка Dev Dotfiles..."

# 1️⃣ Клонируем репозиторий
echo "📥 Клонируем репозиторий..."
git clone git@github.com:net-olz/dotfiles.git ~/.dotfiles 2>/dev/null || {
    echo "ℹ️  Репозиторий уже существует, обновляем..."
    cd ~/.dotfiles
    git pull origin main
    cd -
}

# 2️⃣ Создаём символическую ссылку
echo "🔗 Создаём символическую ссылку..."
ln -sf ~/.dotfiles/bash_aliases_dev ~/.bash_aliases_dev

# 3️⃣ Добавляем в ~/.bashrc если ещё не добавлено
echo "📝 Подключаем в ~/.bashrc..."
BASHRC_FILE="$HOME/.bashrc"

if ! grep -q "bash_aliases_dev" "$BASHRC_FILE"; then
    cat >> "$BASHRC_FILE" << 'EOF'

# Load custom dev aliases
if [ -f ~/.bash_aliases_dev ]; then
    source ~/.bash_aliases_dev
fi
EOF
    echo "✅ Добавлено в ~/.bashrc"
else
    echo "ℹ️  Уже подключено в ~/.bashrc"
fi

# 4️⃣ Применяем изменения
echo "🔄 Применяем изменения..."
source "$BASHRC_FILE"

echo ""
echo "✨ Готово! Dev Dotfiles установлены успешно!"
echo "📖 Используй 'alias' чтобы увидеть все доступные команды"