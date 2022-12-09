
import Foundation

struct Animal: Codable {
  var id: Int?
  let organizationId: String?
  let url: URL?
  let type: String
  let species: String?
  var breeds: Breed
  var colors: APIColors
  let age: Age
  let gender: Gender
  let size: Size
  let coat: Coat?
  let name: String
  let description: String?
  let photos: [PhotoSizes]
  let videos: [VideoLink]
  let status: AdoptionStatus
  let attributes: AnimalAttributes
  let environment: AnimalEnvironment?
  let tags: [String]
  var contact: Contact
  let publishedAt: String?
  let distance: Double?
  var ranking: Int? = 0

  var picture: URL? {
    photos.first?.medium ?? photos.first?.large
  }
}

extension Animal: Identifiable {
  
}
