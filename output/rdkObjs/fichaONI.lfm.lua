require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmONI()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", obj.setNodeObject);

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setDataType("br.com.koshiverso.oni.sheet");
    obj:setFormType("sheetTemplate");
    obj:setTitle("ONI");
    obj:setName("frmONI");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1620);
    obj.rectangle1:setHeight(1200);
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setSRC("imagens/ficha.png");
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(800);
    obj.image1:setHeight(1200);
    obj.image1:setStyle("stretch");
    obj.image1:setName("image1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle1);
    obj.edit1:setField("level");
    obj.edit1:setLeft(128);
    obj.edit1:setTop(80);
    obj.edit1:setWidth(80);
    obj.edit1:setHeight(30);
    obj.edit1:setTransparent(true);
    obj.edit1:setFontSize(25);
    obj.edit1:setFontColor("#2b1a12");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setFontFamily("Yu Mincho");
    obj.edit1:setName("edit1");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.rectangle1);
    obj.edit2:setField("ca");
    obj.edit2:setLeft(285);
    obj.edit2:setTop(89);
    obj.edit2:setWidth(60);
    obj.edit2:setHeight(30);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(25);
    obj.edit2:setFontColor("#2b1a12");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setFontFamily("Yu Mincho");
    obj.edit2:setName("edit2");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.rectangle1);
    obj.edit3:setField("nome");
    obj.edit3:setLeft(130);
    obj.edit3:setTop(146);
    obj.edit3:setWidth(280);
    obj.edit3:setHeight(25);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(18);
    obj.edit3:setFontColor("#2b1a12");
    obj.edit3:setFontFamily("Arial");
    obj.edit3:setName("edit3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.rectangle1);
    obj.edit4:setField("jogador");
    obj.edit4:setLeft(150);
    obj.edit4:setTop(186);
    obj.edit4:setWidth(270);
    obj.edit4:setHeight(25);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(18);
    obj.edit4:setFontColor("#2b1a12");
    obj.edit4:setFontFamily("Arial");
    obj.edit4:setName("edit4");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.rectangle1);
    obj.image2:setField("fotoPersonagem");
    obj.image2:setLeft(47);
    obj.image2:setTop(245);
    obj.image2:setWidth(305);
    obj.image2:setHeight(430);
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setName("image2");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle1);
    obj.edit5:setField("altura");
    obj.edit5:setLeft(460);
    obj.edit5:setTop(243);
    obj.edit5:setWidth(80);
    obj.edit5:setHeight(25);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(16);
    obj.edit5:setFontColor("#2b1a12");
    obj.edit5:setName("edit5");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.rectangle1);
    obj.edit6:setField("peso");
    obj.edit6:setLeft(635);
    obj.edit6:setTop(241);
    obj.edit6:setWidth(100);
    obj.edit6:setHeight(25);
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(16);
    obj.edit6:setFontColor("#2b1a12");
    obj.edit6:setName("edit6");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.rectangle1);
    obj.edit7:setField("classe");
    obj.edit7:setLeft(451);
    obj.edit7:setTop(282);
    obj.edit7:setWidth(120);
    obj.edit7:setHeight(25);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(16);
    obj.edit7:setFontColor("#2b1a12");
    obj.edit7:setName("edit7");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.rectangle1);
    obj.edit8:setField("idade");
    obj.edit8:setLeft(645);
    obj.edit8:setTop(280);
    obj.edit8:setWidth(80);
    obj.edit8:setHeight(25);
    obj.edit8:setTransparent(true);
    obj.edit8:setFontSize(16);
    obj.edit8:setFontColor("#2b1a12");
    obj.edit8:setName("edit8");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.rectangle1);
    obj.edit9:setField("profissao");
    obj.edit9:setLeft(480);
    obj.edit9:setTop(315);
    obj.edit9:setWidth(270);
    obj.edit9:setHeight(25);
    obj.edit9:setTransparent(true);
    obj.edit9:setFontSize(16);
    obj.edit9:setFontColor("#2b1a12");
    obj.edit9:setName("edit9");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.rectangle1);
    obj.edit10:setField("forca");
    obj.edit10:setLeft(616);
    obj.edit10:setTop(413);
    obj.edit10:setWidth(40);
    obj.edit10:setHeight(25);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(18);
    obj.edit10:setFontColor("#2b1a12");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setName("edit10");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.rectangle1);
    obj.edit11:setField("forcaMod");
    obj.edit11:setLeft(695);
    obj.edit11:setTop(415);
    obj.edit11:setWidth(40);
    obj.edit11:setHeight(25);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(16);
    obj.edit11:setFontColor("#2b1a12");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setReadOnly(true);
    obj.edit11:setName("edit11");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.rectangle1);
    obj.edit12:setField("agilidade");
    obj.edit12:setLeft(616);
    obj.edit12:setTop(458);
    obj.edit12:setWidth(40);
    obj.edit12:setHeight(25);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(18);
    obj.edit12:setFontColor("#2b1a12");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setName("edit12");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.rectangle1);
    obj.edit13:setField("agilidadeMod");
    obj.edit13:setLeft(697);
    obj.edit13:setTop(460);
    obj.edit13:setWidth(40);
    obj.edit13:setHeight(25);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(16);
    obj.edit13:setFontColor("#2b1a12");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setReadOnly(true);
    obj.edit13:setName("edit13");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.rectangle1);
    obj.edit14:setField("percepcao");
    obj.edit14:setLeft(616);
    obj.edit14:setTop(503);
    obj.edit14:setWidth(40);
    obj.edit14:setHeight(25);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(18);
    obj.edit14:setFontColor("#2b1a12");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setName("edit14");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.rectangle1);
    obj.edit15:setField("percepcaoMod");
    obj.edit15:setLeft(695);
    obj.edit15:setTop(505);
    obj.edit15:setWidth(40);
    obj.edit15:setHeight(25);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(16);
    obj.edit15:setFontColor("#2b1a12");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setReadOnly(true);
    obj.edit15:setName("edit15");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.rectangle1);
    obj.edit16:setField("inteligencia");
    obj.edit16:setLeft(616);
    obj.edit16:setTop(550);
    obj.edit16:setWidth(40);
    obj.edit16:setHeight(25);
    obj.edit16:setTransparent(true);
    obj.edit16:setFontSize(18);
    obj.edit16:setFontColor("#2b1a12");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setName("edit16");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.rectangle1);
    obj.edit17:setField("inteligenciaMod");
    obj.edit17:setLeft(695);
    obj.edit17:setTop(552);
    obj.edit17:setWidth(40);
    obj.edit17:setHeight(25);
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(16);
    obj.edit17:setFontColor("#2b1a12");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setReadOnly(true);
    obj.edit17:setName("edit17");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.rectangle1);
    obj.edit18:setField("carisma");
    obj.edit18:setLeft(616);
    obj.edit18:setTop(595);
    obj.edit18:setWidth(40);
    obj.edit18:setHeight(25);
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(18);
    obj.edit18:setFontColor("#2b1a12");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setName("edit18");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.rectangle1);
    obj.edit19:setField("carismaMod");
    obj.edit19:setLeft(695);
    obj.edit19:setTop(597);
    obj.edit19:setWidth(40);
    obj.edit19:setHeight(25);
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(16);
    obj.edit19:setFontColor("#2b1a12");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setReadOnly(true);
    obj.edit19:setName("edit19");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.rectangle1);
    obj.edit20:setField("constituicao");
    obj.edit20:setLeft(616);
    obj.edit20:setTop(640);
    obj.edit20:setWidth(40);
    obj.edit20:setHeight(25);
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(18);
    obj.edit20:setFontColor("#2b1a12");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setName("edit20");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.rectangle1);
    obj.edit21:setField("constituicaoMod");
    obj.edit21:setLeft(695);
    obj.edit21:setTop(642);
    obj.edit21:setWidth(40);
    obj.edit21:setHeight(25);
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(16);
    obj.edit21:setFontColor("#2b1a12");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setReadOnly(true);
    obj.edit21:setName("edit21");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.rectangle1);
    obj.edit22:setField("ienes");
    obj.edit22:setLeft(467);
    obj.edit22:setTop(703);
    obj.edit22:setWidth(60);
    obj.edit22:setHeight(25);
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(16);
    obj.edit22:setFontColor("#2b1a12");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setName("edit22");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.rectangle1);
    obj.edit23:setField("vidaAtual");
    obj.edit23:setLeft(611);
    obj.edit23:setTop(705);
    obj.edit23:setWidth(50);
    obj.edit23:setHeight(25);
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(16);
    obj.edit23:setFontColor("#2b1a12");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setName("edit23");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.rectangle1);
    obj.edit24:setField("vidaMax");
    obj.edit24:setLeft(688);
    obj.edit24:setTop(705);
    obj.edit24:setWidth(50);
    obj.edit24:setHeight(25);
    obj.edit24:setTransparent(true);
    obj.edit24:setFontSize(16);
    obj.edit24:setFontColor("#2b1a12");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setName("edit24");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.rectangle1);
    obj.edit25:setField("d4");
    obj.edit25:setLeft(430);
    obj.edit25:setTop(757);
    obj.edit25:setWidth(58);
    obj.edit25:setHeight(25);
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(18);
    obj.edit25:setFontColor("#2b1a12");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setName("edit25");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.rectangle1);
    obj.edit26:setField("d6");
    obj.edit26:setLeft(563);
    obj.edit26:setTop(757);
    obj.edit26:setWidth(58);
    obj.edit26:setHeight(25);
    obj.edit26:setTransparent(true);
    obj.edit26:setFontSize(18);
    obj.edit26:setFontColor("#2b1a12");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setName("edit26");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.rectangle1);
    obj.edit27:setField("d20");
    obj.edit27:setLeft(695);
    obj.edit27:setTop(757);
    obj.edit27:setWidth(58);
    obj.edit27:setHeight(25);
    obj.edit27:setTransparent(true);
    obj.edit27:setFontSize(18);
    obj.edit27:setFontColor("#2b1a12");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setName("edit27");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.rectangle1);
    obj.edit28:setField("maoEsquerda");
    obj.edit28:setLeft(50);
    obj.edit28:setTop(740);
    obj.edit28:setWidth(135);
    obj.edit28:setHeight(25);
    obj.edit28:setTransparent(true);
    obj.edit28:setFontSize(16);
    obj.edit28:setFontColor("#2b1a12");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setName("edit28");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.rectangle1);
    obj.edit29:setField("maoDireita");
    obj.edit29:setLeft(223);
    obj.edit29:setTop(740);
    obj.edit29:setWidth(120);
    obj.edit29:setHeight(25);
    obj.edit29:setTransparent(true);
    obj.edit29:setFontSize(16);
    obj.edit29:setFontColor("#2b1a12");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setName("edit29");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.rectangle1);
    obj.edit30:setField("armadura");
    obj.edit30:setLeft(50);
    obj.edit30:setTop(832);
    obj.edit30:setWidth(297);
    obj.edit30:setHeight(25);
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(16);
    obj.edit30:setFontColor("#2b1a12");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setName("edit30");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.rectangle1);
    obj.textEditor1:setField("background");
    obj.textEditor1:setLeft(25);
    obj.textEditor1:setTop(925);
    obj.textEditor1:setWidth(328);
    obj.textEditor1:setHeight(250);
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setFontSize(15);
    obj.textEditor1:setFontColor("#2b1a12");
    obj.textEditor1:setName("textEditor1");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.rectangle1);
    obj.textEditor2:setField("itens");
    obj.textEditor2:setLeft(400);
    obj.textEditor2:setTop(835);
    obj.textEditor2:setWidth(340);
    obj.textEditor2:setHeight(120);
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setFontSize(15);
    obj.textEditor2:setFontColor("#2b1a12");
    obj.textEditor2:setName("textEditor2");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.rectangle1);
    obj.textEditor3:setField("habilidades");
    obj.textEditor3:setLeft(400);
    obj.textEditor3:setTop(1015);
    obj.textEditor3:setWidth(340);
    obj.textEditor3:setHeight(140);
    obj.textEditor3:setTransparent(true);
    obj.textEditor3:setFontSize(15);
    obj.textEditor3:setFontColor("#2b1a12");
    obj.textEditor3:setName("textEditor3");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.rectangle1);
    obj.image3:setSRC("imagens/pagina2.png");
    obj.image3:setLeft(820);
    obj.image3:setTop(0);
    obj.image3:setWidth(800);
    obj.image3:setHeight(1200);
    obj.image3:setStyle("stretch");
    obj.image3:setName("image3");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.rectangle1);
    obj.textEditor4:setField("anotacoes");
    obj.textEditor4:setLeft(860);
    obj.textEditor4:setTop(280);
    obj.textEditor4:setWidth(720);
    obj.textEditor4:setHeight(860);
    obj.textEditor4:setTransparent(true);
    obj.textEditor4:setFontSize(18);
    obj.textEditor4:setFontColor("#2b1a12");
    obj.textEditor4:setName("textEditor4");

    obj._e_event0 = obj.edit10:addEventListener("onChange",
        function ()
            local valor = tonumber(sheet.forca) or 10
                    local mod = valor - 10
            
                    if mod > 0 then
                        sheet.forcaMod = "+" .. mod
                    else
                        sheet.forcaMod = tostring(mod)
                    end
        end);

    obj._e_event1 = obj.edit12:addEventListener("onChange",
        function ()
            local valor = tonumber(sheet.agilidade) or 10
                    local mod = valor - 10
            
                    if mod > 0 then
                        sheet.agilidadeMod = "+" .. mod
                    else
                        sheet.agilidadeMod = tostring(mod)
                    end
        end);

    obj._e_event2 = obj.edit14:addEventListener("onChange",
        function ()
            local valor = tonumber(sheet.percepcao) or 10
                    local mod = valor - 10
            
                    if mod > 0 then
                        sheet.percepcaoMod = "+" .. mod
                    else
                        sheet.percepcaoMod = tostring(mod)
                    end
        end);

    obj._e_event3 = obj.edit16:addEventListener("onChange",
        function ()
            local valor = tonumber(sheet.inteligencia) or 10
                    local mod = valor - 10
            
                    if mod > 0 then
                        sheet.inteligenciaMod = "+" .. mod
                    else
                        sheet.inteligenciaMod = tostring(mod)
                    end
        end);

    obj._e_event4 = obj.edit18:addEventListener("onChange",
        function ()
            local valor = tonumber(sheet.carisma) or 10
                    local mod = valor - 10
            
                    if mod > 0 then
                        sheet.carismaMod = "+" .. mod
                    else
                        sheet.carismaMod = tostring(mod)
                    end
        end);

    obj._e_event5 = obj.edit20:addEventListener("onChange",
        function ()
            local valor = tonumber(sheet.constituicao) or 10
                    local mod = valor - 10
            
                    if mod > 0 then
                        sheet.constituicaoMod = "+" .. mod
                    else
                        sheet.constituicaoMod = tostring(mod)
                    end
        end);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmONI()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmONI();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmONI = {
    newEditor = newfrmONI, 
    new = newfrmONI, 
    name = "frmONI", 
    dataType = "br.com.koshiverso.oni.sheet", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "ONI", 
    description=""};

frmONI = _frmONI;
Firecast.registrarForm(_frmONI);
Firecast.registrarDataType(_frmONI);

return _frmONI;
