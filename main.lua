io.stdout:setvbuf("no")


viewW = 800
viewH= 600

function love.load()
-- loads once at launch
love.window.setMode(viewW,viewH,{resizable=false, vsync=false})
love.window.setTitle('Sal Video Game')
love.graphics.setBackgroundColor(0,0,0)
end



function love.draw()
-- main loop 
    love.graphics.print("Hello World, I can write a game", 400, 500)


	love.graphics.print(os.time(), 300, 200)


	myVarTime = os.time()
	myVarTimeMod = os.time() % 10

	love.graphics.print(myVarTime, 100, 100, 45)
	love.graphics.print(myVarTimeMod, 130, 100, 90)



	math.randomseed(os.time())
	myVarRandom = math.random(1, 20)


	love.graphics.print(myVarRandom, 150, 100, 0)


end


