.class public Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;
.super Lcom/htc/camera/base/EventArgs;
.source "CameraPreviewOverlayEventArgs.java"


# instance fields
.field public final isPreviewCoverVisible:Z

.field public final overlaySize:Lcom/htc/camera/imaging/Size;

.field public final previewBounds:Landroid/graphics/Rect;

.field public final rotation:Lcom/htc/camera/rotate/UIRotation;


# direct methods
.method public constructor <init>(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/imaging/Size;Landroid/graphics/Rect;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 40
    iput-boolean p4, p0, Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;->isPreviewCoverVisible:Z

    .line 41
    iput-object p3, p0, Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;->previewBounds:Landroid/graphics/Rect;

    .line 42
    iput-object p1, p0, Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;->rotation:Lcom/htc/camera/rotate/UIRotation;

    .line 43
    iput-object p2, p0, Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;->overlaySize:Lcom/htc/camera/imaging/Size;

    .line 44
    return-void
.end method
