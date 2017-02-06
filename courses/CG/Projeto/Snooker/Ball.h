#ifndef BALL_H_INCLUDED
#define BALL_H_INCLUDED

#include	"SnookerDefs.h"
#include	"SnookerUtils.h"

#define		BALL_DRAW_ERROR_SIGNAL	0x01
#define		BALL_DRAW_SPEED_VECTOR	0x02
#define		BALL_DEAD				0x04

typedef struct {
	char		*name;
	TFloat		radius, mass;
	float		color2D[4], color3D[4];
	TFloat		x, y;
	TFloat		angle, speed;
	unsigned	flags;
} TBall, *PBall;

PBall	ballCreate(char* name);
void	ballDestroy(PBall *ball);
void	ballSetXY(PBall ball, TFloat x, TFloat y);
void	ballSetup(PBall ball, TFloat radius, TFloat mass);
void	ballPaint2D(PBall ball, TFloat border);
void	ballPaint3D(PBall ball, TFloat border);
TFloat	ballDistance(PBall b1, PBall b2);
int		ballCollided(PBall b1, PBall b2);
int		ballCollision(PBall b1, PBall b2);
TFloat	ballCollisionTime(PBall b1, PBall b2);
void	ballApplyMovement(PBall ball, TFloat angle, TFloat speed);
int		ballStep(PBall ball, TFloat m, TFloat time);
void	ballSetColor2D(PBall ball, float r, float g, float b);
void	ballSetColor3D(PBall ball, float r, float g, float b);
TFloat	ballSpeedX(PBall ball);
TFloat	ballSpeedY(PBall ball);
TFloat	ballSpeed(PBall ball);
int		ballGetFlag(PBall ball, unsigned flag);
void	ballSetFlag(PBall ball, unsigned flag);
void	ballClearFlag(PBall ball, unsigned flag);
TFloat	ballGetX(PBall ball);
TFloat	ballGetY(PBall ball);
TFloat	ballGetRadius(PBall ball);

#endif // BALL_H_INCLUDED
