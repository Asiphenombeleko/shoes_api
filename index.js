import express from 'express'
import { engine } from 'express-handlebars'
import bodyParser from 'body-parser'
import flash from 'express-flash'
import session from 'express-session'
import 'dotenv/config';
















const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
  console.log("listen at localhost:", PORT);
})