.class Lcom/htc/camera/splitcapture/SplitCaptureMode$12;
.super Ljava/lang/Object;
.source "SplitCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$12;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$12;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureMode;->onReadyForVideoRecording()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$1200(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$12;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSyncAsyncButtonEnabled()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$700(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    .line 646
    return-void
.end method
