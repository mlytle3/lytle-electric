# Website Performance Optimization Guide

## Image Optimization Checklist
- [ ] Convert large images to WebP format
- [ ] Compress JPEG images to 85% quality
- [ ] Resize images to appropriate dimensions
- [ ] Use responsive images with srcset

## Current Large Images to Optimize:
Looking at your file structure, these files should be optimized:

### High Priority (likely large files):
- `EB-Lytle.mp4` - Consider compressing or using a thumbnail
- `2021_Logo_black.jpg` - Could be converted to PNG for better quality
- `BBB-logo-horizontal-desktop-JPG.jpg` - Optimize for web
- Various badge images

### Commands to check file sizes:
```powershell
# Check file sizes (run in PowerShell)
Get-ChildItem *.jpg, *.png | Select-Object Name, @{Name="Size(KB)";Expression={[math]::Round($_.Length/1KB,2)}} | Sort-Object "Size(KB)" -Descending
```

## Performance Best Practices:
1. **Enable gzip compression** on your web server
2. **Minify CSS and JavaScript** before production
3. **Use a CDN** for faster global delivery
4. **Implement lazy loading** for images
5. **Add cache headers** for static assets

## Free Tools for Optimization:
1. **TinyPNG.com** - Image compression
2. **Google PageSpeed Insights** - Performance testing
3. **GTmetrix** - Detailed performance analysis
4. **WebP Converter** - Modern image format

## Next Steps:
1. Run the image optimizer tool (`image-optimizer.html`)
2. Test your site with Google PageSpeed Insights
3. Compress your largest image files
4. Consider creating thumbnail versions of large images
