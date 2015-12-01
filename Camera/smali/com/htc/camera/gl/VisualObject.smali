.class public abstract Lcom/htc/camera/gl/VisualObject;
.super Lcom/htc/camera/ThreadDependencyObject;
.source "VisualObject.java"


# instance fields
.field private final m_LastMvpMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/camera/ThreadDependencyObject;-><init>()V

    .line 11
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/camera/gl/VisualObject;->m_LastMvpMatrix:[F

    return-void
.end method


# virtual methods
.method public draw([F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/htc/camera/gl/VisualObject;->threadAccessCheck()V

    .line 30
    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/htc/camera/gl/VisualObject;->m_LastMvpMatrix:[F

    const/16 v1, 0x10

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :goto_0
    invoke-static {}, Lcom/htc/camera/gl/DrawingTransaction;->currentTransaction()Lcom/htc/camera/gl/DrawingTransaction;

    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/htc/camera/gl/VisualObject;->internalDraw()V

    .line 45
    :goto_1
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/gl/VisualObject;->m_LastMvpMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0, p0}, Lcom/htc/camera/gl/DrawingTransaction;->schedule(Lcom/htc/camera/gl/VisualObject;)V

    goto :goto_1
.end method

.method final internalDraw()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/camera/gl/VisualObject;->m_LastMvpMatrix:[F

    invoke-virtual {p0, v0}, Lcom/htc/camera/gl/VisualObject;->onDraw([F)V

    .line 58
    return-void
.end method

.method protected onDraw([F)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
