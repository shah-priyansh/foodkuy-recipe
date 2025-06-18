# Deployment Guide

This guide will help you deploy your Foodkuy recipe website to various free hosting platforms.

## Option 1: Netlify (Recommended - Easiest)

### Step 1: Prepare Your Code
1. Make sure all your files are in the `dynmic-recipes` folder
2. Create a GitHub repository (if you haven't already)

### Step 2: Push to GitHub
```bash
# Initialize git repository
git init

# Add all files
git add .

# Commit changes
git commit -m "Initial commit"

# Add remote repository (replace with your GitHub repo URL)
git remote add origin https://github.com/yourusername/your-repo-name.git

# Push to GitHub
git push -u origin main
```

### Step 3: Deploy to Netlify
1. Go to [netlify.com](https://netlify.com)
2. Sign up/Login with your GitHub account
3. Click "New site from Git"
4. Choose GitHub as your Git provider
5. Select your repository
6. Configure build settings:
   - **Build command**: Leave empty
   - **Publish directory**: `dynmic-recipes`
7. Click "Deploy site"
8. Wait for deployment (usually takes 1-2 minutes)
9. Your site will be live at a URL like: `https://random-name.netlify.app`

### Step 4: Custom Domain (Optional)
1. In your Netlify dashboard, go to "Domain settings"
2. Click "Add custom domain"
3. Follow the instructions to configure your domain

## Option 2: Vercel

### Step 1: Install Vercel CLI
```bash
npm install -g vercel
```

### Step 2: Deploy
```bash
# Navigate to your project directory
cd dynmic-recipes

# Deploy
vercel

# Follow the prompts:
# - Set up and deploy? Y
# - Which scope? (select your account)
# - Link to existing project? N
# - What's your project's name? foodkuy-recipe
# - In which directory is your code located? ./
# - Want to override the settings? N
```

### Step 3: Access Your Site
Your site will be deployed to a URL like: `https://foodkuy-recipe.vercel.app`

## Option 3: GitHub Pages

### Step 1: Create GitHub Repository
1. Go to GitHub and create a new repository
2. Name it something like `foodkuy-recipe`

### Step 2: Push Your Code
```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/yourusername/foodkuy-recipe.git
git push -u origin main
```

### Step 3: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click "Settings"
3. Scroll down to "Pages" section
4. Under "Source", select "Deploy from a branch"
5. Choose "main" branch
6. Set folder to `/dynmic-recipes`
7. Click "Save"

### Step 4: Access Your Site
Your site will be available at: `https://yourusername.github.io/foodkuy-recipe`

## Option 4: Render

### Step 1: Create Render Account
1. Go to [render.com](https://render.com)
2. Sign up with your GitHub account

### Step 2: Deploy Static Site
1. Click "New +" and select "Static Site"
2. Connect your GitHub repository
3. Configure:
   - **Name**: foodkuy-recipe
   - **Build Command**: Leave empty
   - **Publish Directory**: `dynmic-recipes`
4. Click "Create Static Site"

### Step 3: Access Your Site
Your site will be available at: `https://foodkuy-recipe.onrender.com`

## Option 5: Surge.sh

### Step 1: Install Surge
```bash
npm install -g surge
```

### Step 2: Deploy
```bash
# Navigate to your project directory
cd dynmic-recipes

# Deploy
surge

# Follow the prompts:
# - Project path: ./
# - Domain: your-project-name.surge.sh
# - Email: your-email@example.com
# - Password: (create a password)
```

## Troubleshooting

### Common Issues:

1. **Images not loading**: Make sure all image paths are relative and correct
2. **404 errors**: Ensure `index.html` exists in the root directory
3. **CSS/JS not loading**: Check that all file paths are correct
4. **Mobile responsiveness**: Test on different screen sizes

### File Structure Check:
Make sure your project structure looks like this:
```
dynmic-recipes/
├── index.html
├── homepage.html
├── news_list.html
├── recipe_page.html
├── favorite.html
├── single_page.html
├── 404.html
├── css/
├── js/
├── lib/
├── img/
├── Recepti/
└── favicon.ico
```

### Performance Tips:
1. Optimize images before uploading
2. Minify CSS and JavaScript files
3. Enable gzip compression (usually automatic on hosting platforms)
4. Use a CDN for better performance

## Support

If you encounter any issues during deployment:
1. Check the hosting platform's documentation
2. Verify all file paths are correct
3. Test locally first using a local server
4. Check browser console for errors

## Recommended Hosting Platform

**Netlify** is recommended because:
- ✅ Free tier is generous
- ✅ Automatic deployments from Git
- ✅ Custom domains
- ✅ SSL certificates included
- ✅ Global CDN
- ✅ Easy to use interface
- ✅ Great performance 