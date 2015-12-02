.class public Lcom/htc/camera/mainbar/SceneMainBarItem;
.super Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;
.source "SceneMainBarItem.java"


# instance fields
.field private m_AllSceneMenuItems:Ljava/util/List;
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

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 91
    invoke-direct {p0, p1, v1}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;I)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    .line 43
    iput-boolean v1, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_HasChange:Z

    .line 92
    const v0, 0x7f080428

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->setTitle(I)V

    .line 95
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 96
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "SceneMainBarItem() - No capture mode manager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 101
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "SceneMainBarItem() - No effect manager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 106
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "SceneMainBarItem() - No ZOE controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 111
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-nez v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "SceneMainBarItem() - No Dual camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iput-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    .line 116
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    if-nez v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "SceneMainBarItem() - No Expandable menu UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_4
    new-instance v0, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconDrawable;

    iget-object v1, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_Res:Landroid/content/res/Resources;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconDrawable;-><init>(Lcom/htc/camera/mainbar/SceneMainBarItem;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-direct {p0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->updateItem()V

    .line 127
    invoke-direct {p0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->setupCallBacks()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/mainbar/SceneMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/mainbar/SceneMainBarItem;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->updateItem()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/camera/mainbar/SceneMainBarItem;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_HasChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/camera/mainbar/SceneMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/mainbar/SceneMainBarItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setupCallBacks()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/SceneMainBarItem$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SceneMainBarItem$1;-><init>(Lcom/htc/camera/mainbar/SceneMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 225
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/SceneMainBarItem$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SceneMainBarItem$2;-><init>(Lcom/htc/camera/mainbar/SceneMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 236
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/SceneMainBarItem$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SceneMainBarItem$3;-><init>(Lcom/htc/camera/mainbar/SceneMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 249
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/SceneMainBarItem$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SceneMainBarItem$4;-><init>(Lcom/htc/camera/mainbar/SceneMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/SceneMainBarItem$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SceneMainBarItem$5;-><init>(Lcom/htc/camera/mainbar/SceneMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/mainbar/SceneMainBarItem$6;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SceneMainBarItem$6;-><init>(Lcom/htc/camera/mainbar/SceneMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/SceneMainBarItem$7;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SceneMainBarItem$7;-><init>(Lcom/htc/camera/mainbar/SceneMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 314
    :cond_3
    return-void
.end method

.method private updateAvailableSceneItems()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 412
    iget-boolean v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_HasChange:Z

    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iput-boolean v4, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_HasChange:Z

    .line 417
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v2, v0

    .line 419
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateAvailableSceneItems() - Capture mode : "

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 425
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_12

    .line 428
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 429
    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v6, v5

    .line 430
    :goto_2
    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v5

    .line 433
    :goto_3
    if-eqz v0, :cond_9

    .line 435
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->videosceneList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 436
    if-eqz v0, :cond_8

    .line 438
    if-eqz v6, :cond_7

    .line 440
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    .line 442
    instance-of v9, v1, Lcom/htc/camera/effect/an;

    if-nez v9, :cond_3

    .line 443
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move-object v2, v3

    .line 417
    goto :goto_1

    :cond_5
    move v6, v4

    .line 429
    goto :goto_2

    :cond_6
    move v0, v4

    .line 430
    goto :goto_3

    .line 447
    :cond_7
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v8, "updateAvailableSceneItems() - Add video scenes, list size : "

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v8, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 453
    :cond_9
    if-eqz v6, :cond_b

    .line 455
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->sceneList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 456
    if-eqz v0, :cond_a

    .line 457
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 458
    :cond_a
    iget-object v1, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v8, "updateAvailableSceneItems() - Add photo scenes, list size : "

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v8, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    :cond_b
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 464
    new-instance v7, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;

    iget-object v8, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v7, v8, v0}, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/effect/EffectBase;)V

    .line 465
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    move v0, v4

    .line 449
    goto :goto_5

    :cond_d
    move v0, v4

    .line 458
    goto :goto_6

    .line 470
    :cond_e
    if-eqz v2, :cond_10

    iget-object v0, v2, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 472
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 473
    instance-of v1, v0, Lcom/htc/camera/effect/an;

    if-eqz v1, :cond_f

    if-eqz v6, :cond_f

    move-object v0, v3

    .line 475
    :cond_f
    if-nez v0, :cond_13

    .line 476
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    move-object v2, v0

    .line 480
    :goto_8
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    move-object v1, v0

    .line 482
    check-cast v1, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;

    # getter for: Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;->scene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {v1}, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;->access$100(Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v1

    .line 483
    if-ne v1, v2, :cond_11

    move v1, v5

    :goto_a
    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    goto :goto_9

    .line 479
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    move-object v2, v0

    goto :goto_8

    :cond_11
    move v1, v4

    .line 483
    goto :goto_a

    .line 499
    :cond_12
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateAvailableSceneItems() - No effect manager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    move-object v2, v0

    goto :goto_8
.end method

.method private updateItem()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 319
    .line 321
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    move v2, v3

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v5, v0

    .line 327
    :goto_1
    if-eqz v5, :cond_8

    iget-object v0, v5, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v3

    .line 333
    :goto_2
    if-eqz v5, :cond_7

    iget-object v1, v5, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v1

    if-nez v1, :cond_7

    .line 337
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_4

    .line 339
    sget-object v1, Lcom/htc/camera/mainbar/SceneMainBarItem$8;->$SwitchMap$com$htc$camera$CameraMode:[I

    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    invoke-virtual {v0}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 371
    :goto_4
    invoke-virtual {p0, v2}, Lcom/htc/camera/mainbar/SceneMainBarItem;->setEnabled(Z)V

    .line 372
    invoke-virtual {p0, v3}, Lcom/htc/camera/mainbar/SceneMainBarItem;->setVisibility(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->invalidate()V

    .line 404
    return-void

    :cond_2
    move-object v5, v4

    .line 326
    goto :goto_1

    .line 345
    :pswitch_0
    if-eqz v5, :cond_6

    iget-object v0, v5, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v5, Lcom/htc/camera/capturemode/CaptureMode;->isVideoSceneSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 347
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 348
    instance-of v1, v0, Lcom/htc/camera/effect/an;

    if-eqz v1, :cond_3

    move-object v0, v4

    .line 353
    :cond_3
    :goto_5
    if-nez v0, :cond_5

    .line 354
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    move-object v1, v0

    .line 357
    :goto_6
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconDrawable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconDrawable;->setScene(Lcom/htc/camera/effect/EffectBase;)V

    goto :goto_4

    .line 362
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->iconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconDrawable;

    iget-object v1, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconDrawable;->setScene(Lcom/htc/camera/effect/EffectBase;)V

    goto :goto_4

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateItem() - Fail to update scene icon, effect manager is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v1, v0

    goto :goto_6

    :cond_6
    move-object v0, v4

    goto :goto_5

    :cond_7
    move v3, v0

    goto/16 :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_2

    :cond_9
    move v2, v1

    goto/16 :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected isDefaultValue()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/htc/camera/effect/an;

    .line 136
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v4, v0

    .line 137
    :goto_0
    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/htc/camera/effect/AutoScene;

    .line 140
    iget-object v0, v4, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 147
    :goto_1
    return v0

    .line 136
    :cond_1
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 141
    goto :goto_1

    :cond_3
    move v0, v3

    .line 142
    goto :goto_1

    :cond_4
    move v0, v2

    .line 144
    goto :goto_1

    :cond_5
    move v0, v1

    .line 147
    goto :goto_1
.end method

.method protected onItemClicked()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "onItemClicked() - Click"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->updateAvailableSceneItems()V

    .line 164
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_AllSceneMenuItems:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/SceneMainBarItem;->showPopupMenu(Ljava/util/List;)V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "onItemClicked() - No items"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V
    .locals 4

    .prologue
    .line 173
    check-cast p3, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;

    # getter for: Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;->scene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {p3}, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;->access$100(Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v3, "onMenuItemClicked() - Scene: "

    if-nez v1, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 179
    instance-of v0, v1, Lcom/htc/camera/effect/VideoSceneBase;

    .line 180
    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/IEffectManager;->setCurrentVideoScene(Ljava/lang/Class;)Z

    .line 189
    :cond_0
    :goto_1
    return-void

    .line 175
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    goto :goto_1
.end method

.method protected onPreviewMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V
    .locals 4

    .prologue
    .line 194
    check-cast p3, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;

    # getter for: Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;->scene:Lcom/htc/camera/effect/EffectBase;
    invoke-static {p3}, Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;->access$100(Lcom/htc/camera/mainbar/SceneMainBarItem$SceneIconMenuItem;)Lcom/htc/camera/effect/EffectBase;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->TAG:Ljava/lang/String;

    const-string v3, "onPreviewMenuItemClicked() - Scene: "

    if-nez v1, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_0

    instance-of v0, v1, Lcom/htc/camera/manualcapture/ManualCaptureScene;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    iget-object v0, v0, Lcom/htc/camera/mainbar/IExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/camera/mainbar/SceneMainBarItem;->m_ExpandableMenuUI:Lcom/htc/camera/mainbar/IExpandableMenuUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/IExpandableMenuUI;->closeExpandableMenu(Z)V

    .line 210
    :cond_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
