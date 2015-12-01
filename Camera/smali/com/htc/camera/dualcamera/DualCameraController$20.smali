.class Lcom/htc/camera/dualcamera/DualCameraController$20;
.super Ljava/lang/Object;
.source "DualCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;

.field final synthetic val$condVar:Landroid/os/ConditionVariable;

.field final synthetic val$options:Landroid/graphics/BitmapFactory$Options;

.field final synthetic val$primaryImageRef:Lcom/htc/camera/Reference;

.field final synthetic val$primaryJpeg:[B

.field final synthetic val$primarySrcRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;[BLcom/htc/camera/Reference;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 2515
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$primaryJpeg:[B

    iput-object p3, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$primaryImageRef:Lcom/htc/camera/Reference;

    iput-object p4, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$primarySrcRect:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$options:Landroid/graphics/BitmapFactory$Options;

    iput-object p6, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$condVar:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2521
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$primaryJpeg:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$primaryJpeg:[B

    array-length v2, v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 2522
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$primaryImageRef:Lcom/htc/camera/Reference;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$primarySrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2530
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$condVar:Landroid/os/ConditionVariable;

    :goto_0
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 2532
    return-void

    .line 2524
    :catch_0
    move-exception v0

    .line 2526
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$3500(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processHalfSplitImage() - Fail to load primary image"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2530
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$condVar:Landroid/os/ConditionVariable;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$20;->val$condVar:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
