#!/usr/bin/env bash

set -uo pipefail

FAILED=0

pause() {
    echo
    read -n1 -rsp "Press any key to close this window…"
    echo
}

echo "========================================"
echo " Arch Linux System Update"
echo "========================================"
echo
echo "This will update:"
echo "  • Arch Linux packages (pacman)"
echo "  • AUR packages (yay / paru)"
echo "  • Flatpak packages"
echo

read -rp "Do you want to start the system update? [y/N] " confirm
case "$confirm" in
    [yY]|[yY][eE][sS]) ;;
    *)
        echo
        echo "Update cancelled."
        pause
        exit 0
        ;;
esac

echo
echo "Starting system update..."
echo

# ---- Updates ----

echo "📦 Updating pacman packages..."
if ! sudo pacman -Syu; then
    echo "❌ pacman update failed."
    FAILED=1
fi

if command -v yay &>/dev/null; then
    echo
    echo "📦 Updating AUR packages with yay..."
    if ! yay -Syu; then
        echo "❌ AUR update failed."
        FAILED=1
    fi
elif command -v paru &>/dev/null; then
    echo
    echo "📦 Updating AUR packages with paru..."
    if ! paru -Syu; then
        echo "❌ AUR update failed."
        FAILED=1
    fi
else
    echo
    echo "⚠️  No AUR helper found. Skipping AUR updates."
fi

if command -v flatpak &>/dev/null; then
    echo
    echo "📦 Updating Flatpak packages..."
    if ! flatpak update; then
        echo "❌ Flatpak update failed."
        FAILED=1
    fi
else
    echo
    echo "⚠️  Flatpak not installed. Skipping Flatpak updates."
fi

# ---- Final status ----

echo
echo "========================================"

if [[ "$FAILED" -eq 0 ]]; then
    echo "✅ System update completed successfully."
else
    echo "❌ System update completed with errors."
    echo "   Please review the output above."
fi

echo "========================================"

pause

exit "$FAILED"
