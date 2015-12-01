.class public Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;
.super Lcom/htc/camera/capturemode/CaptureMode;
.source "PhotoBoothCaptureMode.java"


# instance fields
.field private m_IsEnter:Z

.field m_PhototBoothUI:Lcom/htc/camera/photopattern/IPhotoBoothController;

.field private m_Retry:Z

.field private supportPatterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "photobooth-capture-pattern"

    invoke-static {v0}, Lcom/htc/camera/Settings;->addPrivateKey(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const-string v0, "PhotoBooth Capture Mode"

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 37
    iput-boolean v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_Retry:Z

    .line 38
    iput-boolean v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_IsEnter:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;)V

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Lcom/htc/camera/capturemode/CaptureMode;Ljava/lang/String;)V

    .line 37
    iput-boolean v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_Retry:Z

    .line 38
    iput-boolean v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_IsEnter:Z

    .line 54
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->initialize(Lcom/htc/camera/HTCCamera;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_Retry:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_Retry:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;)Z
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->linkToComponents()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_IsEnter:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialize(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->needRestartPreviewAfterEntering:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/photopattern/IPhotoBoothController;->DEFAULTPATTERN:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_REALTIME_COMPONENTS_CREATED:Lcom/htc/camera/base/PropertyKey;

    new-instance v1, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;-><init>(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;)V

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 121
    iget-object v0, p1, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$2;-><init>(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 136
    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCustomSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "photobooth-capture-pattern"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_PhototBoothUI:Lcom/htc/camera/photopattern/IPhotoBoothController;

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/photopattern/IPhotoBoothController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/IPhotoBoothController;

    iput-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_PhototBoothUI:Lcom/htc/camera/photopattern/IPhotoBoothController;

    .line 269
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->setCapturePattern(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_PhototBoothUI:Lcom/htc/camera/photopattern/IPhotoBoothController;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    move-result-object v0

    return-object v0
.end method

.method public clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;-><init>(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v1, 0x7f080407

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/htc/camera/CameraSettings;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Lcom/htc/camera/CameraSettings;

    invoke-virtual {p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, "photobooth"

    :cond_0
    invoke-direct {v0, v1, p1}, Lcom/htc/camera/CameraSettings;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 145
    const-string v1, "pref_live_face_beautifier"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    const-string v1, "pref_front_camera_skin_beautifier_level"

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setDefaultValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    return-object v0
.end method

.method protected onEnter(Lcom/htc/camera/capturemode/CaptureMode;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 153
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    move v0, v1

    .line 155
    :goto_0
    iput-boolean v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_IsEnter:Z

    .line 157
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    sget-object v4, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    sget-object v5, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v3, v4, v5, v0}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)Z

    .line 158
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->isPhotoBoothMode:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    invoke-direct {p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_PhototBoothUI:Lcom/htc/camera/photopattern/IPhotoBoothController;

    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_PhototBoothUI:Lcom/htc/camera/photopattern/IPhotoBoothController;

    iget-object v0, v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v3, v2, v0}, Lcom/htc/camera/photopattern/IPhotoBoothController;->enterPhotoBoothMode(ILcom/htc/camera/photopattern/PhotoBoothPattern;)V

    .line 169
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 153
    goto :goto_0

    .line 168
    :cond_2
    iput-boolean v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_Retry:Z

    goto :goto_1
.end method

.method protected onExit(Lcom/htc/camera/capturemode/CaptureMode;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 177
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoBoothMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_PhototBoothUI:Lcom/htc/camera/photopattern/IPhotoBoothController;

    invoke-virtual {v2, v0}, Lcom/htc/camera/photopattern/IPhotoBoothController;->exitPhotoBoothMode(I)V

    .line 198
    :goto_1
    iput-boolean v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_Retry:Z

    .line 199
    iput-boolean v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_IsEnter:Z

    .line 201
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "Cannot link to photoBooth UI"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_1
    if-nez p1, :cond_2

    .line 193
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_PhototBoothUI:Lcom/htc/camera/photopattern/IPhotoBoothController;

    invoke-virtual {v0, p2}, Lcom/htc/camera/photopattern/IPhotoBoothController;->exitPhotoBoothMode(I)V

    goto :goto_1

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "onExit() - Same CaptureMode photoBooth, skip"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setCapturePattern(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->setCapturePattern(Ljava/lang/String;Z)V

    .line 205
    return-void
.end method

.method public setCapturePattern(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->supportPatterns:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Lcom/htc/camera/photopattern/IPhotoBoothController;->getSupportedPattern()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->supportPatterns:Ljava/util/ArrayList;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCapturePattern ---"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    if-eqz p1, :cond_3

    .line 214
    const/4 v3, 0x0

    .line 216
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->supportPatterns:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    move v1, v2

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->supportPatterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 220
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->supportPatterns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->supportPatterns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    .line 226
    :goto_1
    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot recognized pattern - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->supportPatterns:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    .line 234
    :cond_1
    :goto_2
    if-eqz v0, :cond_3

    .line 236
    iget-object v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial capture type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    if-eqz p2, :cond_2

    .line 238
    iget-object v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCustomSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    const-string v2, "photobooth-capture-pattern"

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 240
    iget-object v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_PhototBoothUI:Lcom/htc/camera/photopattern/IPhotoBoothController;

    if-eqz v1, :cond_3

    .line 241
    iget-object v1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_PhototBoothUI:Lcom/htc/camera/photopattern/IPhotoBoothController;

    invoke-virtual {v1, v0}, Lcom/htc/camera/photopattern/IPhotoBoothController;->setCurrentPattern(Lcom/htc/camera/photopattern/PhotoBoothPattern;)V

    .line 245
    :cond_3
    return-void

    .line 218
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "no support PhotoPattern"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_2

    :cond_6
    move-object v0, v3

    goto :goto_1
.end method

.method protected setEffectContextOnEnter(Lcom/htc/camera/effect/EffectContext;)V
    .locals 1

    .prologue
    .line 253
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/htc/camera/effect/EffectContext;->setFlags(I)V

    .line 254
    invoke-super {p0, p1}, Lcom/htc/camera/capturemode/CaptureMode;->setEffectContextOnEnter(Lcom/htc/camera/effect/EffectContext;)V

    .line 255
    return-void
.end method
