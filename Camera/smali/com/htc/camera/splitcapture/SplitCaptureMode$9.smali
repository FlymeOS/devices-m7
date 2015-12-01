.class Lcom/htc/camera/splitcapture/SplitCaptureMode$9;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$9;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 597
    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$9;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureMode;->linkToCompoents()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$400(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    .line 603
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$9;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    const/4 v1, 0x0

    .line 606
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$9;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarting:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$9;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 608
    :cond_0
    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$9;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$9;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureMode;->enterCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;Lcom/htc/camera/splitcapture/SplitCaptureType;ZI)Z
    invoke-static {v3, v4, v0, v2, v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$800(Lcom/htc/camera/splitcapture/SplitCaptureMode;Lcom/htc/camera/splitcapture/SplitCaptureType;Lcom/htc/camera/splitcapture/SplitCaptureType;ZI)Z

    .line 611
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$9;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSyncAsyncButtonEnabled()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$700(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    .line 612
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$9;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # invokes: Lcom/htc/camera/splitcapture/SplitCaptureMode;->updateSyncAsyncButtonIcon()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$900(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V

    .line 615
    :cond_1
    return-void
.end method
