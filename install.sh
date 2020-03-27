#!/bin/bash
sudo pacman -S gtkglext hdf5 vtk
sudo pacman -S base-devel pkg-config
sudo pacman -S opencv opencv-samples
pkg-config --modversion opencv4 
echo "export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/lib/pkgconfig" | sudo tee - append /etc/bash.bashrc
echo '/usr/include/opencv4' | sudo tee --append /etc/ld.so.conf.d/opencv4.conf
sudo ldconfig -v
