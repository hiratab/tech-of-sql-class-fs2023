require('dotenv').config()
const express = require('express');
const { connectToDatabase } = require('./config/MySql');

const app = express();

const PORT = process.env.PORT || 3000;

app.listen(PORT, async () => {
  await connectToDatabase();
  console.log('App is listening at', PORT);
});
