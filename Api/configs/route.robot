*** Variables ***
${refrehsToken}        /auth/v1/token?grant_type=password
${getProduct}          /rest/v1/products?select=id%2Ctitle%2Cimage%2Cprice
${getCard}             /rest/v1/cart_items?select=quantity%2Cproduct%3Aproducts%28id%2Ctitle%2Ccategory%2Cimage%2Cprice%29&order=created_at.desc
${rpc/AddToCard}       /rest/v1/rpc/add_to_cart