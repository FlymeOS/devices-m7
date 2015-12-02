.class public Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;
.super Ljava/lang/Object;
.source "IOpenGLViewfinder.java"


# instance fields
.field public final containerSize:Lcom/htc/camera/imaging/Size;

.field public final isDefaultPreviewSurface:Z

.field public final previewSize:Lcom/htc/camera/imaging/Size;

.field public final rotation:Lcom/htc/camera/rotate/UIRotation;


# direct methods
.method public constructor <init>(ZLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean p1, p0, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->isDefaultPreviewSurface:Z

    .line 72
    iput-object p2, p0, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->containerSize:Lcom/htc/camera/imaging/Size;

    .line 73
    iput-object p3, p0, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->previewSize:Lcom/htc/camera/imaging/Size;

    .line 74
    iput-object p4, p0, Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;->rotation:Lcom/htc/camera/rotate/UIRotation;

    .line 75
    return-void
.end method
