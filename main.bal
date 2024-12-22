import ballerina/http;

// Define a estrutura de uma tarefa.
type Task record {
    int id;
    string title;
    string description;
    boolean completed = false;
};

// Lista de tarefas armazenadas na memória.
Task[] tasks = [];
int nextId = 1;

// Serviço HTTP na porta 8080.
service /tasks on new http:Listener(8080) {

    // Endpoint para listar todas as tarefas.
    resource function get .() returns Task[] {
        return tasks;
    }

    // Endpoint para criar uma nova tarefa.
    resource function post .(Task task) returns string {
        task.id = nextId;
        nextId += 1;
        tasks.push(task);
        return "Tarefa criada com sucesso!";
    }

    // Endpoint para atualizar o status de uma tarefa.
    resource function put ./{id} (boolean completed) returns string|error {
        int taskId = check id.ensureType(int);
        foreach var task in tasks {
            if (task.id == taskId) {
                task.completed = completed;
                return "Tarefa atualizada com sucesso!";
            }
        }
        return error("Tarefa não encontrada.");
    }

    // Endpoint para deletar uma tarefa.
    resource function delete ./{id} returns string|error {
        int taskId = check id.ensureType(int);
        foreach var i in 0..<tasks.length() {
            if (tasks[i].id == taskId) {
                tasks.remove(i);
                return "Tarefa deletada com sucesso!";
            }
        }
        return error("Tarefa não encontrada.");
    }
}
