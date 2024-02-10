# Setup v4l2loopback and snd-aloop for DroidCam
droidcam-setup:
    sudo modprobe v4l2loopback exclusive_caps=1
    v4l2loopback-ctl set-caps /dev/video "YU12:640x480"
    sudo modprobe snd-aloop
