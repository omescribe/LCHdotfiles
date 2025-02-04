# LCHdotfiles
> Configuraciones para Herbstluftwm, Tint2, Plank y Jgmenu en Loc-OS Linux

## 📦 Requisitos
```bash
sudo apt install herbstluftwm tint2 plank jgmenu  # Instalar dependencias

## Instalación
#⚡ Instalación rápida:
git clone https://github.com/omescribe/LCHdotfiles.git ~/dotfiles && \
mkdir -p ~/.config/{herbstluftwm,tint2,plank/dock1/launchers,jgmenu} && \
cp -r ~/dotfiles/* ~/.config/ && \
chmod +x ~/.config/herbstluftwm/autostart && \
herbstclient reload && plank & jgmenu &**

#Instalación Larga
```bash
# Clonar repositorio
git clone https://github.com/omescribe/LCHdotfiles.git ~/dotfiles

# Crear directorio de configuración si no existe
mkdir -p ~/.config/herbstluftwm ~/.config/tint2 ~/.config/plank/dock1/launchers ~/.config/jgmenu

# Copiar configuraciones
cp -r ~/dotfiles/herbstluftwm/* ~/.config/herbstluftwm/
cp -r ~/dotfiles/tint2/* ~/.config/tint2/
cp -r ~/dotfiles/plank/dock1/launchers/* ~/.config/plank/dock1/launchers/
cp -r ~/dotfiles/jgmenu/* ~/.config/jgmenu/

# Dar permisos de ejecución (si es necesario)
chmod +x ~/.config/herbstluftwm/autostart

# Reiniciar servicios
herbstclient reload
killall -SIGUSR1 tint2
killall plank && plank &
killall jgmenu && jgmenu &

# Restaurar configs (nueva instalación)
cd ~/dotfiles && ./restore.sh  # Ejecuta después de instalar dependencias


# Tip: Clona y ejecuta restore.sh para actualizar configuraciones

### Características:
1. **Extremamente compacto** - Solo lo esencial
2. **Código listo para copiar** - Bloques autónomos
3. **Instalación en 1 paso** - Usa `&&` para encadenar comandos
4. **Notas visuales** - Emojis y formato minimalista

¡Así cualquiera puede instalarlo con solo copiar 2-3 bloques de código! 🚀
# ¡Listo! Tus configuraciones estarán restauradas.
