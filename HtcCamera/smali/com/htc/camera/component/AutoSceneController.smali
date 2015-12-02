.class public final Lcom/htc/camera/component/AutoSceneController;
.super Lcom/htc/camera/IAutoSceneController;
.source "AutoSceneController.java"


# instance fields
.field private m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;

.field private m_EffectController:Lcom/htc/camera/effect/aa;

.field m_LatestEventArgs:Lcom/htc/camera/HtcCallbackEventArgs;

.field private m_SceneController:Lcom/htc/camera/effect/ac;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    .line 42
    const-string v0, "Auto-Scene Controller"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/IAutoSceneController;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/AutoSceneController;)Lcom/htc/camera/component/AutoSceneUI;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/AutoSceneController;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneController;->notifySmartSceneToUI()V

    return-void
.end method

.method private notifySmartSceneToUI()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 176
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->m_LatestEventArgs:Lcom/htc/camera/HtcCallbackEventArgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->m_LatestEventArgs:Lcom/htc/camera/HtcCallbackEventArgs;

    iget v0, v0, Lcom/htc/camera/HtcCallbackEventArgs;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneController;->isWdrScene:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/AutoSceneController;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->m_LatestEventArgs:Lcom/htc/camera/HtcCallbackEventArgs;

    iget v0, v0, Lcom/htc/camera/HtcCallbackEventArgs;->arg2:I

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;

    const/16 v2, 0x2711

    iget-object v5, p0, Lcom/htc/camera/component/AutoSceneController;->m_LatestEventArgs:Lcom/htc/camera/HtcCallbackEventArgs;

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AutoSceneController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 184
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 179
    goto :goto_0
.end method

.method private onEnterSmartSceneDetector()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->m_EffectController:Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/aa;->setColorEffect(Ljava/lang/String;Z)V

    .line 81
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->m_EffectController:Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->m_SceneController:Lcom/htc/camera/effect/ac;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->isWdrScene:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_2

    .line 94
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneController;->TAG:Ljava/lang/String;

    const-string v2, "onEnterSmartSceneDetector() - Enable smart scene detect"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "onEnterSmartSceneDetector() - Cannot enable smart scene detect because there is no camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExitSmartSceneDetector()V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneController;->TAG:Ljava/lang/String;

    const-string v2, "onExitSmartSceneDetector() - Disable smart scene detect"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->isWdrScene:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    const-class v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoSceneController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    .line 128
    if-eqz v0, :cond_1

    .line 129
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;)V

    .line 132
    :goto_1
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "onExitSmartSceneDetector() - Cannot disable smart scene detect because there is no camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "onExitSmartSceneDetector() - No ISceneController to reset scene mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    invoke-super {p0, p1}, Lcom/htc/camera/IAutoSceneController;->handleMessage(Landroid/os/Message;)V

    .line 70
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneController;->onEnterSmartSceneDetector()V

    goto :goto_0

    .line 58
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneController;->onExitSmartSceneDetector()V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/AutoSceneUI;

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;

    .line 63
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneController;->notifySmartSceneToUI()V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-super {p0}, Lcom/htc/camera/IAutoSceneController;->initializeOverride()V

    .line 144
    const-class v0, Lcom/htc/camera/component/AutoSceneUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoSceneController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/AutoSceneUI;

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;

    .line 145
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;

    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;

    const/16 v2, 0x2713

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/AutoSceneController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 152
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/AutoSceneController$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AutoSceneController$1;-><init>(Lcom/htc/camera/component/AutoSceneController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 169
    return-void
.end method
