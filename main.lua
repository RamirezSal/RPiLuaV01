io.stdout:setvbuf("no")



function love.load()
-- loads once at launch

	viewW = 800
	viewH= 600

	love.window.setMode(viewW,viewH,{resizable=false, vsync=false})
	love.window.setTitle('Sal Video Game')
	love.graphics.setBackgroundColor(0,0,0)


	love.graphics.print("Hello", 400, 300, 0)
	
	math.randomseed(os.time())
	computer = math.random(1,20)
	player = math.random(1,20)

end



--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function love.draw()
-- main loop 
    

	if player > computer then
		love.graphics.printf("Player wins!", 0,
		viewH*0.5,viewW*0.5, 'center')
		print("Player wins!")
	else
		love.graphics.printf("Computer wins!", 0,
		viewH*0.5,viewW*0.5, 'center')
		print("Computer wins!")
	end

end


--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function randomSetup()
	math.randomseed(os.time())
	player = math.random(1,20)
	computer = math.random(1,20)

	return(player)
end

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function drawMisc()
	
	love.graphics.print("Hello World, I can write a game", 400, 500)
	love.graphics.print(os.time(), 300, 200)

	--math.randomseed(os.time())
	myVarRandom = math.random(1, 20)
	love.graphics.print(myVarRandom, 150, 100, 0)

	myVarTime = os.time()
	myVarTimeMod = os.time() % 10
	love.graphics.print(myVarTime, 100, 100, 45)
	love.graphics.print(myVarTimeMod, 130, 100, 90)
end