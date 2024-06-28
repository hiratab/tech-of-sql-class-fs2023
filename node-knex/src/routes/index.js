const { Router } = require('express')
const router = Router({ mergeParams: true })

const { getAnimes, createAnime, updateAnime } = require('../service/animeService')

router.get('/anime/:animeId?', async (req, res) => {
  const animes = await getAnimes(req)
  res.send({
    animes
  })
})

router.post('/anime', async (req, res) => {
  const result = await createAnime(req)
  res.send(result)
})

router.put('/anime', async (req, res) => {
  const result = await updateAnime(req)
  res.send({
    result
  })
})

module.exports = router
