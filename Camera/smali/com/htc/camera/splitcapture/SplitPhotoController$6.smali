.class Lcom/htc/camera/splitcapture/SplitPhotoController$6;
.super Ljava/lang/Object;
.source "SplitPhotoController.java"

# interfaces
.implements Lcom/htc/camera/k;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$6;->val$handle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$6;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$6;->val$handle:Lcom/htc/camera/CaptureHandle;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoController;->onJpegReceived(Lcom/htc/camera/CaptureHandle;[B)V
    invoke-static {v0, v1, p1}, Lcom/htc/camera/splitcapture/SplitPhotoController;->access$600(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/CaptureHandle;[B)V

    .line 899
    return-void
.end method
