# Setup v4l2loopback and snd-aloop for DroidCam
droidcam-setup RESOLUTION="prompt":
    #!/usr/bin/bash
    source /usr/lib/ujust/ujust.sh
    # Ask the user which resolution they want
    RESOLUTION={{ RESOLUTION }}
    RESOLUTIONS='
        640x480
        1280x720
        1920x1080
    '
    if [ "$RESOLUTION" == "prompt" ]; then
      echo "Video resolution"
      RESOLUTION=$(Choose $RESOLUTIONS)
    fi
    # Setup v4l2loopback and snd-aloop
    sudo modprobe v4l2loopback exclusive_caps=1
    v4l2loopback-ctl set-caps /dev/video "YU12:$RESOLUTION"
    sudo modprobe snd-aloop
