provider "random" {}

resource "random_pet" "name" {}

output "random-name" {
  value = random_pet.name.id
}