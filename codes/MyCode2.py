def CheckSimilarity(img1_path, img2_path):
  from deepface import DeepFace
    
  result = DeepFace.verify(img1_path=img1_path, img2_path=img2_path, model_name="Facenet")
  verified = result["verified"]
    
  return verified
