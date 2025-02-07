def DetectFace(img2_path):
    import cv2
    
    img2 = cv2.imread(img2_path)
    gray2 = cv2.cvtColor(img2, cv2.COLOR_BGR2GRAY)
    
    face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_frontalface_default.xml')
    faces2 = face_cascade.detectMultiScale(gray2, scaleFactor=1.1, minNeighbors=5, minSize=(30, 30))
    
    if len(faces2) == 0:
      return False
    else:
      return True