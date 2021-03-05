//
//  Extensions.swift
//  Pokedex
//
//  Created by Byron on 01/03/21.
//

import UIKit

extension UIColor{
    
    //MARK: - Gradient colors
    
    static func waterGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 85.0/255.0, green: 158.0/255.0, blue: 223.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 85.0/255.0, green: 158.0/255.0, blue: 223.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 105.0/255.0, green: 185.0/255.0, blue: 227.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 105.0/255.0, green: 185.0/255.0, blue: 227.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func setGradient() -> CAGradientLayer {
        let color0 =  UIColor(red: 110.0/255.0, green: 149.0/255.0, blue: 253.0/255.0, alpha: 1.0).cgColor
        let color1 = UIColor(red: 111.0/255.0, green: 222.0/255.0, blue: 250.0/255.0, alpha: 1.0).cgColor
        let color2 = UIColor(red: 141.0/255.0, green: 224.0/255.0, blue: 97.0/255.0, alpha: 1.0).cgColor
        let color3 = UIColor(red: 81.0/255.0, green: 232.0/255.0, blue: 94.0/255.0, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func setGradientBackground(color1: UIColor) -> CAGradientLayer {
        let white = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 250.0/255.0, alpha: 1.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color1, white]
        gradientLayer.locations = [0.0, 1.0]
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }

    
    static func grassGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 95.0/255.0, green: 188.0/255.0, blue: 81.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 95.0/255.0, green: 188.0/255.0, blue: 81.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 90.0/255.0, green: 193.0/255.0, blue: 120.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 90.0/255.0, green: 193.0/255.0, blue: 120.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    
    static func steelGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 82.0/255.0, green: 134.0/255.0, blue: 167.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 82.0/255.0, green: 134.0/255.0, blue: 167.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 88.0/255.0, green: 166.0/255.0, blue: 170.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 88.0/255.0, green: 166.0/255.0, blue: 170.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func rockGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 197.0/255.0, green: 180.0/255.0, blue: 137.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 197.0/255.0, green: 180.0/255.0, blue: 137.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 215.0/255.0, green: 205.0/255.0, blue: 144.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 215.0/255.0, green: 205.0/255.0, blue: 144.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func psychicGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 246.0/255.0, green: 111.0/255.0, blue: 113.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 246.0/255.0, green: 111.0/255.0, blue: 113.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 254.0/255.0, green: 159.0/255.0, blue: 146.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 254.0/255.0, green: 159.0/255.0, blue: 146.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func poisonGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 168.0/255.0, green: 100.0/255.0, blue: 199.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 168.0/255.0, green: 100.0/255.0, blue: 199.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 194.0/255.0, green: 97.0/255.0, blue: 212.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 194.0/255.0, green: 97.0/255.0, blue: 212.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func normalGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 146.0/255.0, green: 152.0/255.0, blue: 164.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 146.0/255.0, green: 152.0/255.0, blue: 164.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 163.0/255.0, green: 164.0/255.0, blue: 158.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 163.0/255.0, green: 164.0/255.0, blue: 158.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func iceGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 112.0/255.0, green: 204.0/255.0, blue: 189.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 112.0/255.0, green: 204.0/255.0, blue: 189.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 140.0/255.0, green: 221.0/255.0, blue: 212.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 140.0/255.0, green: 221.0/255.0, blue: 212.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func groundGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 220.0/255.0, green: 117.0/255.0, blue: 69.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 220.0/255.0, green: 117.0/255.0, blue: 69.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 210.0/255.0, green: 148.0/255.0, blue: 99.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 210.0/255.0, green: 148.0/255.0, blue: 99.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func fightGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 206.0/255.0, green: 66.0/255.0, blue: 101.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 206.0/255.0, green: 66.0/255.0, blue: 101.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 231.0/255.0, green: 67.0/255.0, blue: 71.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 231.0/255.0, green: 67.0/255.0, blue: 71.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    
    static func fairyGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 236.0/255.0, green: 140.0/255.0, blue: 229.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 236.0/255.0, green: 140.0/255.0, blue: 229.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 243.0/255.0, green: 167.0/255.0, blue: 231.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 243.0/255.0, green: 167.0/255.0, blue: 231.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func electricGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 237.0/255.0, green: 213.0/255.0, blue: 62.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 237.0/255.0, green: 213.0/255.0, blue: 62.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 251.0/255.0, green: 226.0/255.0, blue: 115.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 251.0/255.0, green: 226.0/255.0, blue: 115.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    
    static func dragonGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 12.0/255.0, green: 105.0/255.0, blue: 200.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 12.0/255.0, green: 105.0/255.0, blue: 200.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 1.0/255.0, green: 128.0/255.0, blue: 199.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 1.0/255.0, green: 128.0/255.0, blue: 199.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func darkGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 89.0/255.0, green: 87.0/255.0, blue: 97.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 89.0/255.0, green: 87.0/255.0, blue: 97.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 110.0/255.0, green: 117.0/255.0, blue: 135.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 110.0/255.0, green: 117.0/255.0, blue: 135.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func bugGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 146.0/255.0, green: 188.0/255.0, blue: 44.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 146.0/255.0, green: 188.0/255.0, blue: 44.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 175.0/255.0, green: 200.0/255.0, blue: 54.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 175.0/255.0, green: 200.0/255.0, blue: 54.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    
    static func ghostGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 81.0/255.0, green: 106.0/255.0, blue: 172.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 81.0/255.0, green: 106.0/255.0, blue: 172.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 119.0/255.0, green: 115.0/255.0, blue: 212.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 119.0/255.0, green: 115.0/255.0, blue: 212.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    static func flyingGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 144.0/255.0, green: 167.0/255.0, blue: 218.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 144.0/255.0, green: 167.0/255.0, blue: 218.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 166.0/255.0, green: 194.0/255.0, blue: 242.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 166.0/255.0, green: 194.0/255.0, blue: 242.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    
    static func fireGradient() -> CAGradientLayer {
        
        let color0 = UIColor(red: 251.0/255.0, green: 155.0/255.0, blue: 81.0/255.0, alpha: 100.0).cgColor
        let color1 = UIColor(red: 251.0/255.0, green: 155.0/255.0, blue: 81.0/255.0, alpha: 100.0).cgColor
        let color2 = UIColor(red: 251.0/255.0, green: 174.0/255.0, blue: 70.0/255.0, alpha: 100.0).cgColor
        let color3 = UIColor(red: 251.0/255.0, green: 174.0/255.0, blue: 70.0/255.0, alpha: 100.0).cgColor
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color0, color1, color2, color3]
        gradientLayer.locations = [0.0, 0.36, 0.66, 1.0]

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        
                
        return gradientLayer
    }
    
    
    //MARK: - RGB colors
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
           return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
       }
    

    
    static func grass() -> UIColor {
            return UIColor.rgb(red: 93, green: 191, blue: 98)
        }
    static func bug() -> UIColor {
            return UIColor.rgb(red: 158, green: 194, blue: 44)
        }
    static func dark() -> UIColor {
            return UIColor.rgb(red: 95, green: 96, blue: 109)
        }
    static func dragon() -> UIColor {
            return UIColor.rgb(red: 1, green: 116, blue: 200)
        }
    static func electric() -> UIColor {
            return UIColor.rgb(red: 238, green: 214, blue: 61)
        }
    static func fairy() -> UIColor {
            return UIColor.rgb(red: 239, green: 152, blue: 31)
        }
    static func fight() -> UIColor {
            return UIColor.rgb(red: 218, green: 64, blue: 85)
        }
    
    static func fire() -> UIColor {
            return UIColor.rgb(red: 248, green: 167, blue: 78)
        }
    static func flying() -> UIColor {
            return UIColor.rgb(red: 156, green: 181, blue: 233)
        }
    static func ghost() -> UIColor {
            return UIColor.rgb(red: 105, green: 113, blue: 198)
        }
    static func ground() -> UIColor {
            return UIColor.rgb(red: 216, green: 134, blue: 84)
        }
    static func ice() -> UIColor {
            return UIColor.rgb(red: 127, green: 212, blue: 202  )
        }
    static func normal() -> UIColor {
            return UIColor.rgb(red: 155, green: 158, blue: 162)
        }
    static func poison() -> UIColor {
            return UIColor.rgb(red: 182, green: 99, blue: 207)
        }
    static func psychic() -> UIColor {
            return UIColor.rgb(red: 248, green: 125, blue: 123  )
        }
    static func steel() -> UIColor {
            return UIColor.rgb(red: 84, green: 151, blue: 165)
        }
    static func rock() -> UIColor {
            return UIColor.rgb(red: 207, green: 194, blue: 141)
        }
}

extension String {
    func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }
}

