
sampleData = [
  {
    image: "//d13yacurqjgara.cloudfront.net/users/79723/screenshots/2238442/untitled-2.jpg"
    name: "The Landmark Project"
    client: "The National Parks Service"
  }
  {
    image: "https://d13yacurqjgara.cloudfront.net/users/31348/screenshots/726928/okkervil_river_small.jpg"
    name: "Okkervil River"
    client: "Ram's Head Concert"
  }
  {
    image: "https://d13yacurqjgara.cloudfront.net/users/3820/screenshots/694518/prince_ink.jpg"
    name: "Prince Ink Branding"
    client: "Prince Ink Printers"
  }
  {
    image: "https://d13yacurqjgara.cloudfront.net/users/79723/screenshots/1782623/dribbble.jpg"
    name: "Eyes on You"
    client: "NewSpring Church"
  }
  {
    image: "https://d13yacurqjgara.cloudfront.net/users/79723/screenshots/1940913/untitled-16-01.jpg"
    name: "City of Oaks"
    client: "Raleigh, NC"
  }
  {
    image: "https://d13yacurqjgara.cloudfront.net/users/42583/screenshots/2199223/daveelliedribbble.jpg"
    name: "Dave and Ellie Adopt"
    client: "Dave Keller"
  }
  {
    image: "https://d13yacurqjgara.cloudfront.net/users/331579/screenshots/2116588/yosem_social-02.jpg"
    name: "Yosemite Half Marathon"
    client: "Yosemite Half Marathon"
  }
  {
    image: "https://d13yacurqjgara.cloudfront.net/users/78722/screenshots/425678/1.jpg"
    name: "Deer Head"
    client: "Carolina Legacy Outdoors"
  }
  {
    image: "https://d13yacurqjgara.cloudfront.net/users/51807/screenshots/2194691/dribbble-hustler.png"
    name: "Hustler"
    client: "Hustler Magazine"
  }
  {
    image: "https://d13yacurqjgara.cloudfront.net/users/51807/screenshots/2121791/dribbble-ott.jpg"
    name: "Own The Throne"
    client: "Prince Ink Printers"
  }
  {
    image: "https://d13yacurqjgara.cloudfront.net/users/51807/screenshots/1880418/dribbble-just-thanks.png"
    name: "Thank you cards"
    client: "James and Holly Baxley"
  }
  {
    image: "https://d13yacurqjgara.cloudfront.net/users/51807/screenshots/1317338/dribbble-print-makers.png"
    name: "Print Markers"
    client: "Prince Ink Printers"
  }

]

