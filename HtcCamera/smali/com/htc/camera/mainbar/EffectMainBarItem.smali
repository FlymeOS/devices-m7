.class public Lcom/htc/camera/mainbar/EffectMainBarItem;
.super Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;
.source "EffectMainBarItem.java"


# instance fields
.field private m_AllEffectMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/menu/IconMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

.field private m_HasChange:Z

.field private m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x5

    const-wide/16 v1, 0x1388

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;IJ)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_AllEffectMenuItems:Ljava/util/List;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_HasChange:Z

    .line 78
    const v0, 0x7f08042d

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/EffectMainBarItem;->setTitle(I)V

    .line 81
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 82
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "EffectMainBarItem() - No capture mode manager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 87
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "EffectMainBarItem() - No effect manager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 92
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "EffectMainBarItem() - No ZOE controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 97
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-nez v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "EffectMainBarItem() - No Dual camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    .line 102
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-nez v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "EffectMainBarItem() - No Split photo controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iput-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    .line 107
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    if-nez v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "EffectMainBarItem() - No Expandable menu UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_5
    new-instance v0, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconDrawable;

    iget-object v1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_Res:Landroid/content/res/Resources;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconDrawable;-><init>(Lcom/htc/camera/mainbar/EffectMainBarItem;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/EffectMainBarItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-direct {p0}, Lcom/htc/camera/mainbar/EffectMainBarItem;->updateItem()V

    .line 114
    invoke-direct {p0}, Lcom/htc/camera/mainbar/EffectMainBarItem;->setupCallBacks()V

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/mainbar/EffectMainBarItem;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/camera/mainbar/EffectMainBarItem;->updateItem()V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/camera/mainbar/EffectMainBarItem;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_HasChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/camera/mainbar/EffectMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/mainbar/EffectMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setupCallBacks()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/EffectMainBarItem$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/EffectMainBarItem$1;-><init>(Lcom/htc/camera/mainbar/EffectMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 164
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/EffectMainBarItem$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/EffectMainBarItem$2;-><init>(Lcom/htc/camera/mainbar/EffectMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 174
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/EffectMainBarItem$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/EffectMainBarItem$3;-><init>(Lcom/htc/camera/mainbar/EffectMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 184
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/EffectMainBarItem$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/EffectMainBarItem$4;-><init>(Lcom/htc/camera/mainbar/EffectMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 195
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/EffectMainBarItem$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/EffectMainBarItem$5;-><init>(Lcom/htc/camera/mainbar/EffectMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/EffectMainBarItem$6;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/EffectMainBarItem$6;-><init>(Lcom/htc/camera/mainbar/EffectMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/mainbar/EffectMainBarItem$7;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/EffectMainBarItem$7;-><init>(Lcom/htc/camera/mainbar/EffectMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/EffectMainBarItem$8;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/EffectMainBarItem$8;-><init>(Lcom/htc/camera/mainbar/EffectMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 246
    :cond_3
    return-void
.end method

.method private updateAvailableEffectItems()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 289
    iget-boolean v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_HasChange:Z

    if-nez v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iput-boolean v4, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_HasChange:Z

    .line 294
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v3, v0

    .line 296
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateAvailableEffectItems() - Capture mode : "

    invoke-static {v0, v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_AllEffectMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 302
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_14

    .line 305
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 306
    if-eqz v3, :cond_2

    iget-object v0, v3, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v2, v5

    .line 307
    :goto_2
    if-eqz v3, :cond_3

    iget-object v0, v3, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v1, v5

    .line 308
    :goto_3
    if-eqz v2, :cond_a

    .line 310
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->effectList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 311
    if-eqz v0, :cond_4

    .line 312
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v2, "updateAvailableEffectItems() - Add photo effects, list size : "

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 336
    :cond_5
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 338
    new-instance v2, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;

    iget-object v6, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v2, v6, v0}, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/effect/EffectBase;)V

    .line 339
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_AllEffectMenuItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 294
    :cond_6
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_1

    :cond_7
    move v2, v4

    .line 306
    goto :goto_2

    :cond_8
    move v1, v4

    .line 307
    goto :goto_3

    :cond_9
    move v0, v4

    .line 313
    goto :goto_4

    .line 315
    :cond_a
    if-eqz v1, :cond_5

    .line 317
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->effectList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 318
    if-eqz v0, :cond_d

    .line 320
    if-eqz v1, :cond_c

    .line 322
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    .line 324
    instance-of v7, v1, Lcom/htc/camera/effect/an;

    if-nez v7, :cond_b

    .line 325
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 329
    :cond_c
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    :cond_d
    iget-object v1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v2, "updateAvailableEffectItems() - Add video effects, list size : "

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    move v0, v4

    goto :goto_8

    .line 343
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 344
    iget-object v1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_AllEffectMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/menu/IconMenuItem;

    move-object v2, v1

    .line 346
    check-cast v2, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;

    # getter for: Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;->effect:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;->access$000(Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v7

    .line 347
    if-ne v7, v0, :cond_12

    move v2, v5

    :goto_a
    invoke-virtual {v1, v2}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 348
    invoke-virtual {v7}, Lcom/htc/camera/effect/EffectBase;->getCapabilities()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iget-object v2, v2, Lcom/htc/camera/splitcapture/ISplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v2}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    iget-object v2, v3, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v2

    if-nez v2, :cond_13

    .line 351
    :cond_11
    invoke-virtual {v1, v4}, Lcom/htc/camera/menu/IconMenuItem;->setIndicatorVisibility(Z)V

    .line 354
    :goto_b
    invoke-virtual {v1, v5}, Lcom/htc/camera/menu/IconMenuItem;->setFilterVisibility(Z)V

    goto :goto_9

    :cond_12
    move v2, v4

    .line 347
    goto :goto_a

    .line 353
    :cond_13
    invoke-virtual {v1, v5}, Lcom/htc/camera/menu/IconMenuItem;->setIndicatorVisibility(Z)V

    goto :goto_b

    .line 358
    :cond_14
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateAvailableEffectItems() - No effect manager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateItem()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 251
    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v1, :cond_3

    .line 255
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_2

    .line 257
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 258
    instance-of v2, v0, Lcom/htc/camera/effect/AutoScene;

    .line 259
    iget-object v1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v1, v1, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v1}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v1, v1, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    move-object v1, v0

    move v0, v3

    .line 277
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/EffectMainBarItem;->setEnabled(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/EffectMainBarItem;->invalidate()V

    .line 279
    iget-object v2, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateItem() - isFilterEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " currentScene = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 268
    instance-of v1, v0, Lcom/htc/camera/effect/an;

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v2, "updateItem() - m_EffectManager is null"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    move v0, v3

    goto :goto_0

    .line 279
    :cond_4
    const-string v0, "NULL"

    goto :goto_1

    :cond_5
    move-object v1, v0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected isDefaultValue()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/am;

    .line 123
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/am;

    goto :goto_0
.end method

.method protected onItemClicked()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "onItemClicked() - Click"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/htc/camera/mainbar/EffectMainBarItem;->updateAvailableEffectItems()V

    .line 133
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_AllEffectMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_AllEffectMenuItems:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/EffectMainBarItem;->showPopupMenu(Ljava/util/List;)V

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "onItemClicked() - No items"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V
    .locals 4

    .prologue
    .line 142
    check-cast p3, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;

    # getter for: Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;->effect:Lcom/htc/camera/effect/EffectBase;
    invoke-static {p3}, Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;->access$000(Lcom/htc/camera/mainbar/EffectMainBarItem$EffectIconMenuItem;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->TAG:Ljava/lang/String;

    const-string v3, "onMenuItemClicked() - Effect: "

    if-nez v1, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/IEffectManager;->setCurrentEffect(Ljava/lang/Class;)Z

    .line 150
    :cond_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
