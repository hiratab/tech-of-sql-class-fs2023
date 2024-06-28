const knex = require('../config/db')

const Anime = require('../enitities/Anime')

const getAnimesDB = async (animeId) => {
  const query = knex
          .select(Anime.dbProperties)
          .from(Anime.tableName)

  if (animeId) {
    query.where(Anime.dbProperties.animeId, animeId)
  }

  return query
}

module.exports = {
  getAnimesDB
}
