# Scripts para ComputerCraft

Este repositório contém scripts úteis para ComputerCraft, incluindo um gerenciador de pacotes chamado **Berseker** que facilita a instalação de scripts diretamente no jogo.

## 📦 Gerenciador de Pacotes Berseker

O Berseker é um gerenciador de pacotes simples que permite baixar e instalar scripts deste repositório diretamente no ComputerCraft.

### 🚀 Como usar

#### 1. Instalação do Berseker

Primeiro, você precisa ter o script `berseker.lua` no seu computador do ComputerCraft. Você pode:

- Baixar manualmente o arquivo `src/berseker.lua` e colocar no seu computador

#### 2. Uso básico

Para instalar um pacote, use o seguinte comando:

```
berseker install <nome_do_pacote>
```

**Exemplo:**
```
berseker install recieverMine
```

Este comando irá:
1. Baixar o arquivo `recieverMine.lua` do repositório
2. Salvar no diretório atual do seu computador
3. Confirmar a instalação

### 📋 Pacotes Disponíveis

Atualmente, os seguintes pacotes estão disponíveis:

- **recieverMine** - Script para recepção de dados via rednet

### ⚙️ Requisitos

Para usar o Berseker, você precisa:

1. **ComputerCraft** instalado e funcionando
2. **HTTP habilitado** no servidor (necessário para baixar os arquivos)
3. **Modem** conectado ao computador (para alguns scripts que usam rednet)

### 🔧 Configuração do HTTP

Se você receber a mensagem "HTTP está desabilitado no servidor", peça ao administrador do servidor para habilitar HTTP no arquivo de configuração do ComputerCraft:

```
http {
    enabled = true
}
```

### 📝 Estrutura do Projeto

```
src/
├── berseker.lua          # Gerenciador de pacotes
└── packages/             # Pacotes disponíveis
    └── recieverMine.lua  # Script de recepção de dados
```

### 🐛 Solução de Problemas

**"HTTP está desabilitado no servidor"**
- Verifique se o HTTP está habilitado na configuração do servidor

**"Falha ao acessar a URL"**
- Verifique sua conexão com a internet
- Certifique-se de que o nome do pacote está correto

**"Comando inválido"**
- Certifique-se de usar a sintaxe correta: `lua berseker.lua install <nome_do_pacote>`

### 🤝 Contribuindo

Para adicionar novos pacotes:

1. Crie seu script na pasta `src/packages/`
2. Nomeie o arquivo com extensão `.lua`
3. O pacote estará automaticamente disponível via Berseker

### 📄 Licença

Este projeto é de código aberto. Sinta-se livre para usar, modificar e distribuir.

---

**Desenvolvido para a comunidade ComputerCraft** 🖥️
