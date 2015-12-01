.class public final Lcom/htc/camera/manualcapture/ManualCaptureScene;
.super Lcom/htc/camera/effect/EffectBase;
.source "ManualCaptureScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# instance fields
.field private m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 25
    const-string v0, "Manual-Capture"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 26
    return-void
.end method

.method private linkToComponent()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 101
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureScene;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return v1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/manualcapture/ManualCaptureUI;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/ManualCaptureUI;

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureScene;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    .line 104
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureScene;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

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
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureScene;->linkToComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureScene;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->enter(I)V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureScene;->TAG:Ljava/lang/String;

    const-string v1, "applyEffect() - Cannot link to component"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ManualCaptureScene;->linkToComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureScene;->m_UI:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->exit(I)V

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureScene;->TAG:Ljava/lang/String;

    const-string v1, "cancelEffect() - Cannot link to component"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportManualCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const/16 v0, 0x51

    .line 61
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportSameFeaturesForAllCameras()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/16 v0, 0x55

    .line 66
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/htc/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/ManualCaptureScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f080218

    return v0
.end method
