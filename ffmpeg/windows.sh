# https://andreyv.ru/ffmpeg-bystrejj-eshhe-bystree.html

./ffmpeg.exe -codecs

# Перед входным параметром - кодек декодирования
# Перед выходным - кодек кодирования

# GPU (Nvidia)
#  -hwaccel cuvid
./ffmpeg.exe -vcodec "h264_cuvid" -i "/c/ffmpeg/bin/1.mp4" -vf "scale=iw/2:ih/2" -vcodec "h264_nvenc" -threads 1 -acodec copy "res.mp4" -y
./ffmpeg.exe -vcodec "h264_cuvid" -i "/c/ffmpeg/bin/1.mp4" -vf "scale=iw/2:ih/2" -vcodec "hevc_nvenc" -threads 1 -acodec copy "res.mp4" -y

# GPU (Nvidia + Intel)
./ffmpeg.exe -vcodec "h264_cuvid" -i "/c/ffmpeg/bin/1.mp4" -init_hw_device qsv:hw -vcodec "h264_qsv" -vf "scale=iw/2:ih/2" -acodec copy "res.mp4" -y
./ffmpeg.exe -i "/c/ffmpeg/bin/1.mp4" -init_hw_device qsv:hw -vcodec "h264_qsv" -vf "scale=iw/2:ih/2" -acodec copy "res.mp4" -y
./ffmpeg.exe -vcodec "h264_cuvid" -i "/c/ffmpeg/bin/1.mp4" -vf "scale=iw/2:ih/2" -vcodec "libx264" -acodec copy "res.mp4" -y

# CPU
./ffmpeg.exe -vcodec "h264" -i "/c/ffmpeg/bin/1.mp4" -vf "scale=iw/2:ih/2" "res.mp4" -y
./ffmpeg.exe -vcodec "h264" -i "/c/ffmpeg/bin/1.mp4" -vf "scale=iw/2:ih/2" -vcodec "libx264" "res.mp4" -y




./ffmpeg.exe -vcodec "h264_qsv" -vf "scale=iw/2:ih/2" -i "/c/ffmpeg/bin/1.mp4" "res.mp4" -y
 
./ffmpeg.exe -vcodec "h264_qsv" -i "/c/ffmpeg/bin/1.mp4" "res.mp4" -y

./ffmpeg.exe -c:v "h264" -vcodec "h264_nvenc1" -i "/c/ffmpeg/bin/1.mp4" -vf "scale=iw/2:ih/2" "res.mp4" -y
./ffmpeg.exe -vcodec "h264_nvenc1" -i "/c/ffmpeg/bin/1.mp4" -vf "scale=iw/2:ih/2" "res.mp4" -y


