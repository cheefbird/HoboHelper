import Fluent
import Vapor

struct TodoDTO: Content {
  var id: UUID?
  var title: String?

  func toModel() -> Todo {
    let model = Todo()

    model.id = id
    if let title = title {
      model.title = title
    }
    return model
  }
}
