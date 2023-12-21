# Install prerequisits for OPI Midi functionality
# Make sure python3 and pip are installed
# Make sure apt is updated and we have the latest package lists before we start
# This whole script takes a while on aOPi zero - maybe 30 minutes
# Remember to 'chmod u+x opimidi_setup.sh' tobe able to run this file 
# then 'bash opimidi_setup.sh'

# date
# echo 1. Updating and Upgrade apt packages 
# apt update -y
# apt upgrade -y

# echo 2. Rationalizing Python Version Names
# apt install -y python-is-python3
# apt install -y python-dev-is-python3

# echo 3. Installing OPi.GPIO 
# # Install GPIO support for the orange PI 
# # see https://opi-gpio.readthedocs.io/en/latest 
# # Note: Use GPIO.setmode(GPIO.SUNXI) to use "PA01" style channel naming
# pip3 install --upgrade OPi.GPIO

# echo 4. Installing python3 oled support
# This is a bit long winded, needs python3 graphic and font support for OLED functions
# takes a while on liile OPI zero - grab a coffee
# see https://luma-oled.readthedocs.io/en/latest/software.html
# and https://pillow.readthedocs.io/en/latest/installation.html 
echo 4a. OLED Installing python3-dev if needed
apt install -y python3-dev 
echo 4b. OLED Installing libjpeg-dev zlib1g-dev
apt install -y libjpeg-dev zlib1g-dev
echo 4c. OLED Installing luma.oled
pip3 install --upgrade luma.oled 

echo 5. Installing python-rtmidi
# Note: the rtmidi library needs to be compiled first so good 
# c make environment needs to be present
# Python interface to midi functionality
# Also seemed to need to make sure meson etc installed correctly
# https://pypi.org/project/python-rtmidi/
echo 5a. Installing cmake
apt install -y cmake
echo 5b. Installing build-essential
apt install -y build-essential
echo 5c. Installing libjack & libjack-dev
apt install -y libjack0
apt install -y libjack-dev
echo 5d. Installing latest setuptools
pip3 install --upgrade setuptools
echo 5e. Installing meson-python
pip3 install meson-python meson ninja
echo 5f. Installing python-rtmidi for real
pip3 install --upgrade python-rtmidi 
date