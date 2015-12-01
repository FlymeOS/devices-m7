.class public Lcom/htc/camera/menu/WhiteBalanceMenuItem;
.super Lcom/htc/camera/menu/ListPreferenceMenuItem;
.source "WhiteBalanceMenuItem.java"


# instance fields
.field private final m_CameraActivity:Lcom/htc/camera/HTCCamera;

.field private final m_CameraType:Lcom/htc/camera/CameraType;

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private final m_ImageSettings:Lcom/htc/camera/ImageSettings;


# virtual methods
.method protected checkSubItemVisibility(Lcom/htc/camera/menu/MenuItem;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/menu/WhiteBalanceMenuItem;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 55
    const-string v0, "WhiteBalanceMenuItem"

    const-string v1, "checkSubItemVisibility() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/camera/CameraController;->isWhiteBalanceSupported(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSubItemClicked(Lcom/htc/camera/menu/MenuItem;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/htc/camera/menu/ListPreferenceMenuItem;->onSubItemClicked(Lcom/htc/camera/menu/MenuItem;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/htc/camera/menu/WhiteBalanceMenuItem;->m_CameraType:Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/htc/camera/menu/WhiteBalanceMenuItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    iput-object p2, v0, Lcom/htc/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/menu/WhiteBalanceMenuItem;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/htc/camera/menu/WhiteBalanceMenuItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 77
    :cond_0
    const-string v0, "auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/htc/camera/menu/WhiteBalanceMenuItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/htc/camera/menu/WhiteBalanceMenuItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/htc/camera/menu/WhiteBalanceMenuItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    const-class v1, Lcom/htc/camera/effect/AutoScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    .line 85
    iget-object v0, p0, Lcom/htc/camera/menu/WhiteBalanceMenuItem;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ak;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 86
    if-eqz v0, :cond_3

    .line 87
    const v1, 0x7f08019c

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    .line 93
    :cond_1
    :goto_1
    return-void

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/menu/WhiteBalanceMenuItem;->m_ImageSettings:Lcom/htc/camera/ImageSettings;

    iput-object p2, v0, Lcom/htc/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_3
    const-string v0, "WhiteBalanceMenuItem"

    const-string v1, "onSubItemClicked() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
