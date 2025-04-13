#!/bin/bash

video="$2"

if [ "$1" == "---video" ]; then
  source virtual/bin/activate
  pip3 install --upgrade yt-dlp
  yt-dlp -o "%(title)s.%(ext)s" --merge-output-format mp4 --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" --no-check-certificate --verbose "$video"; deactivate

elif [ "$1" == "---m4a" ]; then
  source virtual/bin/activate
  pip3 install --upgrade yt-dlp
  yt-dlp -o "%(title)s.%(ext)s" -x --audio-format m4a --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" --no-check-certificate --verbose "$video"; deactivate

elif [ "$1" == "---mp3" ]; then
  source virtual/bin/activate
  pip3 install --upgrade yt-dlp
  yt-dlp -o "%(title)s.%(ext)s" -x --audio-format mp3 --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" --no-check-certificate --verbose "$video"; deactivate

elif [ "$1" == "-h" ]; then
  echo "download_yt.sh ---video [URL]"
  echo "download_yt.sh ---m4a [URL]"
  echo "download_yt.sh ---mp3 [URL]"
fi
