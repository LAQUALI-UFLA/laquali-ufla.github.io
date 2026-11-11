---
permalink: /pt/designers/
title: "DesignERS"
author_profile: false
---

<p align="left">
  <img src="{{ '/images/logo_DesignERS.png' | relative_url }}" alt="Logo do DesignERS" width="100">
</p>

**O DesignERS é um pacote R com uma interface de fácil utilização e ferramentas para geração e análise de planejamentos experimentais para triagem, metodologia de superfície de resposta e experimentos de misturas.**

## Principais recursos
- Planejamento Fatorial Completo
- Planejamento Fatorial Fracionário
- Planejamento de Plackett–Burman
- Planejamento de Face Centrada
- Planejamento Composto Central
- Planejamentos de Misturas com três componentes
- Função de desejabilidade multiobjetivo
- Modelagem estatística
- Refinamento de modelos
- Avaliação por ANOVA
- Gráficos de diagnóstico
- Visualização de superfícies de resposta 2D e 3D
- Exportação de gráficos (PNG, JPEG, TIFF, BMP, SVG, EPS e PPTX)

## Capturas de tela
[Ver capturas de tela do DesignERS →](/pt/designers_screenshots/)

## Instalação do DesignERS
O DesignERS é uma aplicação baseada em R que funciona em Windows, Linux e macOS.

1. Baixe e instale o R (versão 4.4 ou posterior) em [r-project.org](https://www.r-project.org/)
2. Abra o R e execute:

```r
source("https://laquali-ufla.github.io/DesignERS/install.R")
```

## Execução do DesignERS
O DesignERS pode ser utilizado por meio de sua interface gráfica ou como um pacote R convencional.

- **Para usar com interface gráfica através do atalho**, inicie o DesignERS clicando no ícone disponível no Menu Iniciar (Windows), no Lançador de Aplicativos (Linux) ou na pasta Aplicativos dentro do diretório do usuário (macOS). No macOS, o DesignERS também pode ser iniciado por meio do Spotlight.

- **Para usar com interface gráfica através do R**, use os comandos:

```r
library(designers)
designers_gui()
```

- **Para usar como pacote R convencional**, carregue o pacote e acesse sua documentação com:

```r
library(designers)
help(designers)
```

## Desinstalação do DesignERS
Abra o R e execute:

```r
designers::uninstall_designers()
```

## Notas importantes
- Recomenda-se desativar os plugins ou extensões de tradução automática do navegador ao utilizar o DesignERS. Essas ferramentas podem traduzir automaticamente os elementos da interface gráfica, comprometendo a exibição e o funcionamento adequado de alguns componentes do aplicativo.

- Durante a execução do DesignERS, seu navegador pode desativar abas inativas para reduzir o uso de memória. Se a aba do DesignERS ficar inativa após um período sem interação, adicione o endereço local do DesignERS à lista de sites que devem permanecer ativos no navegador (se essa opção estiver disponível).

  - **Google Chrome / Chromium / Microsoft Edge:** Abra o navegador e acesse **Configurações → Desempenho → Sempre manter estes sites ativos → Adicionar site** e adicione `http://127.0.0.1`.
  - Outros navegadores podem utilizar mecanismos diferentes para gerenciar abas inativas.

- No Linux, alguns pacotes do R podem ser instalados a partir do código-fonte e, portanto, exigir bibliotecas adicionais do sistema e ferramentas de desenvolvimento. Se a instalação de algum pacote falhar devido a erros de compilação ou à ausência de bibliotecas do sistema, consulte a documentação da sua distribuição Linux para instalar as dependências indicadas na mensagem de erro e, em seguida, tente instalar o pacote novamente. Se ocorrerem problemas durante a instalação do DesignERS, certifique-se de que os pacotes `shiny`, `rhandsontable` e `htmlwidgets` estejam instalados no R antes de tentar instalar o DesignERS novamente.

- No macOS, alguns gráficos podem exigir o XQuartz para serem exibidos corretamente. Caso ocorram problemas na exibição de gráficos acompanhados de uma mensagem de erro relacionada ao XQuartz, instale-o por meio de https://www.xquartz.org/ e reinicie o DesignERS.
 
## Contato
**Prof. Cleiton Nunes**  
Universidade Federal de Lavras – UFLA  
cleiton.nunes@ufla.br
