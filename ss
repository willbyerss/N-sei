const caixaPrincipal = document.querySelector(".caixa-principal");
const caixaPerguntas = document.querySelector(".caixa-perguntas");
const caixaAlternativas = document.querySelector(".caixa-alternativas");
const caixaResultado = document.querySelector(".caixa-resultado");
const textoResultado = document.querySelector(".texto-resultado");

const perguntas = [
    {
        enunciado: "Qual o principal objetivo da saúde pública?",
        alternativas: [
            {
                texto: "previnir doenças e promover a saúde",
                afirmacao: ""
            },
            {
                texto: "fornecer tratamento especializado em hospitais",
                afirmacao: ""
            }
        ]
    },
    {
        enunciado: "Qual é um exemplo de uma intervenção preventiva na saúde pública?",
        alternativas: [
            {
                texto: "Cirurgia cardíaca.",
                afirmacao: ""
            },
            {
                texto: "Tratamento de quimioterapia.",
                afirmacao: ""
            }
        ]
    },
    {
        enunciado: "Qual das seguintes opções NÃO é um foco típico da saúde pública?",
        alternativas: [
            {
                texto: "Desenvolvimento de tecnologias médicas avançadas.",
                afirmacao: ""
            },
            {
                texto: "Promoção de hábitos de vida saudáveis.",
                afirmacao: ""
            }
        ]
    },
    {
        enunciado: "Qual das seguintes campanhas pode ser considerada uma iniciativa de saúde pública?",
        alternativas: [
            {
                texto: " Campanha de vacinação contra a gripe",
                afirmacao: ""
            },
            {
                texto: "Campanha de reciclagem",
                afirmacao: ""
            }
        ]
    },
    {
        enunciado: "Qual é um exemplo de política pública de saúde? ",
        alternativas: [
            {
                texto: " Implementação de programas de vacinação obrigatória",
                afirmacao: ""
            },
            {
                texto: "Desenvolvimento de novos medicamentos",
                afirmacao: ""
            }
        ]
    },
];


let atual = 0;
let perguntaAtual;
let historiaFinal = "";

function mostraPergunta() {
    if (atual >= perguntas.length) {
        mostraResultado();
        return;
    }
    perguntaAtual = perguntas[atual];
    caixaPerguntas.textContent = perguntaAtual.enunciado;
    caixaAlternativas.textContent = "";
    mostraAlternativas();
}

function mostraAlternativas(){
    for(const alternativa of perguntaAtual.alternativas) {
        const botaoAlternativas = document.createElement("button");
        botaoAlternativas.textContent = alternativa.texto;
        botaoAlternativas.addEventListener("click", () => respostaSelecionada(alternativa));
        caixaAlternativas.appendChild(botaoAlternativas);
    }
}

function respostaSelecionada(opcaoSelecionada) {
    const afirmacoes = opcaoSelecionada.afirmacao;
    historiaFinal += afirmacoes + " ";
    atual++;
    mostraPergunta();
}

function mostraResultado() {
    caixaPerguntas.textContent = "Em 2024...";
    textoResultado.textContent = historiaFinal;
    caixaAlternativas.textContent = "";
}

mostraPergunta();







:root{
    --cor-fundo: #01080E ;
    --cor-principal: #0B0D20 ;
    --cor-secundaria: #212333; 
    --cor-destaque: #2BDEFD;
    --cor-texto: #D7F9FF;

}

body {
    background-color: var(--cor-fundo);
    color: var(--cor-texto);
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.caixa-principal{
    background-color: var(--cor-principal);
    width: 90%;
    max-width: 600px;
    text-align: center;
    padding: 20px;
}







<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Você decide o futuro da IA</title>
</head>
<body>
    <div class="caixa-principal">
        <h1>Saúde Publica</h1>
        <div class="caixa-perguntas"></div>
        <div class="caixa-alternativas"></div>
        <div class="caixa-resultado">
            <p class="texto-resultado"></p>
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>

h1{
    color: var(--cor-destaque);
}
