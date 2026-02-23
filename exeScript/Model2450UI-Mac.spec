# -*- mode: python ; coding: utf-8 -*-
block_cipher = None

a = Analysis(
    ['../model2450-ui/src/main.py'],
    pathex=['../model2450-ui/src'],
    binaries=[],
    datas=[
        ('../model2450-ui/src/icons', 'icons')
    ],
    hiddenimports=[],
    hookspath=[],
    runtime_hooks=[],
    excludes=[],
    cipher=block_cipher,
    noarchive=False
)

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
    icon='../model2450-ui/src/icons/mcci_logo.icns'
)

app = BUNDLE(
    exe,
    name='Model2450.app',
    icon='../model2450-ui/src/icons/mcci_logo.icns',
    bundle_identifier=None
)
