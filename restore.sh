#!/bin/bash

# Restaurar configuración de herbstluftwm
mkdir -p ~/.config/herbstluftwm
cp -r ~/dotfiles/herbstluftwm/* ~/.config/herbstluftwm/
chmod +x ~/.config/herbstluftwm/autostart  # Dar permisos de ejecución si es necesario

# Restaurar configuración de tint2
mkdir -p ~/.config/tint2
cp -r ~/dotfiles/tint2/* ~/.config/tint2/

# Restaurar configuración de plank
mkdir -p ~/.config/plank/dock1/launchers
cp -r ~/dotfiles/plank/dock1/launchers/* ~/.config/plank/dock1/launchers/

# Restaurar configuración de jgmenu
mkdir -p ~/.config/jgmenu
cp -r ~/dotfiles/jgmenu/* ~/.config/jgmenu/

# Reiniciar servicios (opcional, solo si están en ejecución)
herbstclient reload 2>/dev/null
killall -SIGUSR1 tint2 2>/dev/null
killall plank 2>/dev/null && plank &
killall jgmenu 2>/dev/null && jgmenu &

echo "¡Configuración restaurada con éxito!"
