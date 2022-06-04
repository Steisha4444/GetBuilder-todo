import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/modules/todos/controller/todos_controller.dart';
import 'package:getx_test/modules/todos/view/todo_card.dart';

class ToDoList extends GetView<ToDosController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.todos.length,
      itemBuilder: (_, index) => ToDoCard(
          todo: controller.todos[index],
          onEdit: () => controller.onEdit(index),
          onDelete: () => controller.onRemove(index),
          onCheckTodo: () => controller.onCheckTodo(index),),
    );
  }
}
