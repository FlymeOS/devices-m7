.class Lcom/htc/camera/component/IndicatorsUI$31;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;

.field final synthetic val$showPhotoCounter:Z

.field final synthetic val$showVideoCounter:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;ZZ)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$31;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iput-boolean p2, p0, Lcom/htc/camera/component/IndicatorsUI$31;->val$showPhotoCounter:Z

    iput-boolean p3, p0, Lcom/htc/camera/component/IndicatorsUI$31;->val$showVideoCounter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 825
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$31;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 826
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$31;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/IndicatorsUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    .line 827
    sget-object v4, Lcom/htc/camera/component/IndicatorsUI$32;->$SwitchMap$com$htc$camera$io$StorageState:[I

    iget-object v0, v2, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageState;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageState;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 872
    :goto_0
    return-void

    .line 833
    :pswitch_0
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 834
    iget-boolean v0, p0, Lcom/htc/camera/component/IndicatorsUI$31;->val$showPhotoCounter:Z

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v2}, Lcom/htc/camera/CameraThread;->calculatePicturesRemaining()J

    move-result-wide v6

    .line 837
    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    .line 838
    sget-object v0, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/component/IndicatorsUI$31;->val$showVideoCounter:Z

    if-eqz v0, :cond_1

    .line 844
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraStartMode;->MmsVideo:Lcom/htc/camera/CameraStartMode;

    if-ne v0, v2, :cond_2

    .line 845
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$31;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1900(Lcom/htc/camera/component/IndicatorsUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request from MMS, not need to update free length"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$31;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$31;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    const/4 v2, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/IndicatorsUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 846
    :cond_2
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraStartMode;->NotesVideo:Lcom/htc/camera/CameraStartMode;

    if-ne v0, v1, :cond_3

    .line 847
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$31;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$2000(Lcom/htc/camera/component/IndicatorsUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request from Notes, not need to update free length"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 850
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$31;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    const-class v1, Lcom/htc/camera/IRecordingLimitController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRecordingLimitController;

    .line 851
    if-eqz v0, :cond_1

    .line 853
    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$31;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/htc/camera/component/IndicatorsUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/IRecordingLimitController;->getRemainingRecordingDuration(JI)Lcom/htc/camera/Duration;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_4

    .line 856
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 857
    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 860
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$31;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$2100(Lcom/htc/camera/component/IndicatorsUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    sget-object v0, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
