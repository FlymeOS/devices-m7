.class Lcom/htc/camera/burst/ClassicBurstCamera;
.super Lcom/htc/camera/burst/ClassicBurstCameraBase;
.source "ClassicBurstCamera.java"


# instance fields
.field private m_StartTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/burst/ClassicBurstCameraBase;-><init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onBurstShotJpegReceived(Lcom/htc/camera/Handle;[B)Z
    .locals 12

    .prologue
    const-wide/32 v10, 0xf4240

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/htc/camera/burst/ClassicBurstCameraBase;->onBurstShotJpegReceived(Lcom/htc/camera/Handle;[B)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 74
    :goto_0
    return v0

    .line 37
    :cond_0
    sget-object v3, Lcom/htc/camera/burst/ClassicBurstCamera$1;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 43
    goto :goto_0

    .line 45
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/burst/ClassicBurstCamera;->isCurrentSession(Lcom/htc/camera/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 46
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {p0}, Lcom/htc/camera/burst/ClassicBurstCamera;->getBurstFPS()I

    move-result v0

    if-lez v0, :cond_2

    .line 52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->m_StartTime:J

    sub-long v3, v0, v3

    .line 53
    iget-object v1, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBurstShotJpegReceived():["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->numberOfTakenPictures:Lcom/htc/camera/property/b;

    invoke-virtual {v0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] Average capture interval = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long v6, v3, v10

    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->numberOfTakenPictures:Lcom/htc/camera/property/b;

    invoke-virtual {v0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ms"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/16 v0, 0x3e8

    invoke-virtual {p0}, Lcom/htc/camera/burst/ClassicBurstCamera;->getBurstFPS()I

    move-result v1

    div-int v1, v0, v1

    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->numberOfTakenPictures:Lcom/htc/camera/property/b;

    invoke-virtual {v0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-long v0, v0

    div-long/2addr v3, v10

    sub-long/2addr v0, v3

    .line 55
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleep:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/camera/burst/ClassicBurstCamera;->takePicture(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 66
    goto/16 :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "onBurstShotJpegReceived() - Fail to take next picture, stop capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/burst/BurstCameraState;->StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "onBurstShotJpegReceived() - Complete burst-shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/htc/camera/burst/ClassicBurstCamera;->onResetStates()V

    move v0, v2

    .line 74
    goto/16 :goto_0

    .line 61
    :catch_0
    move-exception v0

    goto :goto_1

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onOneShotJpegReceived(Lcom/htc/camera/Handle;[B)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/htc/camera/burst/ClassicBurstCameraBase;->onOneShotJpegReceived(Lcom/htc/camera/Handle;[B)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 113
    :goto_0
    return v0

    .line 88
    :cond_0
    sget-object v3, Lcom/htc/camera/burst/ClassicBurstCamera$1;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 95
    goto :goto_0

    .line 97
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/burst/ClassicBurstCamera;->isCurrentSession(Lcom/htc/camera/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 98
    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {p0, v2}, Lcom/htc/camera/burst/ClassicBurstCamera;->takePicture(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "onOneShotJpegReceived() - Fail to take next picture, stop capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/burst/BurstCameraState;->StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "onOneShotJpegReceived() - Complete burst-shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/burst/ClassicBurstCamera;->onResetStates()V

    move v0, v2

    .line 113
    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startBurstShots()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v3, "startBurstShots()"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/htc/camera/burst/ClassicBurstCamera;->threadAccessCheck()V

    .line 128
    invoke-virtual {p0}, Lcom/htc/camera/burst/ClassicBurstCamera;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v2, "startBurstShots() - Component is not running"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 159
    :goto_0
    return v0

    .line 135
    :cond_0
    sget-object v3, Lcom/htc/camera/burst/ClassicBurstCamera$1;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startBurstShots() - Current burst camera state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 152
    goto :goto_0

    .line 139
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->m_StartTime:J

    .line 140
    invoke-virtual {p0, v2}, Lcom/htc/camera/burst/ClassicBurstCamera;->takePicture(Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 141
    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "startBurstShots() - Taking one-shot, start burst-shots later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v2

    .line 159
    goto :goto_0

    .line 148
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCamera;->TAG:Ljava/lang/String;

    const-string v1, "startBurstShots() - Burst-shots is already started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 149
    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
