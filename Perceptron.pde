class Perceptron
{
   float weights[];
   float lr = 0.01;
   
   Perceptron(int n)
   {
     weights = new float[n];
     for (int i = 0; i < weights.length; i++)
     {
        weights[i] = random(-1,1); 
     }
     
   }
   
   int guess(float inputs[])
   {
       float sum = 0;
       for (int i = 0; i < weights.length; i++)
       {
           sum += (weights[i] * inputs[i]);
       }
       //println(weights.length + " " + sum);
       if (sum > 0)
         return 1;
       else
         return -1;
   }
   
   float guessY(float x) 
   {
      return (-weights[0] / weights[1]) * x - weights[2]/weights[1];
   }
   
   void train(float inputs[], int target)
   {
     int guess = guess(inputs);
     int error = target - guess;
     for (int i = 0; i < weights.length; i++)
     {
        weights[i] += error * inputs[i] * lr; 
     }
     
   }
}
