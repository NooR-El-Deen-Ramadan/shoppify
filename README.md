# Shoppify 🛍️

**Your Premium Shopping Experience**

A modern mobile e-commerce application built with a focus on electronics and tech gadgets, featuring a beautiful gradient UI and comprehensive shopping functionality.

## 📱 Screenshots

| Home Screen | Login | Sign Up | Products |
|-------------|-------|---------|----------|
| ![Home](screenshots/home.png) | ![Login](screenshots/login.png) | ![SignUp](screenshots/signup.png) | ![Products](screenshots/products.png) |

## ✨ Features

### 🛒 **Core Shopping Experience**
- Browse featured products with high-quality images
- Product categories (Laptops, PC Cases, etc.)
- Detailed product listings with prices
- Shopping cart functionality
- Secure checkout process

### 🎨 **Modern UI/UX**
- Beautiful gradient backgrounds (Purple to Pink)
- Clean, intuitive interface
- Responsive mobile design
- Smooth animations and transitions
- Contemporary purple-themed branding

### 🔐 **User Authentication**
- User registration with email validation
- Secure login system
- Password confirmation
- "Forgot Password" functionality
- Form validation with error messages

### 💰 **Promotions & Offers**
- **50% OFF** electronics - Limited time offer on all tech gadgets
- **FREE SHIPPING** - No delivery charges on orders above $50
- **Buy 2 Get 1 Free** - On selected accessories and peripherals
- **Student Discount** - Extra 20% off with valid student ID

### 📦 **Product Categories**
- **Laptops** - Dell G15 ($700), HP Victus ($500)
- **PC Cases** - Asus ROG Case ($300), Asus Strix Case ($400)
- Gaming accessories and peripherals
- Tech gadgets and electronics

## 🛠️ Tech Stack

- **Frontend**: React Native / Flutter (Mobile)
- **Backend**: Node.js / Express
- **Database**: MongoDB / PostgreSQL
- **Authentication**: JWT
- **Payment**: Stripe / PayPal integration
- **State Management**: Redux / Context API
- **Navigation**: React Navigation

## 🚀 Getting Started

### Prerequisites
```bash
- Node.js (v14 or higher)
- npm or yarn
- React Native CLI / Flutter SDK
- Android Studio / Xcode
```

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/NooR-El-Deen-Ramadan/shoppify.git
cd shoppify
```

2. **Install dependencies**
```bash
npm install
# or
yarn install
```

3. **Font Setup**
```bash
# Make sure Suwannaphum font is properly installed
# For React Native: Place font files in android/app/src/main/assets/fonts/
# For Flutter: Add to pubspec.yaml under fonts section
```

4. **Environment Setup**
```bash
cp .env.example .env
# Configure your environment variables
```

4. **Run the application**

For React Native:
```bash
# iOS
npx react-native run-ios

# Android
npx react-native run-android
```

For Flutter:
```bash
flutter run
```

## 📁 Project Structure

```
shoppify/
├── src/
│   ├── components/          # Reusable UI components
│   ├── screens/            # App screens
│   │   ├── AuthScreens/    # Login, Register
│   │   ├── HomeScreen/     # Main dashboard
│   │   ├── ProductScreens/ # Product listing, details
│   │   └── CartScreen/     # Shopping cart
│   ├── navigation/         # Navigation configuration
│   ├── services/          # API calls and business logic
│   ├── utils/             # Helper functions
│   └── assets/            # Images, fonts (Suwannaphum), etc.
├── package.json
└── README.md
```

## 🎨 Design System

### Color Palette
- **Primary Gradient**: `linear-gradient(135deg, #8B5CF6 0%, #EC4899 100%)`
- **Purple**: `#8B5CF6`
- **Pink**: `#EC4899`
- **White**: `#FFFFFF`
- **Gray**: `#6B7280`

### Typography
- **Primary Font**: Suwannaphum
- **Headers**: Bold Suwannaphum for distinctive branding
- **Body Text**: Regular Suwannaphum for readability
- **Buttons**: Medium weight Suwannaphum, clean presentation

## 🔧 Configuration

### Environment Variables
```env
API_BASE_URL=https://api.shoppify.com
STRIPE_PUBLISHABLE_KEY=pk_test_...
GOOGLE_ANALYTICS_ID=GA_...
```

## 📈 Features Roadmap

- [ ] **Wishlist functionality**
- [ ] **Product reviews and ratings**
- [ ] **Push notifications**
- [ ] **Social media integration**
- [ ] **Advanced search and filters**
- [ ] **Order tracking**
- [ ] **Multi-language support**
- [ ] **Dark mode theme**

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## 🛡️ Security

- Input validation and sanitization
- Secure password hashing
- JWT token authentication
- HTTPS encryption
- Regular security audits

## 📞 Support

For support and queries:
- 📧 Email: support@shoppify.com
- 🐛 Issues: [GitHub Issues](https://github.com/NooR-El-Deen-Ramadan/shoppify/issues)
- 💬 Discussions: [GitHub Discussions](https://github.com/NooR-El-Deen-Ramadan/shoppify/discussions)

## 🙏 Acknowledgments

- Design inspiration from modern e-commerce apps
- Icons from [Lucide React](https://lucide.dev/)
- Images and assets from [Unsplash](https://unsplash.com/)

---

**Made with ❤️ by [NooR El-Deen Ramadan](https://github.com/NooR-El-Deen-Ramadan)**

*Shoppify - Transforming mobile shopping experiences*
