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
	esperar(5)
	mostrarTexto("TABUADA 1X", "verde", "preto")
	esperar(5)
	mostrarTexto("Criado por: Arena", "verde", "preto")
	esperar(3)
	mostrarTexto("Buscando Ranking...", "amarelo", "preto")
	local ranking = obterTop5()	
	mostrarTexto(ranking, "amarelo", "preto")
	esperar(6)
	mostrarTexto("Pressione qualquer botão pra iniciar", "branco", "preto")
end

local function instruir()
	tocarSom("instrucoes")
	mostrarTexto("Responda corretamente as perguntas", "branco", "azul")
	esperar(5)
	tocarSom("instrucoes")
	mostrarTexto("Aperte os botões (A), (B) ou (C) pra responder", "branco", "azul")
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
	tocarSom("novapergunta")
	mostrarTexto("1 x 1? \n(A) 1 (B) 2 (C) 0", "branco", "azul")
	r = aguardarBotao(10)
	if r == "A" then
		mostrarTelaAcertou()
		nota = nota + 1 
	else
		mostrarTelaErrou() 
	end

	-- Pergunta 2
	tocarSom("novapergunta")
	mostrarTexto("1 x 2? \n(A) 1 (B) 2 (C) 3", "branco", "azul")
	r = aguardarBotao(10)
	if r == "B" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 3
	tocarSom("novapergunta")
	mostrarTexto("1 x 3? \n(A) 2 (B) 3 (C) 4", "branco", "azul")
	r = aguardarBotao(10)
	if r == "B" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 4
	tocarSom("novapergunta")
	mostrarTexto("1 x 4? \n(A) 4 (B) 5 (C) 6", "branco", "azul")
	r = aguardarBotao(10)
	if r == "A" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 5
	tocarSom("novapergunta")
	mostrarTexto("1 x 5? \n(A) 1 (B) 10 (C) 5", "branco", "azul")
	r = aguardarBotao(10)
	if r == "C" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 6
	tocarSom("novapergunta")
	mostrarTexto("1 x 6? \n(A) 5 (B) 6 (C) 7", "branco", "azul")
	r = aguardarBotao(10)
	if r == "B" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 7
	tocarSom("novapergunta")
	mostrarTexto("1 x 7? \n(A) 6 (B) 8 (C) 7", "branco", "azul")
	r = aguardarBotao(10)
	if r == "C" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 8
	tocarSom("novapergunta")
	mostrarTexto("1 x 8? \n(A) 7 (B) 8 (C) 9", "branco", "azul")
	r = aguardarBotao(10)
	if r == "B" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 9
	tocarSom("novapergunta")
	mostrarTexto("1 x 9? \n(A) 9 (B) 10 (C) 19", "branco", "azul")
	r = aguardarBotao(10)
	if r == "A" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	-- Pergunta 10
	tocarSom("novapergunta")
	mostrarTexto("1 x 10? \n(A) 1 (B) 100 (C) 10", "branco", "azul")
	r = aguardarBotao(10)
	if r == "C" then
		mostrarTelaAcertou()
		nota = nota + 1
	else
		mostrarTelaErrou()
	end

	tocarSom("tada")
	mostrarTexto("Sua nota foi: "..nota, "branco", "azul")
	esperar(3)

	if nota < 6 then
		tocarSom("gameover")
		mostrarTexto("Vc precisa estudar um pouco mais!", "branco", "vermelho")
	elseif nota < 9 then
		tocarSom("excelent")
		mostrarTexto("Vc está indo bem! Tente novamente!", "branco", "azul")
	elseif nota == 10 then
		tocarSom("ranking")
		mostrarTexto("Parabéns! Nota máxima!", "preto", "verde")
	end

	salvarPontos(nota)

	esperar(5)
	tocarSom("fimdejogo")
	mostrarTexto("Fim do Jogo", "branco", "azul")
	esperar(3)
	mostrarTexto("Atualizando Ranking...", "amarelo", "preto")
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
