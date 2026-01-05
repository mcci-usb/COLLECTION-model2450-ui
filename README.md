# COLLECTION-Model2450 UI

This collection of repositories is used for building `Model2450 UI`for MCCI USB Switches. Complete release are also available [here](https://github.com/mcci-usb/COLLECTION-model2450-ui/releases/).

**Contents:**
<!--
  This TOC uses the VS Code markdown TOC extension AlanWalk.markdown-toc.
  We strongly recommend updating using VS Code, the markdown-toc extension and the
  bierner.markdown-preview-github-styles extension. Note that if you are using
  VS Code 1.29 and Markdown TOC 1.5.6, https://github.com/AlanWalk/markdown-toc/issues/65
  applies -- you must change your line-ending to some non-auto value in Settings>
  Text Editor>Files.  `\n` works for me.
-->
<!-- markdownlint-disable MD033 MD004 -->
<!-- markdownlint-capture -->
<!-- markdownlint-disable -->
<!-- TOC depthFrom:2 updateOnSave:true -->

- [Introduction](#introduction)
- [Installing Sources](#installing-sources)
- [Prerequisites for running or building](#prerequisites-for-running-or-building)
- [Interpret python source](#interpret-python-source)

- [Model2450 UI API Library](#model2450-ui-api-library)
  - [How to use the package](#how-to-use-the-package)
- [Model2450 UI Exe maker](#model2450-ui-exe-maker)
- [Application Installer creation](#application-installer-creation)
- [Application Installation steps](#application-installation-steps)
  - [Windows Installation Document](#windows-installation-document)
- [Application release procedure](#application-release-procedure)
- [Release History](#release-history)
- [Meta](#meta)
  - [Copyright and License](#copyright-and-license)

<!-- /TOC -->
<!-- markdownlint-restore -->
<!-- Due to a bug in Markdown TOC, the table is formatted incorrectly if tab indentation is set other than 4. Due to another bug, this comment must be *after* the TOC entry. -->

## Introduction

This repository is collection of build environement for [Model2450 UI](https://github.com/mcci-usb/Model2450UI).

## Installing Sources

<strong>From github.mcci.com</strong>

Clone the release tag repository from MCCI's github server using the command:

```shell
git clone --recursive https://github.com/mcci-usb/COLLECTION-Model2450UI-ui.git --branch <tag_name> --single-branch
```

For an example - Cloning for the release tag 'v1.0.0', replace the <tag_name> with v1.0.0 

Then change directories to the top level of the cloned repository.

## Prerequisites for running or building

<strong>On Windows:</strong>

Development environment

* OS - Windows 10 64 bit
* Python - 3.13.5
* wxpython - 4.2.3
* pyserial - 3.5
* pyinstaller - 4.7
* matplotlib - 3.10.3

Download [python3.13](https://www.python.org/ftp/python/3.13.0/python-3.13.0-amd64.exe) and install

```shell
pip install wxpython
pip install pyserial
pip install matplotlib
pip install pyinstaller
```

<strong>On Windows:</strong>

```shell
python main.py
```

## Model2450 UI API Library

`model2450lib` api is a python library this library intract with `Model2450 UI`.
download or clone the repository from [here](https://github.com/mcci-usb/Model2450).

```shell
pip install .
```

Please navigate to dist/ directory and you will find the files .egg file. Example: Model2450 UIapi-1.0.0-py3.7.egg

### How to use the package

here provide the REAMDME.md information about Model2450 UI lib please follow the instrunctions [README](https://github.com/mcci-usb/COLLECTION-model2450-ui/blob/main/README.md)

## Model2450 UI Exe maker

EXE is a file extension for an executable file format. It makes distributing Model2450 UI UI much easier. The exe produced by PyInstaller is standalone.

<strong>On Windows:</strong>

Run `pyinstaller` Cmd in `exeScript` directory.

```shell
pyinstaller Model2450 UI-Windows.spec
```

The executable 'Model2450 UI' show up in `exeScriptdir/dist/Model2450 UI/`.

## Application Installer creation

<strong>On Windows:</strong>

Download [Inno Setup Compiler](https://jrsoftware.org/isdl.php#stable) and install

Run the Inno Setup Script file 'Model2450 UI-Windows' which is in `destdir/installerScript/`.

The App Installer 'Model2450 UI-<ver tag>-windows-installer' show up in `destdir/AppInstaller/`.

<strong>On Windows:</strong>

Create a release directory with release version `MCCI-Model2450-UI-<ver tag>-Windows-Installer`

Move the App Installer 'Model2450 UI-<ver tag>-windows-installer' into the release directory and zip (compress)
the name of zipped folder should be  `MCCI-Model2450-UI-<ver tag>-Windows-Installer.zip`.


## Release History
- v2.1.0 Release Model 2450 UI
    - [#10 update firmware model](https://github.com/mcci-usb/model2450-ui/pull/11/commits/fb396a0474e582a45cbda59f6b3952b7c6e73ef9)

- v2.0.0 Release Model 2450 UI

    -  [#4 adding plotting for stream ](https://github.com/mcci-usb/model2450-ui/commit/d837fcad54a1a84dd0a923c8f14cc0e69c29011c)
    -  [#6 Model2450 search](https://github.com/mcci-usb/model2450-ui/commit/e47b86699ee8f850378dfbb29ad00de6c4a3fdc9)
    - [#7 Add Timestampe](https://github.com/mcci-usb/model2450-ui/commit/cb856f3cb22b2ad906e27d251c203b86fca10121)
- v1.0.0 initial release of Model2450 UI UI

  - Initial Release

## Meta

### Copyright and License

Except as explicitly noted, content created by MCCI in this repository tree is copyright (C) 2021, MCCI Corporation.
  
The Model2450 UI UI is released under the terms of the attached [GNU General Public License, version 2](./LICENSE.md). `LICENSE.md` is taken directly from the [FSF website](http://www.gnu.org/licenses/old-licenses/gpl-2.0.md).

Commercial licenses and commercial support are available from MCCI Corporation.

Git submodules are subject to their own copyrights and licenses; however overall collection is a combined work, and is copyrighted and subject to the overall license.

### Support Open Source Hardware and Software

MCCI invests time and resources providing this open source code, please support MCCI and open-source hardware by purchasing products from MCCI and other open-source hardware/software vendors!

For information about MCCI's products, please visit [store.mcci.com](https://store.mcci.com/).

### Trademarks

MCCI and MCCI Catena are registered trademarks of MCCI Corporation. All other marks are the property of their respective owners.
