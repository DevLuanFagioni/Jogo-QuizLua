local composer = require('composer')

local cena = composer.newScene()

function cena:create( event )
	local grupoLoading = self.view

local fonte = native.newFont( 'recursos/fontes/font2.ttf' )

local x, y = display.contentWidth, display.contentHeight
local t = x + y / 2

local degradeFundo = {
	type = 'gradient',
	color1 = { 238/255, 228/255, 215/255 },
	color2 = { 185/255, 153/255, 130/255 },
	direction = 'down'
}

local fundo = display.newRect( grupoLoading, x*0.5,   y*0.5, x, y )
fundo:setFillColor( degradeFundo )

local fundoCirculo = display.newCircle( grupoLoading, x*0.5, y*0.35, t*0.3 )
fundoCirculo:setFillColor( 202/255, 170/255, 144/255 )

local logo = display.newText( grupoLoading, 'LUAN', x*0.5, y*0.30,fonte, t*0.1)

local logo2 = display.newText( grupoLoading, 'FAGIONI', x*0.5, y*0.40,fonte, t*0.1)

local barraFundo = display.newRoundedRect( grupoLoading, x*0.5, y*0.8, x*0.9, y*0.05, t*0.1)

local barra = display.newRoundedRect( grupoLoading, x*0.5, y*0.8, 0, y*0.035, t*0.1)
barra:setFillColor( 185/255, 153/255, 130/255  )

function carregamento()
	local aleatorio = math.random( 4000, 10000 )
	transition.to( barra, {time = aleatorio, width = x*0.85, onComplete = function()
		composer.gotoScene( 'cenas.menu', {time = 300, effect = 'fade'} )
	end} )
end
carregamento()

end
cena:addEventListener( 'create', cena )
return cena