.class Lcom/htc/camera/dualcamera/DualCaptureMode$1;
.super Ljava/lang/Object;
.source "DualCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCaptureMode;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode$1;->this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode$1;->this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;

    # invokes: Lcom/htc/camera/dualcamera/DualCaptureMode;->checkSupportState()Z
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->access$000(Lcom/htc/camera/dualcamera/DualCaptureMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode$1;->this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode$1;->this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;

    # getter for: Lcom/htc/camera/dualcamera/DualCaptureMode;->m_IsPreviewStartedChangedCallback:Lcom/htc/camera/property/c;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCaptureMode;->access$100(Lcom/htc/camera/dualcamera/DualCaptureMode;)Lcom/htc/camera/property/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 32
    :cond_0
    return-void
.end method
