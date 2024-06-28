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

const createAnimeDB = async ({
  animeId,
  animeName,
  animeDescription,
}) => {
  let newAnime = {};
  newAnime[Anime.dbProperties.animeId] = animeId
  newAnime[Anime.dbProperties.animeName] = animeName
  newAnime[Anime.dbProperties.animeDescription] = animeDescription

  return await knex.insert(newAnime).into(Anime.tableName)
}

const updateAnimeDB = async ({
  animeId,
  animeName,
  animeDescription,
}) => {
  const updatedAnime = {}
  updatedAnime[Anime.dbProperties.animeId] = animeId
  updatedAnime[Anime.dbProperties.animeName] = animeName
  updatedAnime[Anime.dbProperties.animeDescription] = animeDescription
  
  const where = {}
  where[Anime.dbProperties.animeId] = animeId
  return await knex(Anime.tableName).where(where).update(
    updatedAnime
  );
}

module.exports = {
  getAnimesDB,
  createAnimeDB,
  updateAnimeDB,
}
