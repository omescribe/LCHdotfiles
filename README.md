# LCHdotfiles

## Descripción
Repositorio de configuraciones personales para mi entorno de escritorio en Loc-OS Linux, incluyendo:
- Herbstluftwm (Gestor de ventanas)
- Tint2 (Barra de tareas)
- Plank (Dock)

## Requisitos
- Loc-OS Linux
- Herbstluftwm
- Tint2
- Plank

## Instalación
```bash
# Clonar repositorio
git clone https://github.com/omescribe/LCHdotfiles.git ~/dotfiles

# Crear directorio de configuración si no existe
mkdir -p ~/.config/herbstluftwm ~/.config/tint2 ~/.config/plank/dock1/launchers

# Copiar configuraciones
cp -r ~/dotfiles/herbstluftwm/* ~/.config/herbstluftwm/
cp -r ~/dotfiles/tint2/* ~/.config/tint2/
cp -r ~/dotfiles/plank/dock1/launchers/* ~/.config/plank/dock1/launchers/

# Dar permisos de ejecución (si es necesario)
chmod +x ~/.config/herbstluftwm/autostart

# Reiniciar servicios
herbstclient reload
killall -SIGUSR1 tint2
killall plank && plank &
