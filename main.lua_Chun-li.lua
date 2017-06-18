
local Chun_li_vida=100
local Chun_li_velocidade=1
local Chun_li_gravidade=1
local Chun_li_andar=100
local Chun_li_anim_frame = 1
local Chun_li_pos_x = 30
local Chun_li_pos_y = 50
local Chun_li = {}  
local Chun_li_anim_time = 0
local Chun_li_anim_number = {16, 16, 11, 4, 4, 13, 8, 17, 3, 4, 5, 4, 5, 2, 5, 2, 7, 5, 5, 7, 8, 10, 5, 4, 13, 9, 25}
local cl_count = 1
local cl_anim_type = 0


function love.load()
  
  for x = 1, 27 do -- carrega as imagens da animação
    Chun_li[x] = {}
      for y = 1, Chun_li_anim_number[x] do
        Chun_li[x][y]=love.graphics.newImage("Chun-li_" ..cl_count.. ".png")
        cl_count = cl_count+1
        end
      end
  

function love.update(dt)
  
  if love.keyboard.isDown("right") then
    cl_anim_type = 1
    agachado = false
    Chun_li_pos_x = Chun_li_pos_x + (100 * dt) -- movimenta o personagem
    Chun_li_anim_time = Chun_li_anim_time + dt
    
    if Chun_li_anim_time > 0.06 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
    end
    
    if Chun_li_anim_frame > 16 then
      Chun_li_anim_frame = 1
    end
    
  elseif love.keyboard.isDown("left") then
    cl_anim_type = 2
    agachado = false
    Chun_li_pos_x = Chun_li_pos_x + (-100 * dt) -- movimenta o personagem
    
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.06 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
    end
    
    if Chun_li_anim_frame > 16 then
      Chun_li_anim_frame = 1
    end
    
    elseif love.keyboard.isDown("down") then
      cl_anim_type = 16
      agachado = true
      Chun_li_anim_time = Chun_li_anim_time + dt
      if Chun_li_anim_time > 0.3 then -- quando acumular mais de 0.1
        Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
        Chun_li_anim_time = 0
       end
      if Chun_li_anim_frame > 2 then
        Chun_li_anim_frame = 1
      end
    
    elseif love.keyboard.isDown("j") then
      cl_anim_type = 17
    agachado = false
      Chun_li_anim_time = Chun_li_anim_time + dt
      if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
        Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
        Chun_li_anim_time = 0
       end
      if Chun_li_anim_frame > 7 then
        Chun_li_anim_frame = 1
      end
   
    elseif love.keyboard.isDown("k") then
    cl_anim_type = 18
    agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
     end
    if Chun_li_anim_frame > 5 then
      Chun_li_anim_frame = 1
   end
    
     elseif love.keyboard.isDown("l") then
    cl_anim_type = 19
    agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
     end
    if Chun_li_anim_frame > 5 then
      Chun_li_anim_frame = 1
   end
   
    elseif love.keyboard.isDown("b") then
    cl_anim_type = 20
    agachado = true
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
     end
    if Chun_li_anim_frame > 7 then
      Chun_li_anim_frame = 1
   end
    
    elseif love.keyboard.isDown("n") then
    cl_anim_type = 21
    agachado = true
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
     end
    if Chun_li_anim_frame > 8 then
      Chun_li_anim_frame = 1
   end
   
      elseif love.keyboard.isDown("m") then
    cl_anim_type = 22
    agachado = true
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
     end
    if Chun_li_anim_frame > 10 then
      Chun_li_anim_frame = 1
   end
   
     elseif love.keyboard.isDown("i") then
    cl_anim_type = 23
    agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
     end
    if Chun_li_anim_frame > 5 then
      Chun_li_anim_frame = 1
   end
    
     elseif love.keyboard.isDown("o") then
    cl_anim_type = 24
    agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
     end
    if Chun_li_anim_frame > 4 then
      Chun_li_anim_frame = 1
   end
    
    
   elseif love.keyboard.isDown("p") then
   cl_anim_type = 25
     agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
    Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
     Chun_li_anim_time = 0
   end
   if Chun_li_anim_frame > 13 then
    Chun_li_anim_frame = 1
   end
   
   elseif love.keyboard.isDown("z") then
   cl_anim_type = 26
     agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
     Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
    end
   if Chun_li_anim_frame > 9 then
      Chun_li_anim_frame = 1
     end
     
      elseif love.keyboard.isDown("x") then
   cl_anim_type = 27
     agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
     Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
    Chun_li_anim_time = 0
    end
   if Chun_li_anim_frame > 25 then
      Chun_li_anim_frame = 1
    end
    
    elseif love.keyboard.isDown("v") then
    cl_anim_type = 6
     agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
     end
    if Chun_li_anim_frame > 13 then
      Chun_li_anim_frame = 1
   end
    
    elseif love.keyboard.isDown("c") then
    cl_anim_type = 8
     agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
     end
    if Chun_li_anim_frame > 17 then
      Chun_li_anim_frame = 1
   end
    
    elseif love.keyboard.isDown("d") then
    cl_anim_type = 14
     agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.3 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
     end
    if Chun_li_anim_frame > 2 then
      Chun_li_anim_frame = 1
   end
    
  else
    cl_anim_type = 3
    agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.06 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
    end
    if Chun_li_anim_frame > 11 then
      Chun_li_anim_frame = 1
   end
    

end
end
end

function Chun_li_hits(dt)
 
cl_anim_type = 4--Levando hit-caindo.1.0
    agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
    end
    if Chun_li_anim_frame > 4 then
      Chun_li_anim_frame = 1
   end
    
    
    cl_anim_type = 5--Levando hit-caindo.2.0
    agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
    end
    if Chun_li_anim_frame > 4 then
      Chun_li_anim_frame = 1
   end
    
     
    cl_anim_type = 9--Levando hit-agachado.1.0
    agachado = true
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
    end
    if Chun_li_anim_frame > 4 then
      Chun_li_anim_frame = 1
   end

cl_anim_type = 10--Levando hit-em pé.1.0
    agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
    end
    if Chun_li_anim_frame > 5 then
      Chun_li_anim_frame = 1
   end

cl_anim_type = 11--Levando hit-em pé.2.0
    agachado = false
    Chun_li_anim_time = Chun_li_anim_time + dt
    if Chun_li_anim_time > 0.1 then -- quando acumular mais de 0.1
      Chun_li_anim_frame = Chun_li_anim_frame + 1 -- avança para proximo frame
      Chun_li_anim_time = 0
    end
    if Chun_li_anim_frame > 4 then
      Chun_li_anim_frame = 1
   end


end

  function love.draw() -- desenha o personagem usando o indice da animação
    if not agachado then
      love.graphics.draw(Chun_li[cl_anim_type][Chun_li_anim_frame], Chun_li_pos_x, Chun_li_pos_y)
    else
      love.graphics.draw(Chun_li[cl_anim_type][Chun_li_anim_frame], Chun_li_pos_x, Chun_li_pos_y+30, 0, 1, 1)
    end
  
end