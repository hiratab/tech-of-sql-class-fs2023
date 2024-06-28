const { getAnimesDB, createAnimeDB, updateAnimeDB } = require('../repository/animeRepository')

const getAnimes = async (req) => {
  const { animeId } = req.params
  return await getAnimesDB(animeId)
}

const createAnime = async (req) => {
  const anime = req.body
  return await createAnimeDB(anime)
}

const updateAnime = async (req) => {
  const anime = req.body
  return await updateAnimeDB(anime)
}

module.exports = {
  getAnimes,
  createAnime,
  updateAnime
}
