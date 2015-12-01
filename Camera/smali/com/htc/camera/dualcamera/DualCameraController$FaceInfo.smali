.class final Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;
.super Ljava/lang/Object;
.source "DualCameraController.java"


# instance fields
.field public final bottom:I

.field public final confidence:F

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method public constructor <init>(IIIIF)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->left:I

    .line 602
    iput p2, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->top:I

    .line 603
    iput p3, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->right:I

    .line 604
    iput p4, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->bottom:I

    .line 605
    iput p5, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->confidence:F

    .line 606
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Face;)V
    .locals 1

    .prologue
    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iget-object v0, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->left:I

    .line 594
    iget-object v0, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->top:I

    .line 595
    iget-object v0, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->right:I

    .line 596
    iget-object v0, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->bottom:I

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->confidence:F

    .line 598
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/ObjectTrackingInfo;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x44fa0000    # 2000.0f

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iget-object v0, p1, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    .line 575
    if-eqz v0, :cond_0

    .line 577
    iget v1, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->left:I

    .line 578
    iget v1, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->top:I

    .line 579
    iget v1, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->right:I

    .line 580
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->bottom:I

    .line 589
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->confidence:F

    .line 590
    return-void

    .line 584
    :cond_0
    iput v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->left:I

    .line 585
    iput v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->top:I

    .line 586
    iput v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->right:I

    .line 587
    iput v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->bottom:I

    goto :goto_0
.end method
