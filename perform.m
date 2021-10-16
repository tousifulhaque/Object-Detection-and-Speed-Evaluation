vid=VideoReader('test2.mp4');
detector=vision.CascadeObjectDetector('besthaar.xml');
count=0;
  i=420;
while hasFrame(vid)
   vf=readFrame(vid);
   count=count+1;

if count<=65  
   bbox=step(detector,vf);
   a=size(bbox);
   if a(1)>1
   bbox=max(bbox)
   
   end
      if count==35
       pos1=bbox(2);
   end
   if count==65
       pos2=bbox(2);
   end

   detectedImg=insertObjectAnnotation(vf,'rectangle',bbox,'Match');
   
   imshow(detectedImg);
   end
%     pause(1);
end
dis=pos1-pos2;
%212 pixles=9cm
speed=dis*9/212
%%30fps
%%total 65 frames