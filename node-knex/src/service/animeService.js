const { getAnimesDB } = require('../repository/animeRepository')

const getAnimes = async (req) => {
  const { animeId } = req.params
  return await getAnimesDB(animeId)
}

module.exports = {
  getAnimes
}
