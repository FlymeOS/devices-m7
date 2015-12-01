.class Lcom/htc/camera/component/RecordingLimitController$7;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/RecordingLimitController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RecordingLimitController;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/camera/component/RecordingLimitController$7;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 5
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
    const/16 v4, 0x2711

    .line 285
    sget-object v1, Lcom/htc/camera/component/RecordingLimitController$8;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$7;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    iget-object v0, v0, Lcom/htc/camera/component/RecordingLimitController;->recordingLimitState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController$7;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    iget-object v1, v1, Lcom/htc/camera/component/RecordingLimitController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingLimitState;->None:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$7;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # invokes: Lcom/htc/camera/component/RecordingLimitController;->onStartingRecording()V
    invoke-static {v0}, Lcom/htc/camera/component/RecordingLimitController;->access$600(Lcom/htc/camera/component/RecordingLimitController;)V

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController$7;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$7;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    invoke-virtual {v0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    # setter for: Lcom/htc/camera/component/RecordingLimitController;->m_LastVideoStorageSlot:Lcom/htc/camera/io/StorageSlot;
    invoke-static {v1, v0}, Lcom/htc/camera/component/RecordingLimitController;->access$202(Lcom/htc/camera/component/RecordingLimitController;Lcom/htc/camera/io/StorageSlot;)Lcom/htc/camera/io/StorageSlot;

    .line 295
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$7;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/RecordingLimitController;->access$700(Lcom/htc/camera/component/RecordingLimitController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Check limit state after "

    iget-object v2, p0, Lcom/htc/camera/component/RecordingLimitController$7;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J
    invoke-static {v2}, Lcom/htc/camera/component/RecordingLimitController;->access$800(Lcom/htc/camera/component/RecordingLimitController;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " ms"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$7;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController$7;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    iget-object v2, p0, Lcom/htc/camera/component/RecordingLimitController$7;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J
    invoke-static {v2}, Lcom/htc/camera/component/RecordingLimitController;->access$800(Lcom/htc/camera/component/RecordingLimitController;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/camera/component/RecordingLimitController;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    goto :goto_0

    .line 299
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$7;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    invoke-virtual {v0, v4}, Lcom/htc/camera/component/RecordingLimitController;->removeMessages(I)V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
