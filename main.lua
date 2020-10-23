io.stdout:setvbuf("no")

-- updating more stuf.


function love.load()
-- loads once at launch

	x = 5
	y = 5
	r = 0
	viewW = 1600
	viewH= 1200

	love.window.setMode(viewW,viewH,{resizable=false, vsync=false})
	love.window.setTitle('Sal Video Game - Pixel Art')
	love.graphics.setBackgroundColor(0,0,0)


	love.graphics.print("Hello", 400, 300, 0)
	
	math.randomseed(os.time())
	computer = math.random(1,20)
	player = math.random(1,20)


	--riley = love.graphics.newImage("D:\\Dropbox\\DevProj\\RpiLuaV01\\img\\Rileyv02-0001.png")
	riley = love.graphics.newImage("/img/Rileyv02-0001.png")
	--love.graphics.draw(riley, 50, 50)

end



--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function love.draw()
	-- main loop 	

	love.graphics.draw(riley, x, y, r, 2, 2)

end

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

function love.update(dt)
	--print(dt)
	--x = x+10 * dt
	--y = y+10 * dt


	if love.keyboard.isDown("up") then   --up
		y = y - 2
	elseif love.keyboard.isDown("down") then --down
		y = y + 2
	elseif love.keyboard.isDown("left") then -- left
		x = x - 2
	elseif love.keyboard.isDown("right") then -- right
		x = x + 2	
	end	


end

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function love.keypressed(k)
	if k == "r" then   --rotate
		r = r + 1
	elseif k == 'e' then
	    r = 0
	end	
end

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function rileyMoveFixed()
	for i=1, 5 do
		x = x + 100
		y = y + 100
		love.graphics.draw(riley, x, y)
	end
end

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function doStuff()
    
	love.graphics.draw(riley, 50, 50)

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