   
# -*- mode: python ; coding: utf-8 -*-
block_cipher = None

added_files = [('..\\model2450-ui\\src\\icons', 'icons')]

a = Analysis(['..\\model2450-ui\\src\\main.py'],
             pathex=['.\\model2450-ui\\src'],
             binaries=[],
             datas=added_files,
             hiddenimports=[],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)
			 
a.datas += [('..\\model2450-ui\\src\\icons\\mcci_logo.ico','\\icons\\mcci_logo.ico', "DATA")]
a.datas += [('..\\model2450-ui\\src\\icons\\mcci_logo.png','\\icons\\mcci_logo.png', "DATA")]
a.datas += [('..\\model2450-ui\\src\\icons\\Color.png','\\icons\\Color.png', "DATA")]
a.datas += [('..\\model2450-ui\\src\\icons\\mcci_logo_about.png','\\icons\\mcci_logo_about.png', "DATA")]


pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts, 
          [],
          exclude_binaries=True,
          name='Model2450UI',
          debug=False,
          bootloader_ignore_signals=False,
          strip=False,
          upx=True,
          console=False,
          disable_windowed_traceback=False,
          target_arch=None,
          codesign_identity=None,
          entitlements_file=None , icon='..\\model2450-ui\\src\\icons\\mcci_logo.ico', version = 'versions.rc')

coll = COLLECT(exe,
               a.binaries,
               a.zipfiles,
               a.datas, 
               strip=False,
               upx=True,
               upx_exclude=[],
               name='Model2450UI',
               onefile=True)
