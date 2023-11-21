import express from "express";
import { engine } from "express-handlebars";
import bodyParser from "body-parser";
import flash from "express-flash";
import session from "express-session";
import "dotenv/config";
import cors from "cors";
import service from "./sevices/shoeService.js";
import data from "./api/shoes_api.js";
import connect from "./db/dbconnection.js";

const app = express();
const shoeService = service(connect);
const apiData = data(shoeService);

app.engine(
  "handlebars",
  engine({
    layoutsDir: "./views/layouts",
  })
);

app.set("view engine", "handlebars");
app.set("views", "./views");
app.use(express.static("public"));

app.use(bodyParser.urlencoded({ extended: false }));

app.use(bodyParser.json());

app.use(cors());
app.use(
  session({
    resave: false,
    saveUninitialized: true,
    secret: "Asiphe's",
  })
);
// session middleware
app.use(flash());

app.get("/", apiData.apis);
app.get("/api/shoes", apiData.allShoes);
app.get("/api/brand/:brandname", apiData.shoesByBrand);
app.get("/api/shoes/size/:size", apiData.shoesBySize);
app.get("/api/shoes/brand/:brandname/size/:size",apiData.shoesByBrandAndSize);
app.post("/api/shoes/sold/:id", apiData.soldShoes);
app.post("/api/shoes/add", apiData.insert)

const PORT = process.env.PORT || 3007;
app.listen(PORT, () => {
  console.log("listen at localhost:", PORT);
});
