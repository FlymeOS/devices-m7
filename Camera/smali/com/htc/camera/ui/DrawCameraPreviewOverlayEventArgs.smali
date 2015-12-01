.class public Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;
.super Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;
.source "DrawCameraPreviewOverlayEventArgs.java"


# instance fields
.field public final canvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/graphics/Canvas;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/imaging/Size;Landroid/graphics/Rect;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;-><init>(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/imaging/Size;Landroid/graphics/Rect;Z)V

    .line 30
    iput-object p1, p0, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;->canvas:Landroid/graphics/Canvas;

    .line 31
    return-void
.end method
