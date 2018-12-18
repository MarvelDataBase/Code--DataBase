import java.util.Scanner;
class PXX
{
PXX(){}
int n=1;int m=1;int t=0;
void  a(int x[])
{
  for(n=1;n<5;n++)
 {
  for(m=4;m>0;m--)
   {
    if(x[m]<x[m-1]) 
    {
     t=x[m-1];
     x[m-1]=x[m];
     x[m]=t; 
    }
   }
 }
}
}




public class px
{
public static void main(String args[])
{
Scanner reader =new Scanner(System.in);
int x[]=new int[5];
PXX cat=new PXX();
System.out.println("请输入5个数字以便排序.");
for(int p=0;p<=4;p++)
{
x[p]=reader.nextInt();
}
cat.a(x);
for(int q=0;q<=4; q++)
{
System.out.printf("%d",x[q]);
System.out.println();
}
}
}


