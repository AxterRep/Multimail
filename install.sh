#!/bin/bash

echo "Instalando Multimail..."

# Dar permisos al script principal
chmod +x "$(pwd)/generar.sh"

# Crear el archivo .desktop automáticamente
cat > ~/.local/share/applications/Multimail.desktop << EOF
[Desktop Entry]
Name=Multimail
Comment=Generador de Correos
Exec=bash -c "$(pwd)/generar.sh; read"
Terminal=true
Type=Application
Icon=$(pwd)/icon.png
Categories=Tools;
EOF

# Copiar al escritorio en español o inglés
cp ~/.local/share/applications/Multimail.desktop ~/Escritorio/ 2>/dev/null || cp ~/.local/share/applications/Multimail.desktop ~/Desktop/ 2>/dev/null

# Dar permisos
chmod +x ~/.local/share/applications/Multimail.desktop
chmod +x ~/Escritorio/Multimail.desktop 2>/dev/null || chmod +x ~/Desktop/Multimail.desktop 2>/dev/null

echo "Listo! Ya puedes usar Multimail desde el escritorio."
