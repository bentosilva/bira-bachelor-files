/*****************************************************************************/
/**                     TRABALHO 1 - C�lculo Num�rico II                    **/
/*****************************************************************************/

// ALUNO : Ubiratan Soares(5634292) e Thiago Machado(2373831)

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct{
               float x;
               float y;
               }point;

int i,n;              // Contadores auxiliares

float aux1,aux2;      // Vari�veis auxiliares(E/S e opera��es)

float alpha,tetha;    // Vari�veis auxiliares(rota��o)

float a1,a2,a3,b1,b2; // Vari�veis auxiliares(polin�mio de sa�da)

float p0,p1,p2;       // Coeficientes do polin�mio de sa�da

point cloud[50],CM;   // Nuvem de pontos

int main(void)
{
 // Lendo o n�mero de pontos que ser�o computados;
 
 scanf("%d",&n);
 
 // Lendo a nuvem de pontos e preenchendo o vetor de entrada
 
 for(i=0; i<n; i++){
   scanf("%f %f",&aux1,&aux2);
   cloud[i].x = aux1;
   cloud[i].y = aux2;
 }
 
 // Calculando o centro de massa do conjunto de pontos
 
 CM.x = 0.0;
 CM.y = 0.0;
 
 for(i=0; i<n; i++){
   CM.x += (cloud[i].x/n);
   CM.y += (cloud[i].y/n);
 }
 
 // Transladando os pontos para o sistema que tem como origem
 // o centro de massa
 
 for(i=0; i<n; i++){
   cloud[i].x -= CM.x;
   cloud[i].y -= CM.y;
 } 
 
 // Uma vez que CM � a nova origem do sistema, podemos simplificar 
 // os c�lculos para a reta que melhor aproxima a nuvem de pontos pelo MMQ
 
 // Tem-se que o termo independente dessa reta � nulo, bem como as somat�rias
 // dos pontos x e y(isso pode ser visto escrevendo-se a f�rmula do centro de
 // massa e impondo cmx = 0 = cmy.
 
 // Calculando o coeficiente linear da reta de aproxima��o
 
 aux1 = 0.0;
 
 aux2 = 0.0;
 
 for(i=0; i<n; i++){
  
  aux1 += (cloud[i].x)*(cloud[i].y);
  
  aux2 += pow(cloud[i].x,2); 
 }
 
 alpha = aux1/aux2; //Alpha � o coeficiente linar de p1~f
 
 // Para rotacionar o sistema, rotacionamos todos os pontos em rela��o
 // ao �ngulo definido por Alpha
 
 tetha = atan(alpha);
 
 // Rotacionamos cada ponto considerando a orienta��o positiva da nova base 
 // e obtemos uma nuvem de pontos
 
 for(i=0; i<n; i++){
 
 aux1 = cos(tetha)*cloud[i].x + sin(tetha)*cloud[i].y;
 aux2 = cos(tetha)*cloud[i].y - sin(tetha)*cloud[i].x;
 
 cloud[i].x = aux1;
 cloud[i].y = aux2;
 
 }
 
 // Usando os resultados aplicados para calcular a primeira aproxima��o da reta
 // relacionados ao centro, podemos simplificar os c�lculos da par�bola apro-
 // ximante. As vari�veis abaixo s�o alguns coeficientes da matriz que define
 // o SL associado ao c�lculo da aproxima��o p2(x)~f.

 a1 = a2 = a3 = b1 = b2 = 0.0;
 
 for(i=0; i<n; i++){
   
   a1 += pow(cloud[i].x,2);
 
   a2 += pow(cloud[i].x,3);
 
   a3 += pow(cloud[i].x,4);
 
   b1 += (cloud[i].x)*(cloud[i].y);
 
   b2 += (pow(cloud[i].x,2))*(cloud[i].y);
 }

 
 // Um estudo pr�vio do problema no papel leva a v�rias simplifica��es,
 // que resultam no seguinte c�lculo direto dos coeficientes de p2(x), sendo
 // p0 o termo independente.
 
 p2 = n*(b2*a1 - a2*b1)/(n*a1*a3 - n*pow(a2,2) - pow(a1,3));
 
 p0 = -(a1/n)*p2;
 
 p1 = (1/a1)*(b1-a2*p2);
 
 // Imprimindo o resultado;
 
 printf("%.3f %.3f %.3f\n",p0,p1,p2);

 getchar();getchar();
 
return 0;
}
