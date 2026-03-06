#!/usr/bin/env bash

set -e

REPO="https://github.com/net-olz/dotfiles.git"
DOTFILES_DIR="$HOME/.dotfiles"
BASHRC_FILE="$HOME/.bashrc"

echo "🚀 Установка Dev Dotfiles..."

# 1️⃣ Проверяем git
if ! command -v git >/dev/null 2>&1; then
    echo "❌ Git не установлен. Установи git и попробуй снова."
    exit 1
fi

# 2️⃣ Клонируем или обновляем репозиторий
echo "📥 Клонируем репозиторий..."

if [ ! -d "$DOTFILES_DIR" ]; then
    git clone "$REPO" "$DOTFILES_DIR"
else
    echo "ℹ️ Репозиторий уже существует, обновляем..."
    git -C "$DOTFILES_DIR" pull
fi

# 3️⃣ Создаём символическую ссылку
echo "🔗 Создаём символическую ссылку..."
ln -sf "$DOTFILES_DIR/bash_aliases_dev" "$HOME/.bash_aliases_dev"

# 4️⃣ Добавляем в ~/.bashrc
echo "📝 Подключаем в ~/.bashrc..."

if ! grep -q "bash_aliases_dev" "$BASHRC_FILE"; then
cat >> "$BASHRC_FILE" << 'EOF'

# Load custom dev aliases
if [ -f ~/.bash_aliases_dev ]; then
    source ~/.bash_aliases_dev
fi
EOF
    echo "✅ Добавлено в ~/.bashrc"
else
    echo "ℹ️ Уже подключено в ~/.bashrc"
fi

echo ""
echo "✨ Готово! Dev Dotfiles установлены!"
echo "🔄 Перезапусти терминал или выполни:"
echo "source ~/.bashrc"
echo ""
echo "📖 Используй 'alias' чтобы увидеть команды"
