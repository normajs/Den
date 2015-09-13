

class Background extends Apollos.Component
  @register "background"

  cards: ->

    count = [0..8]
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

    projects = []
    numbers = count.slice()
    for card, index in count

      if index is 4
        card = false
        projects.push card
        continue

      clientIndex = Random.choice numbers
      client = sampleData[clientIndex]
      numbers.splice(numbers.indexOf(clientIndex), 1)

      projects.push client

    return projects
