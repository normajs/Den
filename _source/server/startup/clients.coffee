
if Apollos.clients.find().count() < 10

  _.each(_.range(10), ->

    name = faker.company.companyName()
    statuses = [
      "push"

      "production"

      "gather-primary"
      "gather-secondary"
      "gather-tertiary"

      "stale"

    ]

    Apollos.clients.upsert({name: name},
      $set:
        name: name
        address:
          zipCode: faker.address.zipCode()
          city: faker.address.city()
          streetName: faker.address.streetName()
          streetAddress: faker.address.streetAddress()
          country: faker.address.country()
          stateAbbr: faker.address.stateAbbr()
        email: faker.internet.email()
        phone: [
          {
            type: faker.commerce.department()
            number: faker.phone.phoneNumber()
          }
        ]
        notes: faker.lorem.sentences()
        status: Random.choice(statuses)
        contacts: [
          firstName: faker.name.firstName()
          lastName: faker.name.lastName()
          jobTitle: faker.name.jobTitle()
          number: faker.phone.phoneNumber()
        ]
        lastOrdered: faker.date.recent()

    )


  )
