.class public Lcom/htc/camera/input/MotionEventArgs;
.super Lcom/htc/camera/event/SingleHandlerEventArgs;
.source "MotionEventArgs.java"


# instance fields
.field public final action:I

.field public final motionEvent:Landroid/view/MotionEvent;

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/camera/event/SingleHandlerEventArgs;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/input/MotionEventArgs;->motionEvent:Landroid/view/MotionEvent;

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/input/MotionEventArgs;->action:I

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/htc/camera/input/MotionEventArgs;->x:F

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/htc/camera/input/MotionEventArgs;->y:F

    .line 31
    return-void
.end method
