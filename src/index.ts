import express, { Express, Request, Response } from 'express';
import cors from 'cors';
import "dotenv/config";
import routes from "./routes/index";
import morgan from 'morgan';


const app : Express = express();

app.use(express.json());
app.use(cors());
app.use(morgan("dev"));

app.use('/card', routes.card);


app.get("/", (req, res) => {
  return res.send("Please use the correct route.");
});

const port =3000;


app.listen(port, () =>
  console.log(`Poke Express listening on port 3000!`)
);
