import Fluent

struct CreateStop: AsyncMigration {
  func prepare(on database: any Database) async throws {
    try await database.schema("stops")
      .field("id", .int, .identifier(auto: false))
      .field("name", .string, .required)
      .field("code", .int, .required)
      .field("latitude", .double, .required)
      .field("longitude", .double, .required)
      .create()
  }

  func revert(on database: any Database) async throws {
    try await database.schema("stops").delete()
  }
}
