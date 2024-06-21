require('dotenv').config();
const express = require('express');
const { 
  connectToDatabase,
  disconnectFromDatabase,
  getDBConnection
} = require('./config/db');

const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.get('/anime/:id?', async (req, res) => {
  const { id: animeId } = req.params;
  const db = await getDBConnection();

  try {
    const query = animeId ? 'select * from `tb_anime` where `anime_id` = ?' : 'select * from `tb_anime`'
    const [results] = await db.query(
      query,
      [animeId]
    );
  
    console.log(results); // results contains rows returned by server
    res.json({
      animes: results
    });
  } catch (err) {
    console.log(err);
    res.status(500).send(err);
  }
});

app.post('/anime', async (req, res) => {
  const { body: anime } = req;
  const db = await getDBConnection();

  try {
    const [results] = await db.query(
      'INSERT INTO `tb_anime` SET ?',
      anime
    );
  
    console.log(results);
    res.json({
      animes: results
    });
  } catch (err) {
    console.log(err);
    res.status(500).send(err);
  }
});

app.delete('/anime/:id', async (req, res) => {
  const { id: animeId } = req.params;
  const db = await getDBConnection();

  try {
    const query = 'DELETE from `tb_anime` where `anime_id` = ?'
    const [results] = await db.query(
      query,
      [animeId]
    );
  
    console.log(results); // results contains rows returned by server
    res.json({
      animes: results
    });
  } catch (err) {
    console.log(err);
    res.status(500).send(err);
  }
});

const PORT = process.env.PORT || 3000;

const shutdown = async (status = 1) => {
  console.log('Shutdown');
  await disconnectFromDatabase();
  process.exit(status);
}

app.listen(PORT, async () => {
  try {
    await connectToDatabase();
  } catch (error) {
    shutdown(1);
  }
  console.log('App is listening at', PORT);
});
