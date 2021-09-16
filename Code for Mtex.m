% % % Import EBSD from 'x','y','Euler1','Euler2','Euler3'
  
cs = crystalSymmetry('yourSymmetryGroup')
ori = orientation.load('fileName','columnNames',{'x','y','Euler1','Euler2','Euler3'},cs)
plotPDF(ori,Miller(1,0,0,cs),'contourf')
  
