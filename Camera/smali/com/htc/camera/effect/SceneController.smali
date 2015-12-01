.class final Lcom/htc/camera/effect/SceneController;
.super Lcom/htc/camera/effect/ac;
.source "SceneController.java"


# instance fields
.field private m_Scene:Ljava/lang/String;

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    .line 36
    const-string v0, "Scene Controller"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/effect/ac;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 28
    const-string v0, "auto"

    iput-object v0, p0, Lcom/htc/camera/effect/SceneController;->m_Scene:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/effect/SceneController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/camera/effect/SceneController;->m_Scene:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 48
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/effect/SceneController;->setScene(Ljava/lang/String;Z)V

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/effect/ac;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/htc/camera/effect/ac;->initializeOverride()V

    .line 64
    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/effect/SceneController;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 77
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/effect/SceneController$1;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/effect/SceneController$1;-><init>(Lcom/htc/camera/effect/SceneController;Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 98
    return-void
.end method

.method public setScene(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/htc/camera/effect/SceneController;->TAG:Ljava/lang/String;

    const-string v1, "setScene() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/16 v2, 0x2711

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/effect/SceneController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/htc/camera/effect/SceneController;->TAG:Ljava/lang/String;

    const-string v1, "setScene() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/SceneController;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/effect/SceneController;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "zoe"

    if-eq p1, v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/htc/camera/effect/SceneController;->TAG:Ljava/lang/String;

    const-string v1, "setScene() - Do not change scene when Zoe is active"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    if-nez p1, :cond_5

    .line 129
    const-string v2, "auto"

    .line 132
    :goto_1
    iput-object v2, p0, Lcom/htc/camera/effect/SceneController;->m_Scene:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/htc/camera/effect/SceneController;->TAG:Ljava/lang/String;

    const-string v1, "setScene() - Do not set photo scene in video mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v6

    .line 143
    if-eqz v6, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/camera/effect/SceneController;->TAG:Ljava/lang/String;

    const-string v1, "setScene("

    const-string v3, ", "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v6, v2}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 148
    if-eqz p2, :cond_0

    .line 149
    invoke-virtual {v6}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0

    :cond_5
    move-object v2, p1

    goto :goto_1
.end method
