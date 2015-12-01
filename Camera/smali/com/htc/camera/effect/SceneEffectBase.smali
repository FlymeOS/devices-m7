.class public abstract Lcom/htc/camera/effect/SceneEffectBase;
.super Lcom/htc/camera/effect/EffectBase;
.source "SceneEffectBase.java"


# static fields
.field private static m_FrontCameraSceneSupportedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_MainCameraSceneSupportedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_SceneController:Lcom/htc/camera/effect/ac;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneEffectBase;->linkToSceneController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/htc/camera/effect/SceneEffectBase;->m_SceneController:Lcom/htc/camera/effect/ac;

    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneEffectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/SceneEffectBase;->TAG:Ljava/lang/String;

    const-string v1, "Cannot find scene controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public getCapabilities()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneEffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v3

    .line 58
    if-nez v3, :cond_3

    .line 60
    sget-object v0, Lcom/htc/camera/effect/SceneEffectBase;->m_MainCameraSceneSupportedList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneEffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 63
    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/htc/camera/effect/SceneEffectBase;->TAG:Ljava/lang/String;

    const-string v2, "getCapabilities() - Cannot get camera controller"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/effect/SceneEffectBase;->m_MainCameraSceneSupportedList:Ljava/util/List;

    .line 70
    :cond_2
    sget-object v0, Lcom/htc/camera/effect/SceneEffectBase;->m_MainCameraSceneSupportedList:Ljava/util/List;

    move-object v2, v0

    .line 86
    :goto_1
    if-nez v2, :cond_6

    .line 88
    iget-object v0, p0, Lcom/htc/camera/effect/SceneEffectBase;->TAG:Ljava/lang/String;

    const-string v2, "getCapabilities() - Cannot get scene supported list"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 89
    goto :goto_0

    .line 74
    :cond_3
    sget-object v0, Lcom/htc/camera/effect/SceneEffectBase;->m_FrontCameraSceneSupportedList:Ljava/util/List;

    if-nez v0, :cond_5

    .line 76
    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneEffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 77
    if-nez v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/htc/camera/effect/SceneEffectBase;->TAG:Ljava/lang/String;

    const-string v2, "getCapabilities() - Cannot get camera controller"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/effect/SceneEffectBase;->m_FrontCameraSceneSupportedList:Ljava/util/List;

    .line 84
    :cond_5
    sget-object v0, Lcom/htc/camera/effect/SceneEffectBase;->m_FrontCameraSceneSupportedList:Ljava/util/List;

    move-object v2, v0

    goto :goto_1

    .line 93
    :cond_6
    const v0, 0x7fffffff

    .line 94
    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneEffectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 97
    if-nez v3, :cond_7

    .line 98
    const v0, 0x7fffff8c

    goto :goto_0

    .line 100
    :cond_7
    const v0, 0x7fffff83

    goto :goto_0

    .line 102
    :cond_8
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportSameFeaturesForAllCameras()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    const-string v1, "hdr"

    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneEffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const v0, 0x7ffffffb

    goto :goto_0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/htc/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x20

    return v0
.end method

.method protected final getSceneController()Lcom/htc/camera/effect/ac;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/camera/effect/SceneEffectBase;->m_SceneController:Lcom/htc/camera/effect/ac;

    return-object v0
.end method

.method protected final linkToSceneController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 128
    iget-object v0, p0, Lcom/htc/camera/effect/SceneEffectBase;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return v1

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneEffectBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/effect/ac;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    iput-object v0, p0, Lcom/htc/camera/effect/SceneEffectBase;->m_SceneController:Lcom/htc/camera/effect/ac;

    .line 131
    iget-object v0, p0, Lcom/htc/camera/effect/SceneEffectBase;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public releaseCachedResources()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/effect/SceneEffectBase;->m_SceneController:Lcom/htc/camera/effect/ac;

    .line 141
    invoke-super {p0}, Lcom/htc/camera/effect/EffectBase;->releaseCachedResources()V

    .line 142
    return-void
.end method
