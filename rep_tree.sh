
echo "Scanning repository structure..."
find . -path "./node_modules" -prune -o -path "./.git" -prune -o -print | sed -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'

