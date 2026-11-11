---
permalink: /pt/mars/
title: "maRS"
author_profile: false
---

<p align="left">
  <img src="{{ '/images/logo_maRS.png' | relative_url }}" alt="Logo do maRS" width="100">
</p>

**maRS é um pacote R que oferece uma interface amigável e ferramentas para análise multivariada de dados, incluindo reconhecimento de padrões, classificação, regressão e outras aplicações analíticas relacionadas.**

- **Gerenciamento, Visualização e Pré-processamento de Dados**
  - Importação de arquivos (.xls, .xlsx, .txt, .dat, .csv)
  - Definição dos grupos de calibração e teste
  - Pré-processamento de sinais (MSC, SNV, normalização L1/L2 e Savitzky–Golay)
  - Sobreamostragem de classes pela técnica Synthetic Minority Over-sampling Technique (SMOTE)
  - Sobreamostragem de classes pelo método Adaptive Synthetic Sampling (ADASYN)
  - Gráficos interativos de linhas e perfis

- **Análise Exploratória**
  - Análise de Agrupamento Hierárquico (HCA)
  - Métodos de ligação Single, Complete e Average em HCA
  - Coloração por agrupamento e número de grupos em HCA
  - Análise de Componentes Principais (PCA)
  - Projeção de linhas e colunas suplementares em PCA
  - Visualizações 2D e 3D de Scores, Loadings e Biplot em PCA
  - Elipses de confiança em PCA

- **Calibração Multivariada**
  - Regressão Linear Múltipla (MLR)
  - Regressão por Mínimos Quadrados Parciais (PLS)
  - Interval PLS (iPLS), com estratégias Forward e Backward
  - Backward Variable Elimination PLS (BVE-PLS)
  - Cálculo do Limite de Detecção (LOD)
  - Diversas métricas de desempenho para regressão

- **Classificação**
  - Soft Independent Modeling of Class Analogy (SIMCA e DD-SIMCA)
  - Análise Discriminante por MLR (MLR-DA)
  - Análise Discriminante por PLS (PLS-DA)
  - Análise Discriminante por iPLS (iPLS-DA)
  - Análise Discriminante por BVE-PLS (BVE-PLS-DA)
  - Cálculo da Fisher Ratio das variáveis
  - Diversas métricas de desempenho para classificação

- **Recursos Auxiliares**
  - Particionamento de conjuntos de amostras (Kennard–Stone, SPXY, aleatório e indicação manual)
  - Métodos de validação cruzada (Leave-One-Out (LOO), Venetian Blinds e k-fold aleatório)
  - Teste de aleatorização de y (y-randomization)
  - Determinação automática do número ideal de componentes ou variáveis latentes pelo método do cotovelo (Elbow Method)
  - Gráficos de detecção de outliers, diagnóstico de modelos e importância das variáveis
  - Predição de novos conjuntos de dados
  - Exportação de gráficos (PNG, JPEG, TIFF, BMP, SVG, EPS e PPTX)

## Capturas de tela
[Ver capturas de tela do maRS →](/pt/mars_screenshots/)

## Instalação do maRS
O maRS é uma aplicação baseada em R que funciona em Windows, Linux e macOS.

1. Baixe e instale o R (versão 4.4 ou posterior) de [r-project.org](https://www.r-project.org/)
2. Abra o R e execute:

```r
source("https://laquali-ufla.github.io/maRS/install.R")
```

## Execução do maRS
O maRS pode ser utilizado por meio de sua interface gráfica ou como um pacote R convencional.

- **Para usar com interface gráfica através do atalho**, inicie o maRS clicando no ícone disponível no Menu Iniciar (Windows), no Lançador de Aplicativos (Linux) ou na pasta Aplicativos dentro do diretório do usuário (macOS). No macOS, o maRS também pode ser iniciado por meio do Spotlight.

- **Para usar com interface gráfica através do R**, use os comandos:

```r
library(maRSpkg)
mars_gui()
```

- **Para usar como pacote R convencional**, carregue o pacote e acesse sua documentação com:

```r
library(maRSpkg)
help(maRSpkg)
```

## Desinstalação do maRS
Abra o R e execute:

```r
maRSpkg::uninstall_mars()
```

## Notas importantes
- Recomenda-se desativar os plugins ou extensões de tradução automática do navegador ao utilizar o maRS. Essas ferramentas podem traduzir automaticamente os elementos da interface gráfica, comprometendo a exibição e o funcionamento adequado de alguns componentes do aplicativo.

- Durante a execução do maRS, seu navegador pode desativar abas inativas para reduzir o uso de memória. Se a aba do maRS ficar inativa após um período sem interação, adicione o endereço local do maRS à lista de sites que devem permanecer ativos no navegador (se essa opção estiver disponível).

  - **Google Chrome / Chromium / Microsoft Edge:** Abra o navegador e acesse **Configurações → Desempenho → Sempre manter estes sites ativos → Adicionar site** e adicione `http://127.0.0.1`.
  - Outros navegadores podem utilizar mecanismos diferentes para gerenciar abas inativas.

- No Linux, alguns pacotes do R podem ser instalados a partir do código-fonte e, portanto, exigir bibliotecas adicionais do sistema e ferramentas de desenvolvimento. Se a instalação de algum pacote falhar devido a erros de compilação ou à ausência de bibliotecas do sistema, consulte a documentação da sua distribuição Linux para instalar as dependências indicadas na mensagem de erro e, em seguida, tente instalar o pacote novamente. Se ocorrerem problemas durante a instalação do maRS, certifique-se de que os pacotes `pls`, `scales`, `MASS`, `plot3D`, `car`, `Matrix`, `dendextend`, `shiny`, `readxl`, `writexl`, `officer`, `rvg`, `SMOTEWB`, and `DT` estejam instalados no R antes de tentar instalar o maRS novamente.

- No macOS, alguns gráficos podem exigir o XQuartz para serem exibidos corretamente. Caso ocorram problemas na exibição de gráficos acompanhados de uma mensagem de erro relacionada ao XQuartz, instale-o por meio de https://www.xquartz.org/ e reinicie o maRS.

## Conjuntos de dados de exemplo
[Baixar conjuntos de dados de exemplo. →](/maRS/maRS_sample_datasets.zip)

## Contato
**Prof. Cleiton Nunes**  
Universidade Federal de Lavras – UFLA  
cleiton.nunes@ufla.br
