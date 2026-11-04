---
permalink: /pt/mars_temporary/
title: "mars"
author_profile: false
---

<p align="left">
  <img src="{{ '/images/logo_maRS.png' | relative_url }}" alt="Logo do maRS" width="100">
</p>

**maRS é um pacote R que oferece uma interface amigável e ferramentas para análise multivariada de dados, incluindo reconhecimento de padrões, classificação, regressão e outras aplicações analíticas relacionadas.**

## Principais recursos

- Pré-processamento de sinais (MSC, SNV, normas L1/L2 e Savitzky–Golay)
- Sobreamostragem de classes para dados desbalanceados (SMOTE e ADASYN)
- Análise de Agrupamento Hierárquico (HCA)
- Análise de Componentes Principais (PCA), com visualização em 2D e 3D
- Projeção de linhas e colunas suplementares em PCA
- Classificação de uma classe (SIMCA, DD-SIMCA e Robust DD-SIMCA)
- Análise Discriminante por Regressão Linear Múltipla (MLR-DA)
- Análise Discriminante por Mínimos Quadrados Parciais (PLS-DA)
- Regressão Linear Múltipla (MLR)
- Regressão por Mínimos Quadrados Parciais (PLS)
- Algoritmos de seleção de variáveis (iPLS/iPLS-DA e BVE-PLS/BVE-PLS-DA)
- Particionamento de conjuntos de amostras (Kennard-Stone, SPXY e aleatorizado)
- Diagnóstico de modelos, gráficos de valores preditos versus observados e importância das variáveis
- Predição de amostras externas e exportação de modelos
- Gráficos interativos

## Capturas de tela
[Ver capturas de tela do maRS →](/pt/mars_screenshots/)

## Instalação

O maRS é uma aplicação baseada em R que funciona em Windows, Linux e macOS.

1. Baixe e instale o R (versão 4.4 ou posterior) em https://www.r-project.org/
2. Abra o R e execute:

```r
source("https://laquali-ufla.github.io/maRS/install.R")
```

## Execução do maRS

O maRS pode ser utilizado por meio de sua interface gráfica ou como um pacote R convencional.

**Para usar com interface gráfica:** Inicie o maRS pelo ícone <img src="/images/logo_maRS.png" style="height: 22px; width: auto; vertical-align: middle;"> disponível no Menu Iniciar ou no Lançador de Aplicativos, ou inicie a interface gráfica pelo R com:

```r
library(maRSpkg)
mars_gui()
```

> **Observação:**
> Durante a execução do maRS, seu navegador pode desativar abas inativas para reduzir o uso de memória. Se a aba do maRS ficar inativa após um período sem interação, adicione o endereço local do maRS à lista de sites que devem permanecer ativos no navegador (se essa opção estiver disponível).
>
> * **Google Chrome / Chromium / Microsoft Edge:** Abra o navegador e acesse **Configurações → Desempenho → Sempre manter estes sites ativos → Adicionar site** e adicione `http://127.0.0.1`.
> * Outros navegadores podem utilizar mecanismos diferentes para gerenciar abas inativas.

**Para usar como pacote R convencional:** Utilize o maRS como um pacote R convencional e acesse sua documentação com:

```r
library(maRSpkg)
help(maRSpkg)
```

## Desinstalação do maRS

Abra o R e execute:

```r
maRSpkg::uninstall_mars()
```

## Contato
**Prof. Cleiton Nunes**  
Universidade Federal de Lavras – UFLA  
cleiton.nunes@ufla.br
