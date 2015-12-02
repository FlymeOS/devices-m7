.class public Lcom/htc/camera/Draw3DPreviewFilterEventArgs;
.super Lcom/htc/camera/PreviewFilterEventArgs;
.source "Draw3DPreviewFilterEventArgs.java"


# instance fields
.field public final defaultMvpMatrix:[F

.field public isDefaultPreviewSurface:Z

.field public final nanoTime:J


# direct methods
.method public constructor <init>(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/imaging/Size;Landroid/graphics/Rect;ZZ[F)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/PreviewFilterEventArgs;-><init>(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/imaging/Size;Landroid/graphics/Rect;Z)V

    .line 23
    iput-object p6, p0, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->defaultMvpMatrix:[F

    .line 24
    iput-boolean p5, p0, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->isDefaultPreviewSurface:Z

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/Draw3DPreviewFilterEventArgs;->nanoTime:J

    .line 26
    return-void
.end method
