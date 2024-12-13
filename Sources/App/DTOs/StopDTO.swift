import Fluent
import Vapor

struct StopDTO: Content {
  var id: Int?
  var name: String
  var code: Int
  var latitude: Double
  var longitude: Double

  func toModel() -> Stop {
    let model = Stop()

    model.id = id
    model.name = name
    model.code = code
    model.latitude = latitude
    model.longitude = longitude

    return model
  }
}
