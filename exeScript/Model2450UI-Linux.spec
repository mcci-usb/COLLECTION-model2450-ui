# -*- mode: python ; coding: utf-8 -*-

block_cipher = None

a = Analysis(
    ['../model2450-ui/src/main.py'],
    pathex=['../model2450-ui/src'],
    binaries=[],
    datas=[],
    hiddenimports=[],
    hookspath=[],
    runtime_hooks=[],
    excludes=[],
    cipher=block_cipher,
    noarchive=False
)

# ------------------------------------------------------------------
# ICON FILES (separately added)
# Format: (SOURCE , DESTINATION_FOLDER)
# ------------------------------------------------------------------

a.datas += [
    ('../model2450-ui/src/icons/mcci_logo.ico', 'icons'),
    ('../model2450-ui/src/icons/mcci_logo.png', 'icons'),
    ('../model2450-ui/src/icons/Color.png', 'icons'),
    ('../model2450-ui/src/icons/mcci_logo_about.png', 'icons'),
]

# ------------------------------------------------------------------

pyz = PYZ(a.pure, a.zipped_data, cipher=block_cipher)

exe = EXE(
    pyz,
    a.scripts,
    a.binaries,
    a.zipfiles,
    a.datas,
    [],
    name='Model2450UI',
    debug=False,
    strip=False,
    upx=True,
    console=False,
    icon='../model2450-ui/src/icons/mcci_logo.ico'
)