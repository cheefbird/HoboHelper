import Fluent
import struct Foundation.UUID
import Vapor

final class Stop: Model, @unchecked Sendable {
  static let schema = "stops"

  @ID(custom: "id", generatedBy: .user)
  var id: Int?

  @Field(key: "name")
  var name: String

  @Field(key: "code")
  var code: Int

  @Field(key: "latitude")
  var latitude: Double

  @Field(key: "longitude")
  var longitude: Double

  init() {}

  init(id: Int? = nil, name: String, code: Int, lat: Double, lon: Double) {
    self.id = id
    self.name = name
    self.code = code
    latitude = lat
    longitude = lon
  }
}
