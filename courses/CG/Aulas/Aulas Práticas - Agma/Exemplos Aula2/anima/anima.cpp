/* anima.c 
* Programa que apresenta a a anima��o de um quadrado e um tri�ngulo
* Objetivo : Demonstrar fun��es de gerenciamento de
* janelas e fun��es de callback
* Refer�ncia do C�digo: OpenGL Programming Guide - RedBook
*/

#include <GL/gl.h>
#include <GL/glut.h>


static GLfloat spin = 0.0;

void display(void)
{
     glMatrixMode(GL_MODELVIEW);
     glLoadIdentity();                   

     /* Limpa o Buffer de Pixels */
    glClear (GL_COLOR_BUFFER_BIT);
    
    glRotatef(spin, 0.0, 0.0, 1.0);
    
 
    // Define a cor padr�o como branco
    glColor3f (1.0, 1.0, 1.0);
    
    
    glBegin(GL_TRIANGLES);
    glVertex3f (0.25, 0.25, 0.0);
    glVertex3f (0.75, 0.25, 0.0);
    glVertex3f (0.75, 0.75, 0.0);
    glEnd();
    
    
    glColor3f (0.0, 1.0, 0.0);
    
    
    glBegin(GL_POLYGON);
    glVertex3f (0.1, 0.1, 0.0);
    glVertex3f (0.25, 0.1, 0.0);
    glVertex3f (0.25, 0.25, 0.0);
    glVertex3f (0.1, 0.25, 0.0);
    glEnd();

    
    /* Inicia o processo de desenho atrav�s dos
    dados bufferizados
    */
    glFlush ();
}


void animation(int value)
{
 spin = spin>360?0:spin+value;
 glutPostRedisplay();
 glutTimerFunc(60,animation,1);
}



/*
void idle(void)
{
 spin = spin>360?0:spin+2;
 glutPostRedisplay();
}
*/



void init (void)
{
    /* Seleciona a cor de fundo para limpeza da tela */
    glClearColor (0.0, 0.0, 0.0, 0.0);
    
    
}

/*
Cria a janela
*/
int main(int argc, char** argv)
{
    /* Estabelece o modo de exibi��o a ser utilizado pela janela a ser criada
    neste caso utiliza-se de um buffer simples, ou seja, a apresenta��o ser� imediata �
    execu��o
    Define o modo de cores como RGBA */
    glutInitDisplayMode (GLUT_SINGLE | GLUT_RGB);
    
    /*Determina o tamanho em pixels da
    janela a ser criada*/
    glutInitWindowSize (600, 600);
    
    /*Estabelece a posi��o inicial para cria��o da
    janela*/
    glutInitWindowPosition (100, 100);
    
    /* Cria uma janela com base nos par�metros especificados
    nas fun��es glutInitWindowSize e glutInitWindowPosition
    com o nome de t�tulo especificado em seu argumento */
    glutCreateWindow ("Exemplo ");

    /* Especifica os par�metros inicias para as vari�veis
    de estado do OpenGL*/
    init ();

    // Associa a fun��o display como uma fun��o de callback
    glutDisplayFunc(display);
    
    glutTimerFunc(60, animation, 2);
    //glutIdleFunc(idle);

    /* Inicia a execu��o do programa OpenGL.
    O programa ir� executar num loop infinito devendo
    o desenvolvedor especificar as condi��es de sa�da do mesmo
    atrav�s de interrup��es no pr�prio programa ou atrav�s
    de comandos de mouse ou teclado como fun��es de callback*/
    glutMainLoop();
    
    return 0;
}

