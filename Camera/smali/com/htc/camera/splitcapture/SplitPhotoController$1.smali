.class Lcom/htc/camera/splitcapture/SplitPhotoController$1;
.super Ljava/lang/Object;
.source "SplitPhotoController.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoController;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->access$000(Lcom/htc/camera/splitcapture/SplitPhotoController;)Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    const-string v1, "Split JPEG"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->access$000(Lcom/htc/camera/splitcapture/SplitPhotoController;)Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    const/4 v2, 0x0

    # setter for: Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v1, v2}, Lcom/htc/camera/splitcapture/SplitPhotoController;->access$002(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/CaptureHandle;)Lcom/htc/camera/CaptureHandle;

    .line 186
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$1;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 188
    :cond_0
    return-void
.end method
