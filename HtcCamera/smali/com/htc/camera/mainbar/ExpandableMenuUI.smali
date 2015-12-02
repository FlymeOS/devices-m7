.class public Lcom/htc/camera/mainbar/ExpandableMenuUI;
.super Lcom/htc/camera/mainbar/IExpandableMenuUI;
.source "ExpandableMenuUI.java"


# instance fields
.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

.field private m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

.field private m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

.field private m_FlashController:Lcom/htc/camera/IFlashController;

.field private m_IsMainBarItemsDisabled:Z

.field public m_MainBarItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/mainbar/MainBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_MenuBar:Landroid/widget/RelativeLayout;

.field private m_MenuBarMarginLeft:I

.field private m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

.field private m_MenuButtonContainer:Landroid/widget/RelativeLayout;

.field private m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

.field private m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

.field private m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

.field private m_SwitchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 326
    const-string v0, "Expandable Menu UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/mainbar/IExpandableMenuUI;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 327
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->switchFlashMode()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateFlashIcon()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/lib1/cc/widget/HtcIconButton;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/widget/ExpandableMenu;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateButtonStates()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowExpandableMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowMenuBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/camera/mainbar/ExpandableMenuUI;Z)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateUIOpenStatus(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->onResettingToDefault()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/camera/mainbar/ExpandableMenuUI;Lcom/htc/camera/UIState;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->onSettingsPanelStateChanged(Lcom/htc/camera/UIState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/lib1/cc/widget/HtcIconButton;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateSceneIcon()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->shouldSceneIconVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->onMenuButtonClicked()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private canShowExpandableMenu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowMenuBar()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 356
    :goto_0
    return v0

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 340
    iget-object v2, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 341
    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 345
    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 349
    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 353
    goto :goto_0

    .line 356
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canShowMenuBar()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 366
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    sget-object v3, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 394
    :goto_0
    return v0

    .line 382
    :cond_0
    :pswitch_0
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/RecordingState;->Reviewing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 383
    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 387
    goto :goto_0

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    iget-object v0, v0, Lcom/htc/camera/panorama/IPanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 391
    goto :goto_0

    .line 394
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getNewExpandableMenuUIStatus(Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;ZZ)Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;
    .locals 4

    .prologue
    .line 452
    .line 453
    if-eqz p3, :cond_2

    .line 455
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$mainbar$ExpandableMenuUI$ExpandableMenuUIStatus:[I

    invoke-virtual {p1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    move-object v0, p1

    .line 481
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewExpandableMenuUIStatus() - result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isLaunching = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-object v0

    .line 457
    :pswitch_0
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Closed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_1

    .line 460
    :pswitch_1
    if-eqz p2, :cond_0

    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Opened:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->AutoClosed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_1

    .line 463
    :pswitch_2
    if-eqz p2, :cond_1

    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Opened:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->AutoClosed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_1

    .line 469
    :cond_2
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$mainbar$ExpandableMenuUI$ExpandableMenuUIStatus:[I

    invoke-virtual {p1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 471
    :pswitch_3
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Closed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_1

    .line 474
    :pswitch_4
    if-eqz p2, :cond_3

    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Opened:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->AutoClosed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_1

    .line 477
    :pswitch_5
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Opened:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_1

    .line 455
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 469
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private onMenuButtonClicked()V
    .locals 3

    .prologue
    .line 910
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$mainbar$ExpandableMenuUI$ExpandableMenuUIStatus:[I

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    invoke-virtual {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 920
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    iget-boolean v2, v2, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->isOpened:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 922
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->setExpandableMenuOpened(Z)V

    .line 923
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_expandable_menu_expanded"

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    invoke-virtual {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 924
    return-void

    .line 913
    :pswitch_0
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Opened:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_0

    .line 916
    :pswitch_1
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Closed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_0

    .line 910
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onResettingToDefault()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 931
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 932
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setColorOn(Z)V

    .line 933
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    .line 934
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_expandable_menu_expanded"

    sget-object v2, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Closed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    invoke-virtual {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 935
    return-void
.end method

.method private onSettingsPanelStateChanged(Lcom/htc/camera/UIState;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 942
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 944
    sget-object v0, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne p1, v0, :cond_4

    move v0, v1

    .line 946
    :goto_0
    iget-object v4, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSettingsPanelStateChanged() - isMenuClosed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateFlashIcon()V

    .line 952
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowExpandableMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v1

    .line 953
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    if-eqz v0, :cond_1

    .line 954
    iget-object v5, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    move v4, v1

    :goto_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {p0, v5, v4, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_2

    .line 956
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    .line 958
    :cond_2
    sget-object v0, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-ne p1, v0, :cond_3

    .line 962
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 944
    goto :goto_0

    :cond_5
    move v3, v2

    .line 952
    goto :goto_1

    :cond_6
    move v4, v2

    .line 954
    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method private setButtonVisibility(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1009
    if-eqz p1, :cond_0

    .line 1011
    if-eqz p2, :cond_1

    .line 1013
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {p0, p1, v2, v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    .line 1016
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    invoke-virtual {p0, p1, v1, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private setExpandableMenuOpened(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1104
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setColorOn(Z)V

    .line 1105
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowExpandableMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    .line 1110
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->shouldSceneIconVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->setSceneIconVisibile(Z)V

    .line 1111
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateMenuButton()Z

    .line 1112
    return-void

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private shouldSceneIconVisible()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1030
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return v4

    .line 1032
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 1035
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_3

    .line 1036
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 1037
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v5, v0

    .line 1040
    :goto_1
    if-eqz v5, :cond_6

    .line 1042
    iget-object v0, v5, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_5

    move v4, v3

    .line 1043
    goto :goto_0

    :cond_4
    move-object v5, v2

    .line 1037
    goto :goto_1

    .line 1044
    :cond_5
    iget-object v0, v5, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_6

    move v4, v3

    .line 1045
    goto :goto_0

    .line 1048
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    move-object v1, v0

    .line 1049
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_8

    if-eqz v5, :cond_8

    .line 1051
    iget-object v0, v5, Lcom/htc/camera/capturemode/CaptureMode;->isVideoSceneSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1053
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 1054
    instance-of v1, v0, Lcom/htc/camera/effect/an;

    if-eqz v1, :cond_b

    move-object v1, v2

    .line 1057
    :cond_7
    :goto_3
    if-nez v1, :cond_8

    iget-object v0, v5, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoSceneSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1058
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    move-object v1, v0

    .line 1060
    :cond_8
    if-eqz v1, :cond_a

    instance-of v0, v1, Lcom/htc/camera/effect/ZoeScene;

    if-nez v0, :cond_a

    instance-of v0, v1, Lcom/htc/camera/effect/AutoScene;

    if-nez v0, :cond_a

    instance-of v0, v1, Lcom/htc/camera/effect/an;

    if-nez v0, :cond_a

    move v0, v3

    :goto_4
    move v4, v0

    .line 1066
    goto/16 :goto_0

    :cond_9
    move-object v1, v2

    .line 1048
    goto :goto_2

    :cond_a
    move v0, v4

    .line 1060
    goto :goto_4

    :cond_b
    move-object v1, v0

    goto :goto_3
.end method

.method private switchFlashMode()V
    .locals 5

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_0

    .line 1075
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-eqz v0, :cond_3

    .line 1079
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    sget-object v1, Lcom/htc/camera/IFlashController;->PROPERTY_FLASH_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/SupportState;

    .line 1080
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    sget-object v2, Lcom/htc/camera/IFlashController;->PROPERTY_IS_FLASH_DISABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/htc/camera/IFlashController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1081
    sget-object v2, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-ne v0, v2, :cond_1

    if-eqz v1, :cond_2

    .line 1083
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchFlashMode() - FlashSupportState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchFlashMode() - IsFlashDisabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :goto_0
    return-void

    .line 1089
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    sget-object v1, Lcom/htc/camera/IFlashController;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    .line 1090
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    const-string v2, "switchFlashMode() - Current flash mode is "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1092
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    invoke-interface {v0}, Lcom/htc/camera/IFlashController;->nextFlashMode()Lcom/htc/camera/FlashMode;

    goto :goto_0

    .line 1095
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    const-string v1, "switchFlashMode() - No flash controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateButtonStates()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1120
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    .line 1121
    iget-object v3, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateButtonStates() - takingPictureState = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    .line 1125
    if-eqz v0, :cond_6

    .line 1126
    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    move v3, v0

    .line 1129
    :goto_0
    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_IsMainBarItemsDisabled:Z

    .line 1130
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setEnabled(Z)V

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setVisibility(I)V

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1139
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1140
    :goto_2
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->canShowExpandableMenu()Z

    move-result v0

    and-int/2addr v0, v1

    .line 1143
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v1, :cond_2

    .line 1144
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setColorOn(Z)V

    .line 1145
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {p0, v1, v0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->showUI(Landroid/view/View;ZZ)V

    .line 1146
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 1147
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/MainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/MainBarItem;->updateItemStatus()V

    .line 1146
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move v0, v2

    .line 1129
    goto/16 :goto_1

    :cond_4
    move v1, v2

    .line 1139
    goto :goto_2

    .line 1150
    :cond_5
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateFlashIcon()V

    .line 1151
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateSceneIcon()V

    .line 1152
    return-void

    :cond_6
    move v3, v0

    goto/16 :goto_0
.end method

.method private updateFlashIcon()V
    .locals 6

    .prologue
    const v1, 0x7f020068

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1161
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-nez v0, :cond_0

    .line 1232
    :goto_0
    return-void

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_1

    .line 1166
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 1167
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    const-string v1, "updateFlashIcon() - No IFlashController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1174
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 1177
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    sget-object v3, Lcom/htc/camera/IFlashController;->PROPERTY_FLASH_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/htc/camera/IFlashController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/SupportState;

    .line 1178
    sget-object v3, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-eq v0, v3, :cond_2

    .line 1180
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-direct {p0, v0, v4}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->setButtonVisibility(Landroid/view/View;Z)V

    goto :goto_0

    .line 1185
    :cond_2
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    if-eq v0, v3, :cond_3

    .line 1187
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-direct {p0, v0, v4}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->setButtonVisibility(Landroid/view/View;Z)V

    goto :goto_0

    .line 1192
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v3, :cond_5

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    if-eq v0, v3, :cond_4

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    if-ne v0, v3, :cond_5

    .line 1196
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-direct {p0, v0, v4}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->setButtonVisibility(Landroid/view/View;Z)V

    goto :goto_0

    .line 1201
    :cond_5
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    .line 1202
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    sget-object v3, Lcom/htc/camera/IFlashController;->PROPERTY_IS_FLASH_DISABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/htc/camera/IFlashController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1203
    if-nez v0, :cond_6

    if-nez v2, :cond_8

    .line 1205
    :cond_6
    if-eqz v0, :cond_7

    .line 1206
    iget-object v3, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v3, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 1207
    :cond_7
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v1, v4}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setEnabled(Z)V

    .line 1208
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-direct {p0, v1, v5}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->setButtonVisibility(Landroid/view/View;Z)V

    .line 1209
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFlashIcon() - disable flash icon. (isSettingsEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFlashDisabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1214
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    sget-object v2, Lcom/htc/camera/IFlashController;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/htc/camera/IFlashController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    .line 1215
    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFlashIcon() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const v2, 0x7f020067

    .line 1217
    sget-object v3, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$FlashMode:[I

    invoke-virtual {v0}, Lcom/htc/camera/FlashMode;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 1229
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 1230
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setEnabled(Z)V

    .line 1231
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-direct {p0, v0, v5}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->setButtonVisibility(Landroid/view/View;Z)V

    goto/16 :goto_0

    :pswitch_0
    move v0, v1

    .line 1221
    goto :goto_1

    .line 1223
    :pswitch_1
    const v0, 0x7f020069

    .line 1224
    goto :goto_1

    .line 1226
    :pswitch_2
    const v0, 0x7f02008a

    goto :goto_1

    .line 1217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateMenuButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1304
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return v0

    .line 1307
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1310
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    const-string v2, "updateMenuButton() - no need to update layout since the size of button and drawable are the same"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1315
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1316
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1317
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1318
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1321
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1322
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a039f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuBarMarginLeft:I

    .line 1323
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->getMenuIconWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1324
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1327
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1329
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateSceneIcon()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1257
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_0

    .line 1258
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v2, v0

    .line 1260
    :goto_0
    if-eqz v2, :cond_1

    .line 1263
    iget-object v0, v2, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1265
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 1266
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->getDrawable(Lcom/htc/camera/splitcapture/SplitCaptureType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->setSceneIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1267
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->shouldSceneIconVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->setSceneIconVisibile(Z)V

    .line 1268
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateMenuButton()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1269
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->invalidate()V

    .line 1297
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v2, v1

    .line 1259
    goto :goto_0

    .line 1273
    :cond_3
    iget-object v0, v2, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1275
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;->getCurrentPatternDrawable(Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->setSceneIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1276
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->shouldSceneIconVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->setSceneIconVisibile(Z)V

    .line 1277
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateMenuButton()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1278
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->invalidate()V

    goto :goto_1

    .line 1284
    :cond_4
    iget-object v0, v2, Lcom/htc/camera/capturemode/CaptureMode;->isVideoSceneSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1286
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 1287
    instance-of v3, v0, Lcom/htc/camera/effect/an;

    if-eqz v3, :cond_7

    .line 1290
    :cond_5
    :goto_2
    if-nez v1, :cond_6

    iget-object v0, v2, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoSceneSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1291
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 1292
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {v1, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->setScene(Lcom/htc/camera/effect/EffectBase;)V

    .line 1293
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->shouldSceneIconVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->setSceneIconVisibile(Z)V

    .line 1294
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateMenuButton()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->invalidate()V

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto :goto_2
.end method

.method private updateUIOpenStatus(Z)Z
    .locals 3

    .prologue
    .line 1239
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_expandable_menu_expanded"

    sget-object v2, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Closed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    invoke-virtual {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1241
    :try_start_0
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->valueOf(Ljava/lang/String;)Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isCurrentItemsUseDefaultValues()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getNewExpandableMenuUIStatus(Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;ZZ)Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    iget-boolean v2, v2, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->isOpened:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1248
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_expandable_menu_expanded"

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    invoke-virtual {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1249
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    iget-boolean v0, v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->isOpened:Z

    return v0

    .line 1241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1242
    :catch_0
    move-exception v0

    .line 1244
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    const-string v1, "updateUIOpenStatus() - Error occurred. Use Closed as default UI status"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Closed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_1
.end method


# virtual methods
.method public closeExpandableMenu(Z)V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 405
    :cond_0
    if-eqz p1, :cond_1

    .line 406
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Closed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    .line 409
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    iget-boolean v2, v2, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->isOpened:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->setExpandableMenuOpened(Z)V

    .line 411
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_expandable_menu_expanded"

    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    invoke-virtual {v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    :cond_1
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->AutoClosed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenuStatus:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    goto :goto_1
.end method

.method protected deinitializeOverride()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 421
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/MainBarItem;

    .line 423
    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/htc/camera/mainbar/MainBarItem;->release()V

    .line 421
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 427
    :cond_1
    invoke-super {p0}, Lcom/htc/camera/mainbar/IExpandableMenuUI;->deinitializeOverride()V

    .line 428
    return-void
.end method

.method public getExpandableMenuBounds()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 436
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 438
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 441
    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {v2, v0}, Lcom/htc/camera/widget/ExpandableMenu;->getLocationOnScreen([I)V

    .line 442
    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 443
    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 444
    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {v2}, Lcom/htc/camera/widget/ExpandableMenu;->getWidth()I

    move-result v2

    aget v3, v0, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 445
    iget-object v2, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {v2}, Lcom/htc/camera/widget/ExpandableMenu;->getHeight()I

    move-result v2

    aget v0, v0, v4

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 447
    :cond_0
    return-object v1
.end method

.method public getIconViewContainer(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 489
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/MainBarItem;

    .line 491
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/MainBarItem;->getID()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/htc/camera/mainbar/MainBarItem;->getIconViewContainer()Landroid/view/View;

    move-result-object v0

    .line 498
    :goto_1
    return-object v0

    .line 489
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 498
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected initializeOverride()V
    .locals 7

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 529
    invoke-super {p0}, Lcom/htc/camera/mainbar/IExpandableMenuUI;->initializeOverride()V

    .line 530
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 531
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 532
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 533
    const-class v0, Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/SwitchCameraSlidingUI;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    .line 534
    const-class v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    .line 535
    const-class v0, Lcom/htc/camera/photopattern/IPhotoBoothController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/IPhotoBoothController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    .line 536
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 537
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 538
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 540
    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 541
    const v0, 0x7f0e00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuBar:Landroid/widget/RelativeLayout;

    .line 542
    const v0, 0x7f0e00f1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ExpandableMenu;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    .line 543
    const v0, 0x7f0e00f3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    .line 544
    const v0, 0x7f0e00ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    .line 545
    const v0, 0x7f0e00ee

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;

    .line 546
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v6}, Lcom/htc/lib1/cc/widget/HtcIconButton;->stayInPress(Z)V

    .line 550
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setColorOn(Z)V

    .line 551
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f08041f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$1;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    new-instance v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    .line 563
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->setUIRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 564
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {v0, v5}, Lcom/htc/camera/widget/ExpandableMenu;->setVisibility(I)V

    .line 568
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateMenuButton()Z

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    .line 571
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    new-instance v1, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/PhotoBoothMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    new-instance v1, Lcom/htc/camera/mainbar/SceneMainBarItem;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SceneMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    new-instance v1, Lcom/htc/camera/mainbar/ISOMainBarItem;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ISOMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    new-instance v1, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/SelfTimerMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    new-instance v1, Lcom/htc/camera/mainbar/ExposureMainBarItem;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExposureMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    new-instance v1, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/WhiteBalanceMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    new-instance v1, Lcom/htc/camera/mainbar/EffectMainBarItem;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/EffectMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    new-instance v1, Lcom/htc/camera/mainbar/b;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/b;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 584
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 585
    iget-object v4, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/MainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/MainBarItem;->getItem()Lcom/htc/camera/widget/ExpandableMenuItem;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/htc/camera/widget/ExpandableMenu;->addItem(Lcom/htc/camera/widget/ExpandableMenuItem;)V

    .line 584
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 587
    :cond_0
    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->getMenuIconWidth()I

    move-result v1

    .line 590
    const v4, 0x7f0a049a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0a0164

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v4, v0

    .line 591
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ExpandableMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 592
    invoke-virtual {v0, v1, v2, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 593
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ExpandableMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ExpandableMenu;->requestLayout()V

    .line 595
    invoke-direct {p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateButtonStates()V

    .line 597
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$2;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ExpandableMenu;->registerOnClickListener(Lcom/htc/camera/widget/c;)V

    .line 606
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$3;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ExpandableMenu;->registerOnTouchListener(Lcom/htc/camera/widget/d;)V

    .line 616
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$4;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    new-instance v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$5;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 636
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-eqz v1, :cond_1

    .line 638
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    sget-object v4, Lcom/htc/camera/IFlashController;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v1, v4, v0}, Lcom/htc/camera/IFlashController;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 639
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    sget-object v4, Lcom/htc/camera/IFlashController;->PROPERTY_FLASH_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v1, v4, v0}, Lcom/htc/camera/IFlashController;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 640
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    sget-object v4, Lcom/htc/camera/IFlashController;->PROPERTY_IS_FLASH_DISABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v1, v4, v0}, Lcom/htc/camera/IFlashController;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$6;

    iget-object v4, v3, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, p0, v4, v5}, Lcom/htc/camera/mainbar/ExpandableMenuUI$6;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$7;

    iget-object v4, v3, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v4, v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$7;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$8;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$8;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 682
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$9;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 691
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$10;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 700
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$11;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 718
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$12;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$12;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 729
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$13;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$13;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 740
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_NEW_INTENT:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$14;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$14;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v3, v0, v1}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 750
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$15;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 790
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$16;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$16;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 799
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_STOPPING:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$17;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$17;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v3, v0, v1}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 810
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_2

    .line 812
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$18;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$18;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 820
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$19;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$19;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 839
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    if-eqz v0, :cond_3

    .line 841
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    iget-object v0, v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->currentPattern:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$20;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$20;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 854
    :cond_3
    new-instance v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$21;

    invoke-direct {v0, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$21;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    .line 867
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v1, :cond_4

    .line 868
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v1, v1, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 870
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v1, :cond_5

    .line 871
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v1, v1, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 873
    :cond_5
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v1, :cond_6

    .line 875
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v1, v1, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 876
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v1, v1, Lcom/htc/camera/dualcamera/IDualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 879
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    if-eqz v1, :cond_7

    .line 880
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    iget-object v1, v1, Lcom/htc/camera/panorama/IPanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 882
    :cond_7
    invoke-direct {p0, v6}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->updateUIOpenStatus(Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 883
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - current items are using default settings, so close expandable menu"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_8
    return-void
.end method

.method isCurrentItemsUseDefaultValues()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 503
    const/4 v0, 0x1

    move v1, v2

    move v3, v0

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 506
    if-nez v3, :cond_0

    .line 511
    :goto_1
    return v2

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/MainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/MainBarItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/MainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/MainBarItem;->isDefaultValue()Z

    move-result v3

    .line 504
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v2, v3

    .line 511
    goto :goto_1
.end method

.method isMainBarItemDisabled()Z
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_IsMainBarItemsDisabled:Z

    return v0
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 892
    invoke-super {p0, p1, p2}, Lcom/htc/camera/mainbar/IExpandableMenuUI;->onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 893
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 894
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 902
    invoke-super {p0, p1, p2}, Lcom/htc/camera/mainbar/IExpandableMenuUI;->onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 903
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 970
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {v1, v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->setSceneIconVisibile(Z)V

    .line 971
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuNSceneIconDrawable:Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;

    invoke-virtual {v1, p2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$MenuSceneIconDrawable;->setUIRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 972
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->invalidate()V

    .line 973
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_FlashButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0, v1, p2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 975
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MenuButtonContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/htc/camera/mainbar/ExpandableMenuUI$22;

    invoke-direct {v2, p0}, Lcom/htc/camera/mainbar/ExpandableMenuUI$22;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V

    invoke-virtual {p0, v1, p2, v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Ljava/lang/Runnable;)V

    .line 985
    iget-object v1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_ExpandableMenu:Lcom/htc/camera/widget/ExpandableMenu;

    invoke-virtual {v1, p2}, Lcom/htc/camera/widget/ExpandableMenu;->setAllItemsOrientation(Lcom/htc/camera/rotate/UIRotation;)V

    move v1, v0

    .line 986
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_MainBarItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/MainBarItem;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/mainbar/MainBarItem;->notifyUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 986
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 988
    :cond_1
    return-void
.end method
