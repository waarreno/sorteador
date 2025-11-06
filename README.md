# Sorteador Simples

Um sorteador interativo em Batch Script para Windows que permite realizar sorteios de números ou termos/nomes com animação visual.

## Funcionalidades

- **Sorteio de Números**: Sorteia um número aleatório dentro de um intervalo definido pelo usuário
- **Sorteio de Termos/Nomes**: Sorteia um item de uma lista de termos separados por vírgula
- **Animação Visual**: Exibe uma animação de aproximadamente 10 segundos antes de revelar o resultado
- **Interface Interativa**: Menu simples e intuitivo no prompt de comando

## Requisitos

- Windows (qualquer versão com suporte a Batch Scripts)
- Prompt de Comando (cmd.exe)

## Como Usar

1. Execute o arquivo `sorteador_v.1.3.3.bat`
2. No menu principal, escolha uma das opções:

### Opção 1 - Sortear Números

1. Digite o número mínimo do intervalo
2. Digite o número máximo do intervalo
3. Pressione qualquer tecla para iniciar a animação
4. Aguarde o resultado final

**Exemplo:**
```
Digite o numero MINIMO: 1
Digite o numero MAXIMO: 100
```

### Opção 2 - Sortear Termos/Nomes

1. Digite os termos separados por vírgula (sem espaços)
2. Pressione qualquer tecla para iniciar a animação
3. Aguarde o resultado final

**Exemplo:**
```
Termos: Joao,Maria,Pedro,Ana,Carlos
```

### Opção 3 - Sair

Encerra o programa.

## Características Técnicas

- **Versão**: 1.3.3
- **Linguagem**: Windows Batch Script
- **Animação**: ~200 iterações com delay de 100ms
- **Geração Aleatória**: Utiliza a variável `%RANDOM%` do Windows

## Estrutura do Código

O script é organizado em seções:

- **Menu Principal** (sorteador_v.1.3.3.bat:6): Interface inicial com opções
- **Sorteio de Números** (sorteador_v.1.3.3.bat:28): Lógica para sortear números
- **Sorteio de Termos** (sorteador_v.1.3.3.bat:86): Lógica para sortear termos
- **Animações**: Feedback visual durante o sorteio

## Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

Copyright (c) 2025 Warreno Hendrick Costa Lima Guimaraes.

## Suporte

Para reportar problemas ou sugerir melhorias, entre em contato com o desenvolvedor.

---

**Nota**: Este é um projeto educacional/demonstrativo desenvolvido em Batch Script para ambiente Windows.
