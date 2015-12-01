.class public abstract Lcom/htc/camera/burst/ClassicBurstCameraBase;
.super Lcom/htc/camera/burst/BurstCameraBase;
.source "ClassicBurstCameraBase.java"


# instance fields
.field private m_BurstFps:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/htc/camera/burst/BurstCameraBase;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public getBurstFPS()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCameraBase;->m_BurstFps:Ljava/lang/Integer;

    .line 71
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCameraBase;->m_BurstFps:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public stopBurstShots()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "stopBurstShots()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/htc/camera/burst/ClassicBurstCameraBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "stopBurstShots() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v1, Lcom/htc/camera/burst/ClassicBurstCameraBase$1;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 52
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "stopBurstShots() - No need to stop burst-shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/ClassicBurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/burst/ClassicBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "stopBurstShots() - Stopping burst-shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
