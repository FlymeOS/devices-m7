.class public final Lcom/htc/camera/effect/SmartSceneDetectorScene;
.super Lcom/htc/camera/effect/SceneEffectBase;
.source "SmartSceneDetectorScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# instance fields
.field private m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 25
    const-string v0, "Smart Scene"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 26
    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v0, p0, Lcom/htc/camera/effect/SmartSceneDetectorScene;->m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return v1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/SmartSceneDetectorScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/component/AutoSceneUI;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/AutoSceneUI;

    iput-object v0, p0, Lcom/htc/camera/effect/SmartSceneDetectorScene;->m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;

    .line 79
    iget-object v0, p0, Lcom/htc/camera/effect/SmartSceneDetectorScene;->m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected applyEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/camera/effect/SmartSceneDetectorScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/htc/camera/effect/SmartSceneDetectorScene;->m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoSceneUI;->enterSmartSceneDetectMode()V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/SmartSceneDetectorScene;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to SmartSceneDetector UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/camera/effect/SmartSceneDetectorScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/htc/camera/effect/SmartSceneDetectorScene;->m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoSceneUI;->exitSmartSceneDetectMode()V

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/SmartSceneDetectorScene;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to SmartSceneDetector UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/htc/camera/effect/SmartSceneDetectorScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->isSmartSceneDetectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/16 v0, 0x51

    .line 66
    :goto_0
    return v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/SmartSceneDetectorScene;->TAG:Ljava/lang/String;

    const-string v1, "Smart scene detection is not supported."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method
