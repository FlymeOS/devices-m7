.class final Lcom/htc/camera/zoe/ClassicZoeCamera;
.super Lcom/htc/camera/burst/ClassicBurstCameraBase;
.source "ClassicZoeCamera.java"


# instance fields
.field private m_StartTime:J

.field private m_ZoeFps:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 1

    .prologue
    .line 24
    const-string v0, "Classic ZOE Camera"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/burst/ClassicBurstCameraBase;-><init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;)V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ClassicZoeCamera;->setVisibility(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public getZoeFPS()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->m_ZoeFps:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ClassicZoeCamera;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    const-string v2, "zoe-fps"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->m_ZoeFps:Ljava/lang/Integer;

    .line 117
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoe-fps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->m_ZoeFps:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->m_ZoeFps:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 116
    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    iget-object v2, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->TAG:Ljava/lang/String;

    const-string v3, "getZoeFPS:"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->m_ZoeFps:Ljava/lang/Integer;

    goto :goto_1
.end method

.method protected onBurstShotJpegReceived(Lcom/htc/camera/Handle;[B)Z
    .locals 12

    .prologue
    const-wide/32 v10, 0xf4240

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 36
    invoke-super {p0, p1, p2}, Lcom/htc/camera/burst/ClassicBurstCameraBase;->onBurstShotJpegReceived(Lcom/htc/camera/Handle;[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/camera/zoe/ClassicZoeCamera;->isCurrentSession(Lcom/htc/camera/Handle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ClassicZoeCamera;->getZoeFPS()I

    move-result v0

    if-lez v0, :cond_2

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->m_StartTime:J

    sub-long/2addr v2, v4

    .line 49
    iget-object v4, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onZoeShotJpegReceived():["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->numberOfTakenPictures:Lcom/htc/camera/property/b;

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

    div-long v6, v2, v10

    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->numberOfTakenPictures:Lcom/htc/camera/property/b;

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

    invoke-static {v4, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/16 v0, 0x3e8

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ClassicZoeCamera;->getZoeFPS()I

    move-result v4

    div-int v4, v0, v4

    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->numberOfTakenPictures:Lcom/htc/camera/property/b;

    invoke-virtual {v0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v4

    int-to-long v4, v0

    div-long/2addr v2, v10

    sub-long v2, v4, v2

    .line 52
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleep:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/camera/zoe/ClassicZoeCamera;->takePicture(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 63
    goto/16 :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->TAG:Ljava/lang/String;

    const-string v2, "onBurstShotJpegReceived() - Fail to take next picture"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/burst/BurstCameraState;->StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->TAG:Ljava/lang/String;

    const-string v2, "onBurstShotJpegReceived() - Complete burst-shots"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ClassicZoeCamera;->onResetStates()V

    move v0, v1

    .line 71
    goto/16 :goto_0

    .line 58
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public startBurstShots()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ClassicZoeCamera;->threadAccessCheck()V

    .line 82
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ClassicZoeCamera;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->TAG:Ljava/lang/String;

    const-string v2, "startBurstShots() - Component is not running"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 108
    :goto_0
    return v0

    .line 89
    :cond_0
    sget-object v3, Lcom/htc/camera/zoe/ClassicZoeCamera$1;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 104
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startBurstShots() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 105
    goto :goto_0

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->TAG:Ljava/lang/String;

    const-string v3, "startBurstShots()"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->m_StartTime:J

    .line 94
    invoke-virtual {p0, v2}, Lcom/htc/camera/zoe/ClassicZoeCamera;->takePicture(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->TAG:Ljava/lang/String;

    const-string v2, "startBurstShots() - Fail to take burst shots"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 97
    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->TAG:Ljava/lang/String;

    const-string v1, "startBurstShots() - Already taking burst shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 102
    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ClassicZoeCamera;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v2

    .line 108
    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
