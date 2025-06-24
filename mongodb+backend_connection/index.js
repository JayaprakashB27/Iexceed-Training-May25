// index.js
const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());


const mongoURI ='mongodb+srv://mongodb:mongo123@cluster0.jqzk1i9.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0';
//'mongodb+srv://mongodb:mongo123@<cluster-url>/Ecommerce_Application?retryWrites=true&w=majority';
mongoose.connect(mongoURI)
  .then(() => console.log('✅ Connected to MongoDB Atlas'))
  .catch((err) => console.error('❌ MongoDB connection error:', err));

// Example schema
const UserSchema = new mongoose.Schema({
  name: String,
  email: String,
});
const User = mongoose.model('User', UserSchema);

// API Routes
app.get('/users', async (req, res) => {
  const users = await User.find();
  res.json(users);
});

app.post('/users', async (req, res) => {
  const newUser = new User(req.body);
  await newUser.save();
  res.json(newUser);
});


// Start the server
app.listen(3000, () => console.log('🚀 Server running on http://localhost:3000'));


/* ======================
   ✅ Product Schema here
   ====================== */
const ProductSchema = new mongoose.Schema({
  productid: String,
  name: String,
  price: String,
  status: String,
  orderdate: String,
  shipdate: String,
  deliverydate: String
});

const Product = mongoose.model('Product', ProductSchema);

/* ======================
   ✅ Product CRUD Routes
   ====================== */

// Create a new product
app.post('/products', async (req, res) => {
  try {
    const newProduct = new Product(req.body);
    await newProduct.save();
    res.json(newProduct);
  } catch (err) {
    res.status(500).send('Error creating product');
  }
});

// Read all products
app.get('/products', async (req, res) => {
  const products = await Product.find();
  res.json(products);
});

// Read one product by ID
app.get('/products/:id', async (req, res) => {
  try {
    const product = await Product.findById(req.params.id);
    if (!product) return res.status(404).send('Product not found');
    res.json(product);
  } catch {
    res.status(400).send('Invalid ID');
  }
});

// Update a product by ID
app.put('/products/:id', async (req, res) => {
  try {
    const updated = await Product.findByIdAndUpdate(req.params.id, req.body, { new: true });
    if (!updated) return res.status(404).send('Product not found');
    res.json(updated);
  } catch {
    res.status(400).send('Invalid ID');
  }
});

// Delete a product by ID
app.delete('/products/:id', async (req, res) => {
  try {
    const deleted = await Product.findByIdAndDelete(req.params.id);
    if (!deleted) return res.status(404).send('Product not found');
    res.send('Product deleted');
  } catch {
    res.status(400).send('Invalid ID');
  }
});
