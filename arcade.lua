--
function esperar(n)
  local t0 = os.time()
  while os.time() - t0 < n do 
    -- Aguarda
  end
end


local function CorTexto(cor)
	if cor == "preto" then return "\27[30m"
	elseif cor == "vermelho" then return "\27[31m"
	elseif cor == "verde" then return "\27[32m"
	elseif cor == "amarelo" then return "\27[33m"
	elseif cor == "azul" then return "\27[34m"
	elseif cor == "magenta" then return "\27[35m"
	elseif cor == "ciano" then return "\27[36m"
	elseif cor == "branco" then return "\27[37m"
	else return "" end
end

local function CorTextoFundo(cor)
	if cor == "preto" then return "\27[40m"
	elseif cor == "vermelho" then return "\27[41m"
	elseif cor == "verde" then return "\27[42m"
	elseif cor == "amarelo" then return "\27[43m"
	elseif cor == "azul" then return "\27[44m"
	elseif cor == "magenta" then return "\27[45m"
	elseif cor == "ciano" then return "\27[46m"
	elseif cor == "branco" then return "\27[47m"
	else return "" end
end

local function mostrarTexto(texto, cor, fundo)
	print("\27[2J\27[H") -- Limpa a tela e volta o carro
	print(CorTexto(cor).. CorTextoFundo(fundo)..texto..CorTexto("branco").. CorTextoFundo("preto"))
end

local function aguardarBotao()
	return io.read()
end

local function tocarSom(som)
	print("* Tocando som ".. som)
end

local function salvarPontos(nota)
	print("* Pontos salvos")
end

local function obterTop5()
	return "Top 5:\n1. Jogador A: 10\n2. Jogador B: 7\n3. Jogador C: 5"
end

-- =======================
-- Código do Desenvolvedor
-- =======================


local function apresentar()
	mostrarTexto("ArenaCon Games LE apresenta...", "amarelo", "preto")
	tocarSom("arcade")
	esperar(5)
	mostrarTexto("TABUADA 2X", "verde", "preto")
	esperar(5)
	mostrarTexto("Criado por: Arena", "verde", "preto")
	esperar(3)
	local ranking = obterTop5()	
	mostrarTexto(ranking, "amarelo", "preto")
	esperar(6)
	mostrarTexto("Pressione qualquer botão pra iniciar", "branco", "preto")
	esperar(3)
end

local function instruir()
	mostrarTexto("Responda corretamente as perguntas", "branco", "azul")
	tocarSom("instrucoes")
	esperar(5)
	mostrarTexto("Aperte os botões (A), (B) ou (C) pra responder", "branco", "azul")
	tocarSom("instrucoes")
	esperar(6)
end

local function mostrarTelaAcertou()
	mostrarTexto("ACERTOU! ✅", "verde", "azul")
	tocarSom("acertou")
	esperar(3)
end

local function mostrarTelaErrou()
	mostrarTexto("ERROU! ❌", "vermelho", "azul")
	tocarSom("errou")
	esperar(3)
end

local function perguntar()
	local nota = 0
	local r = ""

	-- Pergunta 1
	mostrarTexto("2 x 1? \n(A) 1 (B) 2 (C) 3", "branco", "azul")
	tocarSom("novapergunta")
	r = aguardarBotao(10)
	if r == "B" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 2
	mostrarTexto("2 x 2? \n(A) 0 (B) 2 (C) 4", "branco", "azul")
	tocarSom("novapergunta")
	r = aguardarBotao(10)
	if r == "C" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 3
	mostrarTexto("2 x 3? \n(A) 5 (B) 6 (C) 9", "branco", "azul")
	tocarSom("novapergunta")
	r = aguardarBotao(10)
	if r == "B" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 4
	mostrarTexto("2 x 4? \n(A) 8 (B) 10 (C) 12", "branco", "azul")
	tocarSom("novapergunta")
	r = aguardarBotao(10)
	if r == "A" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 5
	mostrarTexto("2 x 5? \n(A) 5 (B) 7 (C) 10", "branco", "azul")
	tocarSom("novapergunta")
	r = aguardarBotao(10)
	if r == "C" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 6
	mostrarTexto("2 x 6? \n(A) 8 (B) 12 (C) 26", "branco", "azul")
	tocarSom("novapergunta")
	r = aguardarBotao(10)
	if r == "B" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 7
	mostrarTexto("2 x 7? \n(A) 9 (B) 13 (C) 14", "branco", "azul")
	tocarSom("novapergunta")
	r = aguardarBotao(10)
	if r == "C" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 8
	mostrarTexto("2 x 8? \n(A) 15 (B) 16 (C) 17", "branco", "azul")
	tocarSom("novapergunta")
	r = aguardarBotao(10)
	if r == "B" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 9
	mostrarTexto("2 x 9? \n(A) 18 (B) 29 (C) 32", "branco", "azul")
	tocarSom("novapergunta")
	r = aguardarBotao(10)
	if r == "A" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 10
	mostrarTexto("2 x 10? \n(A) 12 (B) 15 (C) 20", "branco", "azul")
	tocarSom("novapergunta")
	r = aguardarBotao(10)
	if r == "C" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	mostrarTexto("Sua nota foi: "..nota, "branco", "azul")
	tocarSom("tada")
	esperar(3)

	if nota < 5 then
		mostrarTexto("Vc precisa estudar um pouco mais!", "branco", "vermelho")
		tocarSom("gameover")
	elseif nota < 9 then
		mostrarTexto("Vc está indo bem! Tente novamente!", "branco", "azul")
		tocarSom("excelent")
	elseif nota == 10 then
		mostrarTexto("Parabéns! Nota máxima!", "preto", "verde")
		tocarSom("ranking")
	end

	salvarPontos(nota)

	esperar(5)
	mostrarTexto("Fim do Jogo", "branco", "azul")
	tocarSom("fimdejogo")
	esperar(3)
	local ranking = obterTop5()	
	mostrarTexto(ranking, "amarelo", "preto")
	esperar(6)
end


local function iniciar()

	while true do
		apresentar()
		local bt = aguardarBotao(10)
		if bt ~= "" then
			instruir()
			perguntar()
		end
	end

	mostrarTexto("Jogo Encerrado!", "branco", "preto")

end

iniciar()



