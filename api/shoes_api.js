export default function shoeApi(service) {
  
    async function apis(req, res) {
    res.json("Shoe API");
  }
  async function allShoes(req, res) {
    let allData = await service.getAllShoes();
    res.json({
      data: allData,
    });
  }
  async function shoesByBrand(req, res) {
    const brandName = req.params.brandname;
    
      let shoesByBrand = await service.getShoesByBrand(
        brandName
      );
      res.json({
        status: "success",
        data: shoesByBrand,
      });

  }

  async function shoesBySize(req, res) {
    const size = req.params.size;

      let shoesBySize = await service.getShoesBySize(size);
      res.json({
        status: "success",
        data: shoesBySize,
      });
   
  }

  async function shoesByBrandAndSize(req, res) {
    const brandName = req.params.brandname;
    const size = req.params.size;
   
      let shoesByBrandAndSize =
        await service.getShoesByBrandAndSize(brandName, size);
      res.json({
        status: "success",
        data: shoesByBrandAndSize,
      });
  
  }

  async function soldShoes(req, res) {
    const shoeId = req.params.id;
    
      await service.update_sold_shoes(shoeId);
      res.json({
        status: "success",
        message: "Shoe sold",
      });
   
  }

  async function insert(req, res) {
    const { brand_name, shoe_size, stock_quantity, color, price, image_url } =
      req.body;
   console.log(brand_name);
      const insertShoes = await service.addNewShoe({
        brand_name,
        shoe_size,
        stock_quantity,
        color,
        price,
        image_url
      }
      );
      res.status(201).json({
        status: "success",
        data: insertShoes,
      });
  }

  return {
    apis,
    allShoes,
    shoesByBrand,
    shoesBySize,
    shoesByBrandAndSize,
    soldShoes,
    insert,
  };
}