_.each(sampleData, (data) ->

  statuses = [
    "push"

    "production"

    "gather-primary"
    "gather-secondary"
    "gather-tertiary"

    "stale"

  ]
  types = [
    "screenprint"
    "letterpress"
    "embroidery"
    "graphic-design"
    "wide-format"
  ]

  client = Apollos.clients.findOne({name: data.client})
  name = data.name
  image = data.image
  type = Random.choice(types)
  sizes = [
    "s"
    "m"
    "l"
    "xl"
    "xxl"
  ]

  productsAmounts = [
    1, 2, 3, 4
  ]


  details =
    "screenprint": []
    "embroidery": []
    "letterpress": []
    "graphic-design": []
    "wide-format": []

  screenprintLength = Random.choice productsAmounts
  while screenprintLength > 0
    screenprintLength--
    details.screenprint.push({
      "image": faker.image.abstract()
      "garment-style": faker.commerce.productMaterial()
      "garment-color": faker.commerce.color()
      "colors-on-front": [
        faker.commerce.color()
        faker.commerce.color()
        faker.commerce.color()
      ]
      "colors-on-back": [
        faker.commerce.color()
        faker.commerce.color()
      ]
      "colors-on-3rd-location": [
        faker.commerce.color()
      ]
      "flash": faker.random.number()
      "sizes": [
        Random.choice(sizes)
        Random.choice(sizes)
      ]
      "price-per-item": faker.commerce.price()
    })

  emLength = Random.choice productsAmounts
  while emLength > 0
    emLength--
    details.embroidery.push({
      "image": faker.image.abstract()
      "garment-style": faker.commerce.productMaterial()
      "garment-color": faker.commerce.color()
      "location-of-embrodiery": [
        "top"
      ]
      "sizes": [
        Random.choice(sizes)
        Random.choice(sizes)
      ]
      "price-per-item": faker.commerce.price()
    })

  lLength = Random.choice productsAmounts
  while lLength > 0
    lLength--
    details.letterpress.push({
      "image": faker.image.abstract()
      "paper": faker.commerce.productMaterial()
      "paper-weight": faker.commerce.productAdjective()
      "paper-color": faker.commerce.color()
      "colors-on-side-1": [
        faker.commerce.color()
        faker.commerce.color()
        faker.commerce.color()
      ]
      "colors-on-side-2": [
        faker.commerce.color()
        faker.commerce.color()
      ]
      "dimensons": "#{faker.random.number()}x#{faker.random.number()}"
      "envelope": faker.random.boolean()
      "price-per-item": faker.commerce.price()
    })

  gLength = Random.choice productsAmounts
  while gLength > 0
    gLength--
    details["graphic-design"].push({
      "image": faker.image.abstract()
      "description": faker.lorem.paragraphs()
      "estimate": faker.random.number()
      "price": faker.commerce.price()
    })

  wLength = Random.choice productsAmounts
  while wLength > 0
    wLength--
    details["wide-format"].push({
      "image": faker.image.abstract()
      "paper": faker.commerce.productMaterial()
      "square-footage": faker.random.number()
      "price": faker.commerce.price()
    })



  conditions =
    "screenprint": [
      {
        status: faker.random.boolean()
        label: "Client has approved artwork"
      }
      {
        status: faker.random.boolean()
        label: "Film files created"
      }
    ]
    "embroidery": [
      {
        status: faker.random.boolean()
        label: "Client has approved price"
      }
      {
        status: faker.random.boolean()
        label: "Client has approved artwork"
      }
    ]
    "letterpress": [
      {
        status: faker.random.boolean()
        label: "Client has approved price"
      }
      {
        status: faker.random.boolean()
        label: "Client has approved artwork"
      }
      {
        status: faker.random.boolean()
        label: "Plates have been ordered"
      }
    ]
    "graphic-design": [
      {
        status: faker.random.boolean()
        label: "Client has approved price"
      }
    ]
    "wide-format": [
      {
        status: faker.random.boolean()
        label: "Client has approved price"
      }
      {
        status: faker.random.boolean()
        label: "File is formated in Dropbox"
      }
    ]

  comments = []
  commentSize = [
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9
  ]
  cLength = Random.choice commentSize

  while cLength > 0
    cLength--
    # Normally this would include a user _id and the comments only
    comments.push({
      "user": "#{faker.name.firstName()} #{faker.name.lastName()}"
      "avatar": faker.internet.avatar()
      "comment": faker.lorem.sentences()
    })


  Apollos.projects.upsert({name: data.name},
    $set:
      name: data.name
      image: image
      client: client._id
      address:
        zipCode: faker.address.zipCode()
        city: faker.address.city()
        streetName: faker.address.streetName()
        streetAddress: faker.address.streetAddress()
        country: faker.address.country()
        stateAbbr: faker.address.stateAbbr()
      inHandsDate: faker.date.future()
      orderType: type
      details: details[type]
      phone: [
        {
          type: faker.commerce.department()
          number: faker.phone.phoneNumber()
        }
      ]
      notes: faker.lorem.sentences()
      status: Random.choice(statuses)
      conditions: conditions[type]
      employee: faker.name.firstName()
      lastActed: faker.date.recent()
      comments: comments

  )


)
