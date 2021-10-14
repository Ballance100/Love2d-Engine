UI = {Elements={}}
LUI:Setup(true,true,1280,720)

function UI.projectManager()

    for i,v in ipairs(UI.Elements) do

    end


    --project manager main container/Frame
    UI.Elements.proManCon= LUI:newFrame(0,0,love.graphics.getWidth(),love.graphics.getHeight(),{BGColour={.2,.2,.2}})
end

function UI.draw()
    LUI:Draw()
end


return UI