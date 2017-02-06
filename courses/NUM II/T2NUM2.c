#include <stdio.h>
#include <stdlib.h>

// Defini��o do tipo de dados polin�mio

typedef struct{

		int degree;
		double* coeficient;	
				   } polynomial;
		
// Fun��o : Create(n).
// Cria din�micamente um novo polin�mio de grau n com coeficientes 
// n�o inicializados.

polynomial Create(int n)
{
  polynomial x;
  
  x.degree = n;
  x.coeficient = (double*)malloc((n+1)*sizeof(double));
	
  return(x);
}

// Fun��o : Destroy(x)
// Destr�i o vetor de coeficientes do polin�mio x.

void Destroy(polynomial* x)
{
 free(x->coeficient); 
}

// Fun��o : Sum(p1,p2).
// Faz a soma de dos polin�mios p1 e p2.
// Pr� - condi��o : p1 e p2 devem ter o mesmo grau.

polynomial Sum(polynomial p1, polynomial p2)

{
 polynomial aux;
 
 aux = Create(p1.degree);
  
 int k;
 
 for(k = 0; k <= aux.degree; k++)
  aux.coeficient[k] = p1.coeficient[k] + p2.coeficient[k]; 

 return(aux);

}

// Fun��o : Scalar(alpha,x)
// Retorna o polin�mio de entrada x multiplicado pelo escalar alpha.

polynomial Scalar(double alpha, polynomial x)
{
 polynomial aux;
 
 aux = Create(x.degree);
 
 int k;
 
 for(k = 0; k <= aux.degree; k++)
  aux.coeficient[k] = alpha * x.coeficient[k]; 
  
 return(aux);

}


// Fun��o : Identity(x)
// Verifica se o polin�mio x � uma identidade da multiplica��o, ou seja,
// se p(x) = 1, qualquer que seja o grau de p(x). 
// Pr�-condi��o : o termo independente est� na �ltima posi��o do vetor de
// coeficientes.

int Identity(polynomial x)
{
 int flag;
 int i;
 
 flag = 0;
 i=0;
 while((!flag)&&(i<x.degree)){
   
   if(x.coeficient[i] !=0)
     flag = 1;
   else i++;  
 }
 
 if(flag && (x.coeficient[x.degree]==1.0))
   return 1;
 else return 0;  
 
}

// Fun��o : Mult(x,alpha).
// Essa fun��o multiplica o polin�mio x de entrada por p(x) = x - alpha.
// A implementa��o da fun��o � baseada no algoritmo de Briot-Ruffini.

void Mult(polynomial *x, double alpha)
{
 
   polynomial aux;
   double a,b,c;
 
   int k;
 
   aux = Create(x->degree);
 
   aux = *x;
 
   Destroy(x);
 
   a = aux.coeficient[0];

   *x = Create(aux.degree + 1);
    x->coeficient[0] = a;
 
    b = a;
 
    c = 0;
  
    for(k = 1; k < x->degree; k++){
 
      c =  b * alpha;
      b = aux.coeficient[k];
      a =  b - c;
      x->coeficient[k] = a;
    
    } 
 
    c = b * alpha;
    x->coeficient[x->degree] = -c ;
 
    Destroy(&aux);

}

void Lagrange(double x[], int n, polynomial L[])
{
 polynomial aux;
 polynomial result;
 
 double alpha;
 
 int i,j;
 
 for(i=0; i<=n; i++){
   
    alpha = 1.0; 
    
    //Aux come�a sendo o elemento neutro da multiplica��o
    
    aux = Create(0);
    aux.coeficient[0] = 1.0;
    
    for(j=0; j<=n; j++)
     
     if(i!=j){
        
        Mult(&aux,x[j]);
        alpha *= (x[i]-x[j]);
     }
    
    result = Create(n);
    
    result = Scalar(1/alpha,aux);
    
    L[i] = result;
    
    Destroy(&result);
    Destroy(&aux);  
 }
}

int main(void)
{
 // Vari�veis
 
 double *x;
 double *y;
 
 polynomial *L;
 polynomial aux;
 polynomial result;
 
 int i,n;
 
 // Leitura do n�mero de pontos
 
 scanf("%d",&n);
 
 // Leitura dos vetores x e y
 
 x = (double*)malloc((n+1)*sizeof(double));
 y = (double*)malloc((n+1)*sizeof(double));
 
 
 for(i=0; i<=n; i++){
 
   double aux1,aux2;
   
   scanf("%lf %lf",&aux1,&aux2);
   x[i]= aux1;
   y[i]= aux2;
 
 }
 
 // Cria��o do vetor de polin�mios de Lagrange
 
 L = (polynomial*)malloc((n+1)*sizeof(polynomial));
 
 // Determina��o dos polin�mios de Lagrange
  
 Lagrange(x,n,L);
 
 // Obtendo o polin�mio final
 
 result = Create(n);
 
 for(i=0; i<=n; i++)
  result.coeficient[i] = 0.0;
   
 for(i=0; i<=n; i++){
 
  aux = Create(n);
  
  aux = Scalar(y[i],L[i]);
  
  result = Sum(result,aux);
  
  Destroy(&aux);
 }
 
 // Imprimindo o resultado
 
 for(i=0; i<=n; i++)
   printf("%.4lf ",result.coeficient[n-i]);

 Destroy(&result);
  
 getchar();getchar();	
 return 0;
}
