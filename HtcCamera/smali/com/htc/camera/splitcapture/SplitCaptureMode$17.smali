.class Lcom/htc/camera/splitcapture/SplitCaptureMode$17;
.super Ljava/lang/Object;
.source "SplitCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$17;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$17;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$17;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->onVideoRecordingButtonReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {p3}, Lcom/htc/camera/base/EventArgs;->isHandled()Z

    .line 778
    :cond_0
    return-void
.end method
