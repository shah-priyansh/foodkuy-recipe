#!/bin/bash

# Foodkuy Recipe Website Deployment Script
# This script helps you prepare and deploy your website

echo "🍽️  Foodkuy Recipe Website Deployment Script"
echo "=============================================="

# Check if we're in the right directory
if [ ! -f "homepage.html" ]; then
    echo "❌ Error: Please run this script from the dynmic-recipes directory"
    exit 1
fi

echo "✅ Found project files"

# Check for required files
required_files=("index.html" "homepage.html" "news_list.html" "recipe_page.html" "favorite.html" "single_page.html" "404.html")
missing_files=()

for file in "${required_files[@]}"; do
    if [ ! -f "$file" ]; then
        missing_files+=("$file")
    fi
done

if [ ${#missing_files[@]} -ne 0 ]; then
    echo "❌ Missing required files:"
    for file in "${missing_files[@]}"; do
        echo "   - $file"
    done
    exit 1
fi

echo "✅ All required files found"

# Check for directories
required_dirs=("css" "js" "lib" "img" "Recepti")
missing_dirs=()

for dir in "${required_dirs[@]}"; do
    if [ ! -d "$dir" ]; then
        missing_dirs+=("$dir")
    fi
done

if [ ${#missing_dirs[@]} -ne 0 ]; then
    echo "❌ Missing required directories:"
    for dir in "${missing_dirs[@]}"; do
        echo "   - $dir"
    done
    exit 1
fi

echo "✅ All required directories found"

# Initialize git if not already done
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit"
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

echo ""
echo "🚀 Deployment Options:"
echo "1. Netlify (Recommended)"
echo "2. Vercel"
echo "3. GitHub Pages"
echo "4. Render"
echo "5. Surge.sh"
echo ""
read -p "Choose deployment option (1-5): " choice

case $choice in
    1)
        echo ""
        echo "🌐 Deploying to Netlify..."
        echo "1. Go to https://netlify.com"
        echo "2. Sign up/Login with GitHub"
        echo "3. Click 'New site from Git'"
        echo "4. Choose GitHub and select your repository"
        echo "5. Set publish directory to: dynmic-recipes"
        echo "6. Click 'Deploy site'"
        ;;
    2)
        echo ""
        echo "⚡ Deploying to Vercel..."
        if command -v vercel &> /dev/null; then
            echo "Running Vercel deployment..."
            vercel
        else
            echo "Installing Vercel CLI..."
            npm install -g vercel
            echo "Now run: vercel"
        fi
        ;;
    3)
        echo ""
        echo "📚 Deploying to GitHub Pages..."
        echo "1. Create a GitHub repository"
        echo "2. Push your code:"
        echo "   git remote add origin https://github.com/yourusername/your-repo.git"
        echo "   git push -u origin main"
        echo "3. Go to repository Settings > Pages"
        echo "4. Set source to 'main' branch, folder: '/dynmic-recipes'"
        ;;
    4)
        echo ""
        echo "🎨 Deploying to Render..."
        echo "1. Go to https://render.com"
        echo "2. Sign up with GitHub"
        echo "3. Click 'New +' > 'Static Site'"
        echo "4. Connect your repository"
        echo "5. Set publish directory to: dynmic-recipes"
        ;;
    5)
        echo ""
        echo "🚀 Deploying to Surge.sh..."
        if command -v surge &> /dev/null; then
            echo "Running Surge deployment..."
            surge
        else
            echo "Installing Surge..."
            npm install -g surge
            echo "Now run: surge"
        fi
        ;;
    *)
        echo "❌ Invalid option"
        exit 1
        ;;
esac

echo ""
echo "🎉 Deployment instructions completed!"
echo "Check the DEPLOYMENT.md file for detailed instructions."
echo ""
echo "📝 Next steps:"
echo "1. Follow the deployment instructions above"
echo "2. Test your website after deployment"
echo "3. Share your live URL with others!" 