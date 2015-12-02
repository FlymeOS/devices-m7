.class public final Lcom/htc/camera/effect/AutoScene;
.super Lcom/htc/camera/effect/SceneEffectBase;
.source "AutoScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# instance fields
.field private m_IsFaceBeautifierEnabled:Z

.field private final m_IsFaceBeautifierEnabledChangedListener:Lcom/htc/camera/property/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/DynamicPropertyChangedListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 33
    const-string v0, "auto"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 36
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isFrontCameraFaceBeautifierSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/effect/AutoScene$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/AutoScene$1;-><init>(Lcom/htc/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 52
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/effect/AutoScene$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/AutoScene$2;-><init>(Lcom/htc/camera/effect/AutoScene;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 66
    new-instance v0, Lcom/htc/camera/effect/AutoScene$3;

    const-string v1, "currentSettings.isFrontFaceBeautifierEnabled"

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/camera/effect/AutoScene$3;-><init>(Lcom/htc/camera/effect/AutoScene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/effect/AutoScene;->m_IsFaceBeautifierEnabledChangedListener:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/effect/AutoScene;->m_IsFaceBeautifierEnabledChangedListener:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/effect/AutoScene;)Z
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/camera/effect/AutoScene;->canEnableFaceBeautifier()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/effect/AutoScene;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/camera/effect/AutoScene;->enableFaceBeautifier()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/effect/AutoScene;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/camera/effect/AutoScene;->disableFaceBeautifier()V

    return-void
.end method

.method private canEnableFaceBeautifier()Z
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/htc/camera/effect/AutoScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 115
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 116
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isFrontCameraFaceBeautifierSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isFrontFaceBeautifierEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableFaceBeautifier()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene;->TAG:Ljava/lang/String;

    const-string v1, "disableFaceBeautifier()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-boolean v0, p0, Lcom/htc/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene;->TAG:Ljava/lang/String;

    const-string v1, "disableFaceBeautifier() - Face beautifier is already disabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/AutoScene;->linkToSceneController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/htc/camera/effect/AutoScene;->getSceneController()Lcom/htc/camera/effect/ac;

    move-result-object v0

    const-string v1, "auto"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    .line 150
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene;->TAG:Ljava/lang/String;

    const-string v1, "disableFaceBeautifier() - No ISceneController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private enableFaceBeautifier()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 158
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene;->TAG:Ljava/lang/String;

    const-string v1, "enableFaceBeautifier()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-boolean v0, p0, Lcom/htc/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene;->TAG:Ljava/lang/String;

    const-string v1, "enableFaceBeautifier() - Face beautifier is already enabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/AutoScene;->linkToSceneController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/htc/camera/effect/AutoScene;->getSceneController()Lcom/htc/camera/effect/ac;

    move-result-object v0

    const-string v1, "portrait"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    .line 181
    :goto_1
    iput-boolean v2, p0, Lcom/htc/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene;->TAG:Ljava/lang/String;

    const-string v1, "enableFaceBeautifier() - No ISceneController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected applyEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/camera/effect/AutoScene;->canEnableFaceBeautifier()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-super {p0, p1}, Lcom/htc/camera/effect/SceneEffectBase;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/effect/AutoScene;->enableFaceBeautifier()V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/camera/effect/AutoScene;->m_IsFaceBeautifierEnabled:Z

    if-nez v0, :cond_0

    .line 104
    invoke-super {p0, p1}, Lcom/htc/camera/effect/SceneEffectBase;->cancelEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/effect/AutoScene;->disableFaceBeautifier()V

    goto :goto_0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 190
    const v0, 0x7fffffff

    return v0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/htc/camera/effect/AutoScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 216
    const v0, 0x7f0803a4

    return v0
.end method

.method protected prepareApplyEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Lcom/htc/camera/effect/SceneEffectBase;->prepareApplyEffect(Lcom/htc/camera/effect/EffectBase;I)V

    .line 229
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene;->TAG:Ljava/lang/String;

    const-string v1, "prepareApplyEffect() - Reset to auto scene for changing camera mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/AutoScene;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 234
    :cond_0
    return-void
.end method

.method protected releaseOverride()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene;->m_IsFaceBeautifierEnabledChangedListener:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/htc/camera/effect/AutoScene;->m_IsFaceBeautifierEnabledChangedListener:Lcom/htc/camera/property/DynamicPropertyChangedListener;

    invoke-virtual {v0}, Lcom/htc/camera/property/DynamicPropertyChangedListener;->release()V

    .line 244
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/effect/SceneEffectBase;->releaseOverride()V

    .line 245
    return-void
.end method
