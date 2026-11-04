---
permalink: /pt/designers_temporary/
title: "designers"
author_profile: false
---

<p align="left">
  <img src="{{ '/images/logo_DesignERS.png' | relative_url }}" alt="Logo do DesignERS" width="100">
</p>

**O DesignERS é um pacote R com uma interface de fácil utilização e ferramentas para geração e análise de planejamentos experimentais para triagem, metodologia de superfície de resposta e estudos de misturas.**

## Principais recursos

* Planejamento Fatorial Completo
* Planejamento Fatorial Fracionário
* Planejamento de Plackett–Burman
* Planejamento de Face Centrada
* Planejamento Composto Central
* Planejamentos de Misturas com três componentes
* Função de desejabilidade multiobjetivo
* Modelagem estatística
* Refinamento de modelos
* Avaliação por ANOVA
* Gráficos de diagnóstico
* Visualização de superfícies de resposta

## Instalação

O DesignERS é uma aplicação baseada em R que funciona em Windows, Linux e macOS.

1. Baixe e instale o R (versão 4.4 ou posterior) em https://www.r-project.org/
2. Abra o R e execute:

```r
source("https://laquali-ufla.github.io/DesignERS/install.R")
```

## Execução do DesignERS

O DesignERS pode ser utilizado por meio de sua interface gráfica ou como um pacote R convencional.

**Interface gráfica:** Inicie o DesignERS pelo ícone <img src="/images/logo_DesignERS.png" style="height: 22px; width: auto; vertical-align: middle;"> disponível no Menu Iniciar ou no Lançador de Aplicativos, ou inicie a interface gráfica pelo R com:

```r
library(designers)
designers_gui()
```

> **Observação:**
> Durante a execução do DesignERS, seu navegador pode desativar abas inativas para reduzir o uso de memória. Se a aba do DesignERS ficar inativa após um período sem interação, adicione o endereço local do DesignERS à lista de sites que devem permanecer ativos no navegador (se essa opção estiver disponível).
>
> * **Google Chrome / Chromium / Microsoft Edge:** Abra o navegador e acesse **Configurações → Desempenho → Sempre manter estes sites ativos → Adicionar site** e adicione `http://127.0.0.1`.
> * Outros navegadores podem utilizar mecanismos diferentes para gerenciar abas inativas.

**Pacote R convencional:** Utilize o DesignERS como um pacote R convencional e acesse sua documentação com:

```r
library(designers)
help(designers)
```

## Desinstalação do DesignERS

Abra o R e execute:

```r
designers::uninstall_designers()
```

## Contato
**Prof. Cleiton Nunes**  
Universidade Federal de Lavras – UFLA  
cleiton.nunes@ufla.br
