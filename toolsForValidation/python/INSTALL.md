# EXCELERATE WP2 JSON Schema validation install instructions, Python edition

In order to install the dependencies you need `virtualenv` or `venv`, and `pip`. `pip` is available in many Linux distributions (Ubuntu package `python-pip` and `python3-pip`, CentOS EPEL package `python-pip`), and also as [pip](https://pip.pypa.io/en/stable/) Python package.

- *Python2* Although `virtualenv` is available in some Linux distributions, it is usually installed either standalone (see [this](https://www.dabapps.com/blog/introduction-to-pip-and-virtualenv-python/)), or through `pip`. Next instructions will work on Ubuntu:

  ```bash
  sudo apt-get install python-pip python-dev build-essential
  sudo pip install virtualenv virtualenvwrapper
  ```

- *Python2* The creation and activation of a virtual environment and installation of the dependencies in that environment is done running:

  ```bash
  virtualenv -p python2 .py2env
  source .py2env/bin/activate
  ```
  
- *Python3* `venv` is part of Python 3.3 and later, but in some Linux distributions is available as a separate package (`python3-venv` in Ubuntu, for instance). Next instructions will work on Ubuntu for Python3:
  ```bash
  sudo apt-get install python3-pip python3-venv
  ```

- *Python3* The creation and activation of a virtual environment and installation of the dependencies in that environment is done running:
  ```bash
  python3 -m venv .py3env
  source .py3env/bin/activate
  ```
  
Within the activated environment, the installation of the dependencies is done with next commands:
  ```bash
  pip install --upgrade pip
  pip install -r requirements.txt
  ```
