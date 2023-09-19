db.createCollection('users');

db.createCollection('products');

db.createCollection('orders')

db.createCollection('order_details')

db.createCollection('admin')

db.createCollection('categories')

db.createCollection('product_categories')

db.users.insertMany([
    {
        _id: 1,
        name: "Jimmy Hendrix",
        email: "jimmy@gmail.com",
        password: "222hdjkll",
        contact: "089922233",
        phone_number: "09088776655",
        createdAt: new Date()
    },
    {
        _id: 2,
        name: "Wale Cooks",
        email: "cooks@gmail.com",
        password: "eedjkll",
        contact: "0894442233",
        phone_number: "07088776655",
        createdAt: new Date()
    },
    {
        _id: 3,
        name: "Rin Jax",
        email: "rinjx@gmail.com",
        password: "22djkll",
        contact: "0822233",
        phone_number: "0908855655",
        createdAt: new Date()
    }
]);

db.users.find({})

db.products.insertMany([
    {
        _id: 1,
        name: "Hard Drive",
        size: "Large",
        category: "Gadgets",
        description: "1TB Space",
        price: "15,000",
        stock_quantity: "30"
    },
    {
        _id: 2,
        name: "Phone",
        size: "Small",
        category: "Gadgets",
        description: "Tecno",
        price: "40,000",
        stock_quantity: "10"
    },
    {
        _id: 3,
        name: "Hair dryer",
        size: "Medium",
        category: "Appliances",
        description: "Hot air dryer",
        price: "10,000",
        stock_quantity: "15"
    }
]);

db.products.find({})

db.users.update(
    { _id: 1, },
    { $set: { name: 'Victor', phone_number: '+234 56 78 5566' } }
);

db.products.updateOne(
    { _id: 2, },
    { $set: { price: '20,000', stock_quantity: '5' } }
);

db.products.deleteOne(
    { _id: 3, }
);

db.users.deleteOne(
    { _id: 2, }
);