#!/bin/bash

cd /usr/local/share/fonts
sudo wget "https://reconassets.blob.core.windows.net/reconglwb/BentonSans-Black_sOT.otf"
sudo wget "https://reconassets.blob.core.windows.net/reconglwb/BentonSans-BlackItalic_sOT.otf"
sudo wget "https://reconassets.blob.core.windows.net/reconglwb/BentonSans-Bold_sOT.otf"
sudo wget "https://reconassets.blob.core.windows.net/reconglwb/BentonSans-BoldItalic_sOT.otf"
sudo wget "https://reconassets.blob.core.windows.net/reconglwb/BentonSans-Book_sOT.otf"
sudo wget "https://reconassets.blob.core.windows.net/reconglwb/BentonSans-Book_sOT.otf"
sudo wget "https://reconassets.blob.core.windows.net/reconglwb/BentonSans-Italic_sOT.otf"
sudo wget "https://reconassets.blob.core.windows.net/reconglwb/BentonSans-Medium_sOT.otf"
sudo wget "https://reconassets.blob.core.windows.net/reconglwb/BentonSans-MediumItalic_sOT.otf"
sudo wget "https://reconassets.blob.core.windows.net/reconglwb/BentonSans-Regular_sOT.otf"
fc-cache -f -v
#sudo apt-get -y install texlive-full
