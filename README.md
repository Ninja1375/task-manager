# Projeto em Ballerina: API para Gerenciamento de Tarefas

Este projeto demonstra como criar uma API RESTful para gerenciamento de tarefas utilizando Ballerina. 

Ele inclui operações CRUD (Create, Read, Update, Delete) e está pronto para ser usado como base para um projeto mais robusto.

## Funcionalidades
- Criar tarefas.
- Listar todas as tarefas.
- Atualizar o status de uma tarefa.
- Deletar uma tarefa.

## Linguagem Utilizada

<a href="https://programartudo.blogspot.com/2024/12/ballerina-linguagem-moderna-para.html" target="_blank">
    <img loading="lazy" src="https://ballerina.io/images/ballerina-logo.svg" width="100" height="100" alt="Ballerina Logo"/>
</a>

## Estrutura do Projeto
```Plaintext
task-manager/
├── Ballerina.toml
├── main.bal
└── README.md
```

## Como Rodar

1. Instale o [Ballerina](https://ballerina.io/).
2. Clone este repositório:
   ```bash
   git clone https://github.com/username/task-manager.git
   ```
3. Acesse o diretório do projeto:
   ```bash
   cd task-manager
   ```
4. Execute o serviço:
   ```bash
   bal run
   ```
5. Acesse a API em:

http://localhost:8080.

## Endpoints

**Listar todas as tarefas**
**GET** `/tasks`

**Criar uma nova tarefa**
**POST** `/tasks`
**Corpo:**

```json
{
  "title": "Exemplo de Tarefa",
  "description": "Descrição da tarefa"
}
```
**Atualizar o status de uma tarefa**
**PUT** `/tasks/{id}?completed=true`

**Deletar uma tarefa**
**DELETE** `/tasks/{id}`

## Observabilidade

Este projeto inclui suporte para logs e métricas. Configure ferramentas como Prometheus e Grafana para monitoramento.

## Contribuição

Sinta-se à vontade para abrir `issues` e enviar `Pull requests`.
