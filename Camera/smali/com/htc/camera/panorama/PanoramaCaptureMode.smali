.class public Lcom/htc/camera/panorama/PanoramaCaptureMode;
.super Lcom/htc/camera/capturemode/CaptureMode;
.source "PanoramaCaptureMode.java"


# instance fields
.field private m_PanoramaPlusUI:Lcom/htc/camera/panorama/PanoramaPlusUI;

.field private m_Retry:Z


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/panorama/PanoramaCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    const-string v0, "Panorama Mode"

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/panorama/PanoramaCaptureMode;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Lcom/htc/camera/capturemode/CaptureMode;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/panorama/PanoramaCaptureMode;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->m_Retry:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/panorama/PanoramaCaptureMode;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->m_Retry:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/camera/panorama/PanoramaCaptureMode;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->enterPanoramaPlus(I)V

    return-void
.end method

.method private enterPanoramaPlus(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 195
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->linkToPanoramaPlus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->switchModeBeforeEnter(Z)V

    .line 198
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 199
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->m_PanoramaPlusUI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-virtual {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->enter(I)V

    .line 206
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 197
    goto :goto_0

    :cond_1
    move v1, v2

    .line 198
    goto :goto_1

    .line 203
    :cond_2
    iput-boolean v1, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->m_Retry:Z

    .line 204
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "enterPanoramaPlus() - Panorama Plus UI is null, enter mode later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private exitPanoramaPlus(I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->m_PanoramaPlusUI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    if-eqz v1, :cond_2

    .line 225
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 226
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 227
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->m_PanoramaPlusUI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-virtual {v1, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->exit(I)V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_2
    iput-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->m_Retry:Z

    .line 233
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "exitPanoramaPlus() - Panorama Plus UI is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initialize(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->isFlashSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/panorama/PanoramaType;->PanoramaPlus:Lcom/htc/camera/panorama/PanoramaType;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->use3DPreviewRendering:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_NORMAL_COMPONENTS_INITIALIZED:Lcom/htc/camera/base/PropertyKey;

    new-instance v1, Lcom/htc/camera/panorama/PanoramaCaptureMode$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/panorama/PanoramaCaptureMode$1;-><init>(Lcom/htc/camera/panorama/PanoramaCaptureMode;)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 100
    return-void
.end method

.method private linkToPanoramaPlus()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 250
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->m_PanoramaPlusUI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    if-eqz v0, :cond_0

    .line 254
    :goto_0
    return v1

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/PanoramaPlusUI;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->m_PanoramaPlusUI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    .line 254
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->m_PanoramaPlusUI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private switchModeBeforeEnter(Z)V
    .locals 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 275
    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1, v2, p1}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)Z

    .line 276
    return-void
.end method


# virtual methods
.method public bridge synthetic clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->clone(Ljava/lang/String;)Lcom/htc/camera/panorama/PanoramaCaptureMode;

    move-result-object v0

    return-object v0
.end method

.method public clone(Ljava/lang/String;)Lcom/htc/camera/panorama/PanoramaCaptureMode;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/htc/camera/panorama/PanoramaCaptureMode;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/panorama/PanoramaCaptureMode;-><init>(Lcom/htc/camera/panorama/PanoramaCaptureMode;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v1, 0x7f080210

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/htc/camera/CameraSettings;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lcom/htc/camera/CameraSettings;

    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, "panorama"

    :cond_0
    invoke-direct {v0, v1, p1}, Lcom/htc/camera/CameraSettings;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_PHOTO_SIZE_MODE:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 143
    return-object v0
.end method

.method protected onEnter(Lcom/htc/camera/capturemode/CaptureMode;I)Z
    .locals 2

    .prologue
    .line 149
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/panorama/PanoramaType;->PanoramaPlus:Lcom/htc/camera/panorama/PanoramaType;

    if-ne v0, v1, :cond_1

    .line 152
    invoke-direct {p0, p2}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->enterPanoramaPlus(I)V

    .line 159
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onEnter() - Same panorama type, skip"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onExit(Lcom/htc/camera/capturemode/CaptureMode;I)V
    .locals 2

    .prologue
    .line 165
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/panorama/PanoramaType;->PanoramaPlus:Lcom/htc/camera/panorama/PanoramaType;

    if-ne v0, v1, :cond_1

    .line 168
    invoke-direct {p0, p2}, Lcom/htc/camera/panorama/PanoramaCaptureMode;->exitPanoramaPlus(I)V

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "onExit() - Same panorama type, skip"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setEffectContextOnEnter(Lcom/htc/camera/effect/EffectContext;)V
    .locals 1

    .prologue
    .line 263
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/htc/camera/effect/EffectContext;->setFlags(I)V

    .line 264
    invoke-super {p0, p1}, Lcom/htc/camera/capturemode/CaptureMode;->setEffectContextOnEnter(Lcom/htc/camera/effect/EffectContext;)V

    .line 265
    return-void
.end method
