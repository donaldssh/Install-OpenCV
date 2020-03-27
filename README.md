# OpenCV 4 for Arch based Linux distros

### Installation

Dillinger requires [Node.js](https://nodejs.org/) v4+ to run.

Install dependecies, OpenGL extensions for GTK+ , hdf5 and vtk:

```sh
$  sudo pacman -S gtkglext hdf5 vtk
```

Install build-essential equivalent in Arch Linux - base-devel, and pkg-config:

```sh
$  sudo pacman -S base-devel pkg-config
```

Install OpenCV and OpenCV Samples:

```sh
$   sudo pacman -S opencv opencv-samples
```

Check the version of OpenCV:
```sh
$   pkg-config --modversion opencv4 
```
Locate pkgconfig and set the pkg-config path in /etc/bash.bashrc:

```sh
$   sudo echo "export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/lib/pkgconfig"  >>  /etc/bash.bashrc
```

Write a config file that helps ldconfig locate the OpenCV libraries:
```sh
$   sudo echo "/usr/include/opencv4" >> /etc/ld.so.conf.d/opencv4.conf
```
Link:
```sh
$   sudo ldconfig -v
```

### Compiling with Makefile

In the same directory of the .cpp create a file called Makefile with the following code:

```makefile
CFLAGS = `pkg-config --cflags opencv4`
LIBS = `pkg-config --libs opencv4`

% : %.cpp
	g++ $(CFLAGS) $(LIBS) -o $@ $<
```

To compile:
```sh
$ make program-name
```
To run:
```sh
$ ./progr
