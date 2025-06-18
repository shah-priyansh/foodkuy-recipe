# 🚀 Quick Start - Deploy to Netlify in 5 Minutes

## Prerequisites
- GitHub account
- All project files in the `dynmic-recipes` folder

## Step 1: Create GitHub Repository
1. Go to [GitHub.com](https://github.com)
2. Click "New repository"
3. Name it: `foodkuy-recipe`
4. Make it Public
5. Click "Create repository"

## Step 2: Upload Your Code
```bash
# Navigate to your project directory
cd dynmic-recipes

# Initialize git and push to GitHub
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/foodkuy-recipe.git
git push -u origin main
```

## Step 3: Deploy to Netlify
1. Go to [netlify.com](https://netlify.com)
2. Click "Sign up" and choose "Sign up with GitHub"
3. Click "New site from Git"
4. Choose "GitHub" as your Git provider
5. Select your `foodkuy-recipe` repository
6. Configure build settings:
   - **Build command**: (leave empty)
   - **Publish directory**: `dynmic-recipes`
7. Click "Deploy site"

## Step 4: Your Site is Live! 🎉
- Your site will be available at: `https://random-name.netlify.app`
- You can customize the URL in Netlify settings
- Every time you push changes to GitHub, your site will automatically update

## Custom Domain (Optional)
1. In Netlify dashboard, go to "Domain settings"
2. Click "Add custom domain"
3. Enter your domain name
4. Follow the DNS configuration instructions

## Troubleshooting
- If images don't load, check that all paths are relative
- If you get a 404, make sure `index.html` exists in the `dynmic-recipes` folder
- Check the browser console for any JavaScript errors

## Need Help?
- Check the full `DEPLOYMENT.md` guide
- Run `./deploy.sh` for interactive deployment help
- Contact support if you encounter issues

---

**That's it! Your Foodkuy recipe website is now live on the internet! 🌐** 