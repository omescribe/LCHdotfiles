# LCHdotfiles

## Descripción
Repositorio de configuraciones personales para mi entorno de escritorio en Loc-OS Linux, incluyendo:
- Herbstluftwm (Gestor de ventanas)
- Tint2 (Barra de tareas)
- Plank (Dock)
- Jgmenu 
## Requisitos
- Loc-OS Linux
- Herbstluftwm
- Tint2
- Plank
- Jgmenu

## Instalación
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

### Archivos incluidos:
- `jgmenurc`: Archivo de configuración principal.
- `scripts/`: Scripts personalizados para jgmenu (si los tienes).


---

## Uso del script de restauración (`restore.sh`)

El archivo `restore.sh` permite restaurar automáticamente todas las configuraciones respaldadas en este repositorio. Sigue estos pasos para usarlo:

1. Clona el repositorio:
   ```bash
   git clone https://github.com/omescribe/LCHdotfiles.git ~/dotfiles
   ```

2. Navega al directorio del repositorio:
   ```bash
   cd ~/dotfiles
   ```

3. Haz que el script sea ejecutable:
   ```bash
   chmod +x restore.sh
   ```

4. Ejecuta el script:
   ```bash
   ./restore.sh
   ```

### ¿Qué hace el script?
- Copia las configuraciones de `herbstluftwm`, `tint2`, `plank` y `jgmenu` a sus ubicaciones correctas.
- Reinicia los servicios necesarios para aplicar los cambios.

---

## Restauración en una nueva instalación de Loc-OS Linux

Para restaurar todas las configuraciones en una nueva instalación de Loc-OS Linux:

1. Instala las dependencias necesarias:
   ```bash
   sudo apt install herbstluftwm tint2 plank jgmenu
   ```

2. Clona este repositorio:
   ```bash
   git clone https://github.com/omescribe/LCHdotfiles.git ~/dotfiles
   ```

3. Ejecuta el script de restauración:
   ```bash
   cd ~/dotfiles
   chmod +x restore.sh
   ./restore.sh
   ```

4. ¡Listo! Tus configuraciones estarán restauradas.
