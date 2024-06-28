const { Router } = require('express')
const router = Router({ mergeParams: true })

const { getAnimes } = require('../service/animeService')

router.get('/anime/:animeId?', async (req, res) => {
  const animes = await getAnimes(req)
  res.send({
    animes
  })
})

module.exports = router
