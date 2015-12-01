.class Lcom/htc/camera/splitcapture/SplitPhotoController$4;
.super Ljava/lang/Object;
.source "SplitPhotoController.java"

# interfaces
.implements Lcom/htc/camera/m;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

.field final synthetic val$handle:Lcom/htc/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 877
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$4;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$4;->val$handle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$4;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$4;->val$handle:Lcom/htc/camera/CaptureHandle;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoController;->onShutterReceived(Lcom/htc/camera/CaptureHandle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoController;->access$400(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/CaptureHandle;)V

    .line 882
    return-void
.end method
