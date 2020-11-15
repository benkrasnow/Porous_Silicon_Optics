
import org.gicentre.utils.stat.*;    // For chart classes.
 
 
 
XYChart lineChart;

void setup()
{
  size(1600,500);
  textFont(createFont("Arial",10),10);
  
  float[] xvalues = new float[3000];
  float[] yvalues = new float[3000];
   int z = 0;
  float i = 0;
  float TWOPI = 6.2832;
 
  /*for( i =0; i<15; i=i+.05)
    {
      xvalues[z] = i;
      yvalues[z] = 0.750 - (pow(i,2)/100)*0.15;
     print(String.format("%.6f",yvalues[z]),", ");
     if(z++%10 == 0)
      {
       println(" ");
      }
    }
*/

  
  for ( i = 0; i<149; i= i+0.05)
   {
     xvalues[z] = i;
     yvalues[z] = .35 + (.25*cos(0.55*(i*TWOPI)));
     print(String.format("%.6f",yvalues[z]),", ");
     if(z++%10 == 0)
      {
       println(" ");
      }
      //println(z);
    }
  
  
   lineChart = new XYChart(this);
  lineChart.setData(xvalues,yvalues);
  lineChart.showXAxis(true); 
  lineChart.showYAxis(true); 
  lineChart.setMinY(0);
  lineChart.setPointColour(color(180,50,50,100));
  lineChart.setPointSize(2);
  lineChart.setLineWidth(1);
  
}


void draw()
{
  background(255);
  textSize(9);
  lineChart.draw(15,15,width-30,height-30);
   
  // Draw a title over the top of the chart.
  fill(120);
  //textSize(20);
  //text("Hello", 70,30);
}
