.class final Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;
.super Lcom/htc/camera/Handle;
.source "GLViewFinder.java"


# instance fields
.field public final callback:Lcom/htc/camera/ao;

.field public eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field public final eglSurfaceSize:Lcom/htc/camera/imaging/Size;

.field public hasError:Z

.field public lastDrawingTime:J

.field public final mvpMatrix:[F

.field public final previewBounds:Landroid/graphics/Rect;

.field public final rotation:Lcom/htc/camera/rotate/UIRotation;

.field public final surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/ao;)V
    .locals 1

    .prologue
    .line 454
    const-string v0, "AttachedSurface"

    invoke-direct {p0, v0}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 441
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->eglSurfaceSize:Lcom/htc/camera/imaging/Size;

    .line 444
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->mvpMatrix:[F

    .line 446
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->previewBounds:Landroid/graphics/Rect;

    .line 455
    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->rotation:Lcom/htc/camera/rotate/UIRotation;

    .line 456
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->surface:Landroid/view/Surface;

    .line 457
    iput-object p3, p0, Lcom/htc/camera/viewfinder/GLViewFinder$RenderingSurfaceHandle;->callback:Lcom/htc/camera/ao;

    .line 458
    return-void
.end method
