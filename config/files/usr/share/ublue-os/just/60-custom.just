droidcam-setup:

    # setup video
    sudo modprobe v4l2loopback exclusive_caps=1
    v4l2loopback-ctl set-caps /dev/video "YU12:640x480"

    # setup audio
    sudo modprobe snd-aloop
