## 1. As duas fases.
A primeira fase é uma fábrica com óleo fervente e lava, a fase é cheia de pulos traiçoeiros feitos para te enganar sobre a dificuldade, incluindo estimar mal sua velocidade ou acabar batendo a cabeça no teto, mas também enganando sobre a rota mais fácil, apesar disso a fase tem alguns salva-vidas para não perder todo o progresso.

A segunda fase em contraste é bem mais direta, é uma floresta densa mas com um caminho mais óbvio e também mais estreito, nesta fase você vai de um canto horizontal ao outro, depois precisa voltar, o fim da fase sendo logo acima do início. Nesta fase você precisa ter cuidado pois as plataformas são estreitas e fáceis de andar para fora delas.

## 2. O parallax.
Quais valores de **motion_scale** você usou em cada camada, e como chegou neles. O que mudou entre a primeira tentativa e a versão final?
Na fase de floresta eu usei os valores 0.8, 0.5 e 0.2 para as camadas de 1 a 3 (respectivamente). Eu só tinha o plano de fazer uma redução uniforme de 0.3 partindo do maior, mas para a camada 1 precisei ir na tentativa e erro pra ver qual ficava mais aos meus gostos e que fazia a floresta parecer do tamanho certo.

Já na fase de fábrica eu tentei fazer algo parecido, reduzindo de 0.2 em 0.2, mas no final a camada 4 precisou ter um valor diferente pois era crucial para o parallax vertical e tinha que se mexer o mínimo possível, então as camadas de 1 a 4 acabaram com os valores respectivos de 0.1, 0.2, 0.4 e 0.6.

## 3. A área secreta.
Onde está a pista, onde está a entrada, e por que você as separou desse jeito.
A área secreta fica na fase de fábrica, logo na sessão do meio. Ela não é escondida de forma a não ser visível, mas sim de forma a parecer inalcançável de propósito, e com um conjunto de pistas.  
Ao terminar a sessão inicial, o jogador chega em uma parte com um caminho de plataformas óbvio a se seguir para passar por cima de uma cerca, porém os pulos são feitos de forma a ser fácil bater a cabeça e passar direto pela cerca, fazendo o jogador perceber que não precisava fazer aquele curso pois pode passar diretamente pela cerca.  
Mais a frente no percurso padrão, o percurso antigo dá em um salto aparentemente inútil, pois a entrada da área secreta está fechada por tiles similares aos que fizeram o jogador bater a cabeça antes, porém há também uma cerca no corredor que serve como dica que o jogador consegue atravessar os tiles com rachaduras.  
No entanto para acessar a área secreta, o jogador precisa completar o percurso de antes que tem o maior número de saltos difíceis desta fase, eu fiz dessa forma pois o percurso inteiro é bem estreito e traiçoeiro num geral, então o mais certo me pareceu criar algo escondido em plena vista.

## 4. A câmera.
Escolhi fazer a câmera como um nó separado e irmão do nó de jogador, pois dá mais liberdade de controle no futuro e eu pessoalmente acho mais simples de acessar no inspetor.

## 5. A transição.
O motivo é da troca de fase não poder ser chamada direto na detecção da colisão é na verdade bem simples, apesar de funcionar, a engine está no meio dos cálculos de colisão do quadro específico em que a função foi chamada, e aí  
### BOOM!
Uma linha de código chama a próxima cena e destrói a cena atual com os cálculos feitos pela metade, o que dá um monte de erro.

## 6. O que travou.
Eu tive problemas com o parallax em ***vários*** momentos, no mais memorável a imagem trocava de lugar indevidamente, eu pensei que o problema era o mirroring mas não fazia ideia de como concertar. Só depois de mais do que 30 minutos mexendo nisso eu me dei conta: O problema era sim o mirroring, mas por que eu tinha alterado scale.  
As imagens que eu usei eram muito pequenas então eu ajustei scale para 1.5x do valor normal, ainda assim, eu não me dei conta que com a alteração da imagem para uma nova escala de tamanho, eu também precisava alterar o mirroring para o novo valor de largura.