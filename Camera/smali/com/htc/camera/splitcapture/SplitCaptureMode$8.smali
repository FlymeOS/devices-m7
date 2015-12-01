.class Lcom/htc/camera/splitcapture/SplitCaptureMode$8;
.super Ljava/lang/Object;
.source "SplitCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$8;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$8;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureMode;->onSplitPhotoStateChanged(Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    invoke-static {v0, p3}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$600(Lcom/htc/camera/splitcapture/SplitCaptureMode;Lcom/htc/camera/base/PropertyChangeEventArgs;)V

    .line 270
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$8;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSyncAsyncButtonEnabled()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$700(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    .line 271
    return-void
.end method
