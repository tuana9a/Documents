# install python from source missing ssl as fuck

install python from source, then after install then

```bash
wget https://www.python.org/ftp/python/3.6.13/Python-3.6.13.tgz
```

```bash
tar xzf Python-3.6.13.tgz
```

```bash
cd python/Python-3.6.13/
```

```bash
./configure --prefix=/opt/python-3.6.13
```

```bash
make
```

```bash
make install
```

then this happen

```text
Python build finished, but the necessary bits to build these modules were not found:
_bsddb             _sqlite3           _tkinter
bsddb185           dbm                dl
gdbm               imageop            sunaudiodev

To find the necessary bits, look in setup.py in detect_modules() for the module's name.
```

these problems happens because of missing system library for building python

so just need to install these dependencies

`libssl-dev`

```bash
sudo apt install libssl-dev
```