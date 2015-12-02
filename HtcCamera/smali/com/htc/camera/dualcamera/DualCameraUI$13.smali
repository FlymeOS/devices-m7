.class Lcom/htc/camera/dualcamera/DualCameraUI$13;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$13;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 1402
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$13;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1408
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$13;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # setter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_HasReviewBitmap:Z
    invoke-static {v0, v2}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2802(Lcom/htc/camera/dualcamera/DualCameraUI;Z)Z

    .line 1409
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$13;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->showPreviewResizeUI(Z)V
    invoke-static {v0, v2}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2300(Lcom/htc/camera/dualcamera/DualCameraUI;Z)V

    goto :goto_0

    .line 1404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
