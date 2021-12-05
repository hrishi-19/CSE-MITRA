import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:mitra/model/task.dart';
import 'package:mitra/screens/editTask.dart';
import 'package:mitra/provider/tasks.dart';
import 'package:mitra/utils.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;

  const TodoWidget({
    required this.todo,
  });

  @override
  Widget build(BuildContext context) => ClipRRect(
  );

  Widget buildTodo(BuildContext context) => GestureDetector(
    onTap: () => editTodo(context, todo),
    child: Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Checkbox(
            activeColor: Theme.of(context).primaryColor,
            checkColor: Colors.white,
            value: todo.isDone,
            onChanged: (_) {
              final provider =
              Provider.of<TodosProvider>(context, listen: false);
              final isDone = provider.toggleTodoStatus(todo);

              Utils.showSnackBar(
                context,
                isDone ? 'Task completed' : 'Task marked incomplete',
              );
            },
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  todo.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                    fontSize: 22,
                  ),
                ),
                if (todo.description.isNotEmpty)
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Text(
                      todo.description,
                      style: TextStyle(fontSize: 20, height: 1.5),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    ),
  );

  void deleteTodo(BuildContext context, Todo todo) {
    final provider = Provider.of<TodosProvider>(context, listen: false);
    provider.removeTodo(todo);

    Utils.showSnackBar(context, 'Deleted the task');
  }

  void editTodo(BuildContext context, Todo todo) => Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => EditTodoPage(todo: todo),
    ),
  );
}
