#name: mordekai courtney bricker
#date: October 13th, 2023
#Editor Note:  setMediaPath is already in the program as line 5, please copy your media path there instead of the command area

setMediaPath(r"C:\Users\Morde\OneDrive\Desktop\...-files\CompSci\project2")
ori = makePicture(getMediaPath("greekRuins.jpg"))
  
def collage():
  #main
  collage = makeEmptyPicture(1000, 730)
  originPic = duplicatePicture(ori)
  originPic2 = duplicatePicture(ori)
  originPic3 = duplicatePicture(ori)
  originPic4 = duplicatePicture(ori)
  originPic5 = duplicatePicture(ori)
  originPic6 = duplicatePicture(ori)
  
    #negative pic
  negPic = negative(originPic6)
  largeNegPic = scale(negPic, 2.03)
  copyInto(largeNegPic, collage, 0, 0)
    
    #greyscale pic
  greyPic = greyscale(originPic5)
  largeGreyPic = scale(greyPic, 1.755)
   #mirror Greyscale
  mirrorGrey = mirror(largeGreyPic)
  copyInto(mirrorGrey, collage, 0, 0)
  
    #color swapped pic
  colorSwapPic = colorSwap(originPic)
  largeColorSwap = scale(colorSwapPic, 1.5)
  copyInto(largeColorSwap, collage, 0, 90)
  
  #RGB monochrome photos part one
     #red
  redMono = monoRed(originPic2)
  smallRedMono = scale(redMono, .788)
  copyInto(smallRedMono, collage, 622, 0)
        #green
  greenMono = monoGreen(originPic4)
  smallGreenMono = scale(greenMono, .788)
  copyInto(smallGreenMono, collage, 622, 168)
     #blue
  blueMono = monoBlue(originPic3)
  smallBlueMono = scale(blueMono, .788)
  copyInto(smallBlueMono, collage, 622, 350)
  
  #original form 
  copyInto(ori, collage, 30, 250)
  
  #signature
  name = "M"
  name2 = "o"
  name3 = "r"
  name4 = "d"
  name5 = "e"
  name6 = "k"
  name7 = "a"
  name8 = "i"
  name9 = "C.B."
  myFont = makeStyle(mono, bold, 14)
  addTextWithStyle(collage, 977, 646, name, myFont, red)
  addTextWithStyle(collage, 977, 656, name2, myFont, red)
  addTextWithStyle(collage, 977, 666, name3, myFont, red)
  addTextWithStyle(collage, 977, 676, name4, myFont, red)
  addTextWithStyle(collage, 977, 686, name5, myFont, red)
  addTextWithStyle(collage, 977, 696, name6, myFont, red)
  addTextWithStyle(collage, 977, 706, name7, myFont, red)
  addTextWithStyle(collage, 977, 716, name8, myFont, red)
  addTextWithStyle(collage, 977, 726, name9, myFont, red)
  
  #show collage
  explore(collage)

#size programs
def scale(pictureIn, factor):
  picOut = makeEmptyPicture(int(getWidth(pictureIn) * factor), int(getHeight(pictureIn) * factor))
  inX = 0
  for outX in range(0, int(getWidth(pictureIn) * factor)):
    inY = 0
    for outY in range(0, int(getHeight(pictureIn) * factor)):
      color = getColor(getPixel(pictureIn, int(inX), int(inY)))
      setColor(getPixel(picOut, outX, outY), color)
      inY = inY + 1.0 / factor
    inX = inX + 1.0 / factor
  return picOut
  
def mirror(largeGreyPic):
  allPixels = getAllPixels(largeGreyPic)
  target = len(allPixels) - 1
  for index in range (0,len(allPixels)/ 2):
    topPixel = allPixels[target]
    bottomColor = getColor(topPixel)
    bottomPixel = allPixels[index]
    setColor(bottomPixel, bottomColor)
    target = target - 1
  return(largeGreyPic)
  
#color programs
def colorSwap(originPic):
  for p in getPixels(originPic):
    r = getRed(p)
    b = getBlue(p)
    g = getGreen(p)
    
    setRed(p, b)
    setBlue(p, g)
    setGreen(p, r)
  return(originPic)

def monoRed(originPic2):
  for p in getPixels(originPic2):
    r = getRed(p)
    b = getBlue(p)
    g = getGreen(p)
    
    setRed(p, 255)
  return(originPic2)

def monoBlue(originPic3):
  for p in getPixels(originPic3):
    r = getRed(p)
    b = getBlue(p)
    g = getGreen(p)
    
    setBlue(p, 255)
  return(originPic3)

def monoGreen(originPic4):
  for p in getPixels(originPic4):
    r = getRed(p)
    b = getBlue(p)
    g = getGreen(p)
    
    setGreen(p, 255)
  return(originPic4)

def greyscale(originPic5):
  for p in getPixels(originPic5):
    r = getRed(p)
    g = getGreen(p)
    b = getBlue(p)
    greyValue =(r + g + b)/3.0
    greyColor  =makeColor(greyValue, greyValue, greyValue)
    setColor(p,greyColor)
  return(originPic5)
  
def negative(originPic6):
  for p in getPixels(originPic6):
    r = getRed(p)
    g = getGreen(p)
    b = getBlue(p)
    negColor = makeColor(255 - r,255 - g, 255 - b)
    setColor(p, negColor)
  return(originPic6)
  

  