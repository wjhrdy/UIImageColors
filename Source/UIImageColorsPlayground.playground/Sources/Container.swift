import UIKit

public class Album {
    public let albumFile: String
    public let albumName: String
    public let artistName: String
    public let year: Int
    
    public init(albumFile: String, albumName: String, artistName: String, year: Int) {
        self.albumFile = albumFile
        self.albumName = albumName
        self.artistName = artistName
        self.year = year
    }
}

public class Container: UIView {
    
    public init(album: Album) {
        super.init(frame: CGRectMake(0, 0, 360, 100))
        
        let albumImageView = UIImageView(frame: CGRectMake(0, 0, self.frame.height, self.frame.height))
        albumImageView.image = UIImage(named: album.albumFile)
        self.addSubview(albumImageView)
        
        let albumTitle = UILabel()
        albumTitle.font = UIFont(name: "Helvetica-Bold", size: 14)
        albumTitle.text = album.albumName
        albumTitle.sizeToFit()
        self.addSubview(albumTitle)
        
        let artistTitle = UILabel()
        artistTitle.font = UIFont(name: "Helvetica-Bold", size: albumTitle.font.pointSize*0.75)
        artistTitle.text = album.artistName
        artistTitle.sizeToFit()
        self.addSubview(artistTitle)
        
        let yearLabel = UILabel()
        yearLabel.font = artistTitle.font
        yearLabel.text = " · \(album.year)"
        yearLabel.sizeToFit()
        self.addSubview(yearLabel)
        
        // Set frames
        let labelHeight = artistTitle.frame.height
        
        albumTitle.frame.size.width = self.frame.width - albumImageView.frame.width - (labelHeight * 2)
        albumTitle.frame.origin = CGPointMake(floor(albumImageView.frame.width + labelHeight), floor(self.frame.height/2 - labelHeight))
        
        artistTitle.frame.origin = CGPointMake(albumTitle.frame.origin.x, floor(albumTitle.frame.origin.y + labelHeight*1.5))
        
        yearLabel.frame.origin = CGPointMake(artistTitle.frame.origin.x + artistTitle.frame.width, artistTitle.frame.origin.y)
        
        // Set colors
        let colors = albumImageView.image!.getColors()
        self.backgroundColor = colors.backgroundColor
        albumTitle.textColor = colors.primaryColor
        artistTitle.textColor = colors.secondaryColor
        yearLabel.textColor = colors.detailColor
    }

    required public init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}