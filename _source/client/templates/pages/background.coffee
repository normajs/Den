

class Background extends Apollos.Component
  @register "background"

  cards: ->

    count = [0..8]
    sampleImages = [
      "//d13yacurqjgara.cloudfront.net/users/79723/screenshots/2238442/untitled-2.jpg"
      "//d13yacurqjgara.cloudfront.net/users/248873/screenshots/1902180/screen_shot_2015-01-27_at_3.21.03_pm.png"
      "//d13yacurqjgara.cloudfront.net/users/248873/screenshots/1902173/mountains.jpg"
      "//d13yacurqjgara.cloudfront.net/users/248873/screenshots/1624445/screen_shot_2014-07-01_at_5.06.07_pm.png"
      "//d13yacurqjgara.cloudfront.net/users/248873/screenshots/1288534/pisgah.png"
    ]

    projects = []
    for card, index in count

      if index is 4
        card = false
        projects.push card
        continue

      card =
        image: Random.choice sampleImages

      projects.push card

    return projects
