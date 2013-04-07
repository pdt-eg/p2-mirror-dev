#!/bin/sh

cd .. && git clone https://github.com/pulse00/Composer-Eclipse-Plugin.git
cd Composer-Eclipse-Plugin && git submodule init && git submodule update
cd .. && git clone https://github.com/pdt-eg/Core-Plugin PEX-Core 

