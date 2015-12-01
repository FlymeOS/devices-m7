.class Lcom/htc/camera/component/SensorFocusController$13;
.super Ljava/lang/Object;
.source "SensorFocusController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SensorFocusController;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController$13;->this$0:Lcom/htc/camera/component/SensorFocusController;

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
    .line 499
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$13;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/component/SensorFocusController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->lockFocusInVideo:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$13;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    .line 502
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$13;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    .line 503
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$13;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    .line 506
    :cond_0
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_1

    .line 507
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$13;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->access$102(Lcom/htc/camera/component/SensorFocusController;Z)Z

    .line 508
    :cond_1
    return-void
.end method
