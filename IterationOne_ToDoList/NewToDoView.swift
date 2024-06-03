

//** This file contains all the code for the "popup" screen where users can add their own ToDo Item**

import SwiftUI
import SwiftData

struct NewToDoView: View {
    
    @Bindable var toDoItem: ToDoItem
    @Binding var showNewTask: Bool
    @Environment(\.modelContext) var modelContext

    var body: some View {
        VStack {
            
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding()
            
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
                    .font(.system(size: 20))
            }
            .padding()
            
            Button {
                addToDo()
                self.showNewTask = false
            } label: {
                //Update showNewTask to false
                //Call the addTask function here
            }
            Text("Save")
                .foregroundColor(Color.blue)
            }
            .padding()
        }
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)

    }
    }


#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: ToDoItem.self, configurations: config)

    let toDo = ToDoItem(title: "Example ToDo", isImportant: false)
    return NewToDoView(toDoItem: toDo, showNewTask: .constant(true))
        .modelContainer(container)
}

//struct NewToDoView_Previews: PreviewProvider {
//    static var previews: some View {
//    NewToDoView(title: "", isImportant: false
       //Add toDoItems: .constant([]) here
       //Add showNewTask: .constant(true) here
//        )
//    }
//}
