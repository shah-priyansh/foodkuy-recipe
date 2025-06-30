# Bakine tajne - Recipe Website

A beautiful, responsive recipe website featuring traditional Hrvatski and natural health recipes.

## Features

- 🍽️ **Recipe Categories**: Detoks, Imunitet, Koža&Kosa, Srce i krvotok, Stres&san, Hrvatski
- 📱 **Responsive Design**: Works perfectly on desktop, tablet, and mobile devices
- 🔍 **Search Functionality**: Find recipes easily with the search feature
- ❤️ **Favoriti**: Save your favorite recipes
- 📖 **Detailed Recipe Pages**: Complete recipe instructions and ingredients
- 🎨 **Modern UI**: Beautiful, user-friendly interface

## Pages

- **Homepage** (`homepage.html`) - Main landing page with featured recipes
- **Recipe List** (`news_list.html`) - Browse recipes by category
- **Recipe Detail** (`recipe_page.html`) - Individual recipe pages
- **Favoriti** (`favorite.html`) - Saved favorite recipes
- **About** (`single_page.html`) - About page

## Technology Stack

- HTML5
- CSS3
- JavaScript (jQuery)
- Bootstrap 4.3.1
- Slick Carousel
- Font Awesome Icons

## Deployment

This project can be deployed to any static hosting service. Here are the recommended options:

### Netlify (Recommended)
1. Create a GitHub repository and push your code
2. Go to [netlify.com](https://netlify.com) and sign up
3. Click "New site from Git"
4. Connect your GitHub repository
5. Deploy settings:
   - Build command: (leave empty)
   - Publish directory: `dynmic-recipes`
6. Click "Deploy site"

### Vercel
1. Install Vercel CLI: `npm i -g vercel`
2. Navigate to project directory: `cd dynmic-recipes`
3. Run: `vercel`
4. Follow the prompts

### GitHub Pages
1. Create a GitHub repository
2. Push your code to the repository
3. Go to Settings > Pages
4. Select source branch (usually `main`)
5. Set folder to `/dynmic-recipes`
6. Save

## Local Development

To run this project locally:

1. Clone the repository
2. Navigate to the project directory
3. Start a local server:
   ```bash
   # Using Python
   python -m http.server 8000
   
   # Using Node.js
   npx serve .
   
   # Using PHP
   php -S localhost:8000
   ```
4. Open `http://localhost:8000` in your browser

## Project Structure

```
dynmic-recipes/
├── index.html              # Entry point (redirects to homepage)
├── homepage.html           # Main homepage
├── news_list.html          # Recipe category pages
├── recipe_page.html        # Individual recipe pages
├── favorite.html           # Favoriti page
├── single_page.html        # About page
├── 404.html               # Error page
├── css/                   # Stylesheets
├── js/                    # JavaScript files
├── lib/                   # Third-party libraries
├── img/                   # General images
├── Recepti/               # Recipe images and documents
│   ├── Detoks/
│   ├── Imunitet/
│   ├── Koža&Kosa/
│   ├── Srce i krvotok/
│   ├── Stres&san/
│   ├── Hrvatski/
│   └── Zdravi_Vodici/
└── favicon.ico            # Website icon
```

## License

This project is open source and available under the [MIT License](LICENSE).

## Support

For support or questions, please open an issue in the GitHub repository. 