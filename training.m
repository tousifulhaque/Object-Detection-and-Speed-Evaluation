pos_ins= pos;
pos_dir= fullfile('C:\Users\Asus ROG\Desktop\DSP project\DSP - Copy\Positive');
addpath(pos_dir);
neg_dir = fullfile('C:\Users\Asus ROG\Desktop\DSP project\DSP - Copy\Negetive');

trainCascadeObjectDetector('trained_model.xml',pos_ins,neg_dir,...
    'NumCascadeStages',25,'FeatureType','Haar');