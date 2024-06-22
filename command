ffmpeg -i sample.mp4 -codec:v libx264 -codec:a aac -hls_time 10 -hls_playlist_type vod -start_number 1 -hls_segment_filename outputs/segment%03d.ts outputs/index.m3u8


ffmpeg -i input.mp4  -codec:v libx264 -codec:a aac -hls_time 10 -hls_playlist_type vod -hls_segment_filename "${outputPath}/segment%03d.ts" -start_number 0 ${hlsPath}