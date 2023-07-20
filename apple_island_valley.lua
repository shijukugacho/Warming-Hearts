--Warming Hearts--

--Define a variable to hold how many hearts have been warmed
local warmedHearts = 0
 
-- Define a function to warm the hearts of everyone
function warmHearts()
    warmedHearts = warmedHearts + 1
    print("We’ve warmed ".. warmedHearts .." hearts!")
end
 
-- Define a function to cool down the hearts
function coolHearts()
    warmedHearts = warmedHearts - 1
    print("We’ve cooled down ".. warmedHearts .." hearts :(")
end
 
-- Define a function to get the current number of hearts warmed
function getWarmedHearts()
    return warmedHearts
end
 
-- Main function that will be called periodically
function update()
    -- Warm a heart every second
    warmHearts()
    -- Cool a heart every 5 seconds
    if warmedHearts % 5 == 0 then
        coolHearts()
    end
end
 
-- Call the update function every 1000ms
function love.update(dt)
    update()
end
 
-- Set the background color to be pink
function love.draw()
    love.graphics.setBackgroundColor(1, 0, 1)
end
 
-- Define a function to draw hearts to the screen
function love.draw()
    for i = 1, warmedHearts do
        love.graphics.setColor(1, 0, 0)
        love.graphics.rectangle(
            'fill', 
            50 + (i * 50),
            love.graphics.getHeight()/2,
            40, 40, 10
        )
    end
end