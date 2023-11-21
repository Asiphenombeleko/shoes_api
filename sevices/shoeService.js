export default function AllShoes(db) {
  // async function insertShoes(
  //   brand_name,
  //   shoe_name,
  //   shoe_size,
  //   stock_quantity,
  //   color,
  //   price,
  //   image_url
  // ) {
  //   return await db.one(
  //     "INSERT INTO shoes (brand_name, shoe_name, shoe_size, stock_quantity, color, price, image_url) " +
  //       "VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING *",
  //     [
  //       brand_name,
  //       shoe_name,
  //       shoe_size,
  //       stock_quantity,
  //       color,
  //       price,
  //       image_url,
  //     ]
  //   );
  // }

  async function getAllShoes() {
    let results = await db.manyOrNone(`SELECT * FROM shoes`);
    return results
  }

  async function getShoesByBrand(brand_name) {
    const result = await db.any("SELECT * FROM shoes WHERE brand_name = $1", [
      brand_name,
    ]);
    return result;
  }

  async function getShoesBySize(shoe_size) {
    const result = await db.any("SELECT * FROM shoes WHERE shoe_size = $1", [
      shoe_size,
    ]);
    return result;
  }

  async function getShoesByBrandAndSize(brand_name, shoe_size) {
    const result = await db.any(
      "SELECT * FROM shoes WHERE brand_name = $1 AND shoe_size = $2",
      [brand_name, shoe_size]
    );
    return result;
  }

  async function updateStockById(id) {
    return await db.none(
      "UPDATE shoes SET stock_quantity = stock_quantity - 1 WHERE id = $1",
      [id]
    );
  }

  async function addNewShoe(shoe) {
    const { color, brand_name,image_url, price, shoe_size, stock_quantity } = shoe;

    await db.none(
      "INSERT INTO shoes (color, brand_name,image_url, price, shoe_size, stock_quantity) VALUES ($1, $2, $3, $4, $5, $6)",
      [color, brand_name,image_url, price, shoe_size, stock_quantity]
    );
  }
  return {
    getAllShoes,
    getShoesByBrand,
    getShoesBySize,
    getShoesByBrandAndSize,
    updateStockById,
    addNewShoe,
  };
}
