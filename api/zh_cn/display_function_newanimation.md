
## display.newAnimation()

> display.newAnimation(frames, time)

create animation

### Example

    display.newAnimation(frames, time)

### Example

    local frames    = display.newFrames("walk_%02d.png", 1, 20)
    local animation = display.newAnimation(frames, 0.5 / 20) -- 0.5s play 20 frames
