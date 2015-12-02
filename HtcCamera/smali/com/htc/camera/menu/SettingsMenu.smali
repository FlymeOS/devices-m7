.class public Lcom/htc/camera/menu/SettingsMenu;
.super Lcom/htc/camera/menu/MenuListView;
.source "SettingsMenu.java"


# instance fields
.field private mVoiceHfmClient:Lcom/htc/camera/IVoiceHfmClient;

.field private m_AddCameraMenuItem:Lcom/htc/camera/menu/MenuItem;

.field private m_AutoCaptureItem:Lcom/htc/camera/menu/MenuItem;

.field private m_AutoFiveShotsItem:Lcom/htc/camera/menu/MenuItem;

.field private m_AutoFocusItem:Lcom/htc/camera/menu/MenuItem;

.field private m_CameraActivity:Lcom/htc/camera/HTCCamera;

.field private m_CameraHwKeyItem:Lcom/htc/camera/menu/MenuItem;

.field private m_CameraTypeItem:Lcom/htc/camera/menu/MenuItem;

.field private m_CaptureModeItem:Lcom/htc/camera/menu/MenuItem;

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_CaptureOptionsMenuitem:Lcom/htc/camera/menu/MenuItem;

.field private m_ContinuousAutoFocusItems:[Lcom/htc/camera/menu/MenuItem;

.field private m_ContinuousBurstAutoReviewItem:Lcom/htc/camera/menu/MenuItem;

.field private m_ContinuousBurstItem:Lcom/htc/camera/menu/MenuItem;

.field private m_ContinuousBurstLimitedItem:Lcom/htc/camera/menu/MenuItem;

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_ExpendedPhotoSceneHeaderMenuItem:Lcom/htc/camera/menu/SceneMenuItem;

.field private m_ExpendedVideoSceneHeaderMenuItem:Lcom/htc/camera/menu/MenuItem;

.field private m_FaceBeautifyMenuItem:Lcom/htc/camera/menu/MenuItem;

.field private m_FaceDetectionItem:Lcom/htc/camera/menu/MenuItem;

.field private m_FrontFaceBeautifierMenuItem:Lcom/htc/camera/menu/MenuItem;

.field private m_FrontReviewDurationItem:Lcom/htc/camera/menu/MenuItem;

.field private m_FrontWhiteBalanceItem:Lcom/htc/camera/menu/MenuItem;

.field private m_GeoTagMenuItem:Lcom/htc/camera/menu/MenuItem;

.field private m_GeoTagOffMenuItem:Lcom/htc/camera/menu/MenuItem;

.field private m_GridMenuItem:Lcom/htc/camera/menu/MenuItem;

.field private m_ImageAdjustmentItem:Lcom/htc/camera/menu/MenuItem;

.field private m_IsGeotaoOff:Z

.field private m_IsGlobal:Z

.field private m_IsItemInitialized:Z

.field private m_IsoItem:Lcom/htc/camera/menu/MenuItem;

.field private m_Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_LastFrontCameraPhotoScene:Lcom/htc/camera/effect/EffectBase;

.field private m_LastMainCameraPhotoScene:Lcom/htc/camera/effect/EffectBase;

.field private m_LastVideoScene:Lcom/htc/camera/effect/EffectBase;

.field private m_LocationManager:Lcom/htc/camera/location/ILocationManager;

.field private m_LockAFInVideoMenuItem:Lcom/htc/camera/menu/MenuItem;

.field private m_MainReviewDurationItem:Lcom/htc/camera/menu/MenuItem;

.field private m_MainWhiteBalanceItem:Lcom/htc/camera/menu/MenuItem;

.field private m_MakeUpItem:Lcom/htc/camera/menu/MakeUpMenuItem;

.field private m_ManualSceneItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_ObjectTrackingItem:Lcom/htc/camera/menu/MenuItem;

.field private m_PhotoResolutionMenuItem:Lcom/htc/camera/menu/MenuItem;

.field private m_PhotoSceneItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoSizeModeMenuItem:Lcom/htc/camera/menu/MenuItem;

.field private m_ResetToDefaultItem:Lcom/htc/camera/menu/MenuItem;

.field private m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_SaveMirrorImageItem:Lcom/htc/camera/menu/MenuItem;

.field private m_SelfTimerItem:Lcom/htc/camera/menu/SelfTimerMenuItem;

.field private m_ShowGlobalSettingsItem:Lcom/htc/camera/menu/MenuItem;

.field private m_ShutterSoundItem:Lcom/htc/camera/menu/MenuItem;

.field private m_SlowMotionItem:Lcom/htc/camera/menu/MenuItem;

.field private m_SlowMotionMenuItem:Lcom/htc/camera/menu/MenuItem;

.field private m_SmileCaptureItem:Lcom/htc/camera/menu/MenuItem;

.field private m_StorageLocationItem:Lcom/htc/camera/menu/MenuItem;

.field private m_TapToCaptureFrontItem:Lcom/htc/camera/menu/MenuItem;

.field private m_TapToCaptureItem:Lcom/htc/camera/menu/MenuItem;

.field private m_TargetCameraMode:Lcom/htc/camera/CameraMode;

.field private m_TargetCameraType:Lcom/htc/camera/CameraType;

.field private m_TargetSettings:Lcom/htc/camera/CameraSettings;

.field private m_TipsHelpItem:Lcom/htc/camera/menu/MenuItem;

.field private m_VideoResolutionMenuItem:Lcom/htc/camera/menu/MenuItem;

.field private m_VideoSceneItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

.field private m_VoiceClientStateDynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<",
            "Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;",
            ">;"
        }
    .end annotation
.end field

.field private m_VolumeKeyItem:Lcom/htc/camera/menu/MenuItem;

.field private m_ZoeMenuItem:Lcom/htc/camera/menu/MenuItem;

.field m_isPhotoModeSupported:Z

.field m_isVideoModeSupported:Z

.field m_isZoeMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/menu/MenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_PhotoSceneItems:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ManualSceneItems:Ljava/util/ArrayList;

    .line 128
    iput-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_LastFrontCameraPhotoScene:Lcom/htc/camera/effect/EffectBase;

    .line 129
    iput-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_LastMainCameraPhotoScene:Lcom/htc/camera/effect/EffectBase;

    .line 130
    iput-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_LastVideoScene:Lcom/htc/camera/effect/EffectBase;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VideoSceneItems:Ljava/util/ArrayList;

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/camera/menu/MenuItem;

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/htc/camera/menu/MenuItem;

    .line 206
    instance-of v0, p1, Lcom/htc/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 208
    check-cast p1, Lcom/htc/camera/HTCCamera;

    iput-object p1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    .line 209
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 213
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/htc/camera/menu/SettingsMenu;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateAutoFocusRelatedItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/menu/SettingsMenu;Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/camera/menu/SettingsMenu;->updateVoiceCaptureItem(Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/menu/SettingsMenu;)Lcom/htc/camera/HTCCamera;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/menu/SettingsMenu;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_IsGeotaoOff:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/menu/SettingsMenu;)Lcom/htc/camera/location/ILocationManager;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_LocationManager:Lcom/htc/camera/location/ILocationManager;

    return-object v0
.end method

.method private applyLastPhotoScene()V
    .locals 3

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_LastMainCameraPhotoScene:Lcom/htc/camera/effect/EffectBase;

    move-object v1, v0

    .line 1745
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    .line 1746
    if-eqz v0, :cond_0

    .line 1748
    if-eqz v1, :cond_2

    .line 1749
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    .line 1756
    :cond_0
    :goto_1
    return-void

    .line 1744
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_LastFrontCameraPhotoScene:Lcom/htc/camera/effect/EffectBase;

    move-object v1, v0

    goto :goto_0

    .line 1752
    :cond_2
    iget-object v1, v0, Lcom/htc/camera/effect/IEffectManager;->sceneList:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1753
    iget-object v1, v0, Lcom/htc/camera/effect/IEffectManager;->sceneList:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    goto :goto_1
.end method

.method private isHelpAvailable()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 1800
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1801
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1802
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.htc.showme"

    const-string v5, "com.htc.showme.ui.Search"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1804
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1805
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1806
    const-string v1, "SettingsMenu"

    const-string v2, "Package com.htc.showme exists."

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    :goto_0
    return v0

    .line 1810
    :cond_0
    const-string v0, "SettingsMenu"

    const-string v1, "Package com.htc.showme does not exist."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetToDefault()V
    .locals 4

    .prologue
    .line 808
    new-instance v0, Lcom/htc/camera/menu/SettingsMenu$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/menu/SettingsMenu$3;-><init>(Lcom/htc/camera/menu/SettingsMenu;)V

    .line 821
    new-instance v1, Lcom/htc/camera/menu/SettingsMenu$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/menu/SettingsMenu$4;-><init>(Lcom/htc/camera/menu/SettingsMenu;)V

    .line 830
    new-instance v2, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0801fd

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08029d

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3, v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0800ee

    invoke-virtual {v0, v2, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v1

    .line 838
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 839
    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {v0, v1}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;)Lcom/htc/camera/Handle;

    .line 843
    :goto_0
    return-void

    .line 842
    :cond_0
    const-string v0, "SettingsMenu"

    const-string v1, "resetToDefault() - Cannot find IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showGeoTagDialog()V
    .locals 4

    .prologue
    .line 1760
    new-instance v0, Lcom/htc/camera/menu/SettingsMenu$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/menu/SettingsMenu$5;-><init>(Lcom/htc/camera/menu/SettingsMenu;)V

    .line 1774
    new-instance v1, Lcom/htc/camera/menu/SettingsMenu$6;

    invoke-direct {v1, p0}, Lcom/htc/camera/menu/SettingsMenu$6;-><init>(Lcom/htc/camera/menu/SettingsMenu;)V

    .line 1784
    new-instance v2, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080370

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080371

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3, v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0800ee

    invoke-virtual {v0, v2, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1792
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 1793
    if-eqz v0, :cond_0

    .line 1794
    invoke-virtual {v0, v1}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;)Lcom/htc/camera/Handle;

    .line 1797
    :goto_0
    return-void

    .line 1796
    :cond_0
    const-string v0, "SettingsMenu"

    const-string v1, "showGeoTagDialog() - Cannot find IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAutoFocusRelatedItem()V
    .locals 3

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 1216
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 1217
    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/htc/camera/menu/MenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1220
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_1

    .line 1222
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/htc/camera/menu/MenuItem;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_AUTO_FOCUS_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1224
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/htc/camera/menu/MenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1228
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateSmileCaptureItem()V

    .line 1229
    return-void
.end method

.method private final updateCameraTypeItem()V
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/htc/camera/menu/MenuItem;

    if-nez v0, :cond_0

    .line 892
    :goto_0
    return-void

    .line 870
    :cond_0
    sget-object v1, Lcom/htc/camera/menu/SettingsMenu$7;->$SwitchMap$com$htc$camera$CameraType:[I

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 874
    :pswitch_0
    const v0, 0x7f080221

    .line 891
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/MenuItem;->setSummary(I)V

    goto :goto_0

    .line 878
    :pswitch_1
    const v0, 0x7f080222

    .line 879
    goto :goto_1

    .line 870
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateContinuousCaptureItem()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 900
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_5

    .line 902
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 903
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/effect/EffectBase;

    .line 910
    :goto_0
    instance-of v0, v0, Lcom/htc/camera/effect/am;

    if-nez v0, :cond_6

    move v6, v3

    .line 911
    :goto_1
    if-eqz v1, :cond_7

    instance-of v0, v1, Lcom/htc/camera/effect/AutoScene;

    if-nez v0, :cond_7

    instance-of v0, v1, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-nez v0, :cond_7

    move v1, v3

    .line 915
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v5, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v0, v5}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 916
    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    move v5, v3

    .line 918
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v2, v0

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_2

    .line 922
    iget-object v7, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/htc/camera/menu/MenuItem;

    if-nez v6, :cond_9

    if-nez v1, :cond_9

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v3

    :goto_4
    invoke-virtual {v7, v0}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 923
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/htc/camera/menu/MenuItem;

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_isPhotoModeSupported:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_isZoeMode:Z

    if-nez v0, :cond_a

    if-nez v5, :cond_a

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    move v0, v3

    :goto_5
    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 929
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/htc/camera/menu/MenuItem;

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f0801a3

    :goto_6
    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/MenuItem;->setSummary(I)V

    .line 933
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_3

    .line 934
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/htc/camera/menu/MenuItem;

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 935
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/htc/camera/menu/MenuItem;

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->getBurstContinueousShotCount()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_c

    :goto_7
    invoke-virtual {v0, v4}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 939
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_4

    .line 940
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/htc/camera/menu/MenuItem;

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 941
    :cond_4
    return-void

    :cond_5
    move-object v1, v2

    move-object v0, v2

    .line 908
    goto/16 :goto_0

    :cond_6
    move v6, v4

    .line 910
    goto/16 :goto_1

    :cond_7
    move v1, v4

    .line 911
    goto/16 :goto_2

    :cond_8
    move v5, v4

    .line 916
    goto/16 :goto_3

    :cond_9
    move v0, v4

    .line 922
    goto/16 :goto_4

    :cond_a
    move v0, v4

    .line 923
    goto :goto_5

    .line 929
    :cond_b
    const v0, 0x7f0801a4

    goto :goto_6

    :cond_c
    move v4, v3

    .line 935
    goto :goto_7
.end method

.method private updateDisabledItems()V
    .locals 17

    .prologue
    .line 949
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v1

    const-class v2, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v2

    const-class v3, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {v2, v3}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v3

    const-class v4, Lcom/htc/camera/photopattern/IPhotoBoothController;

    invoke-virtual {v3, v4}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/camera/photopattern/IPhotoBoothController;

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v4

    const-class v5, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v4, v5}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/camera/zoe/IZoeController;

    .line 953
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v5

    const-class v6, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v5, v6}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 956
    if-eqz v4, :cond_29

    iget-object v4, v4, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v4}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    move v13, v4

    .line 959
    :goto_0
    if-eqz v5, :cond_2a

    iget-object v4, v5, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v4}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    move v12, v4

    .line 962
    :goto_1
    if-eqz v2, :cond_2b

    iget-object v2, v2, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v2}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    move v11, v2

    .line 963
    :goto_2
    if-eqz v1, :cond_2c

    iget-object v1, v1, Lcom/htc/camera/splitcapture/ISplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v1}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    move v7, v1

    .line 966
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraSettings;

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v2, :cond_2d

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v2, v2, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/effect/EffectBase;

    .line 973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/menu/SettingsMenu;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v4, v4, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v4}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/camera/effect/EffectBase;

    .line 974
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/menu/SettingsMenu;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v6, v6, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v6}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/camera/effect/EffectBase;

    move-object v9, v4

    move-object v10, v2

    move-object v4, v6

    .line 983
    :goto_4
    if-eqz v9, :cond_0

    instance-of v2, v9, Lcom/htc/camera/effect/AutoScene;

    if-eqz v2, :cond_4b

    :cond_0
    move-object v2, v10

    .line 985
    :goto_5
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/htc/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v2

    move v8, v2

    .line 986
    :goto_6
    if-nez v13, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/htc/camera/effect/EffectBase;->isFixedResolution()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz v10, :cond_2f

    invoke-virtual {v10}, Lcom/htc/camera/effect/EffectBase;->isFixedResolution()Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_2
    const/4 v2, 0x1

    move v6, v2

    .line 987
    :goto_7
    if-eqz v4, :cond_30

    invoke-virtual {v4}, Lcom/htc/camera/effect/EffectBase;->isFixedResolution()Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x1

    move v4, v2

    .line 990
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_ExpendedVideoSceneHeaderMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v2, :cond_3

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_ExpendedVideoSceneHeaderMenuItem:Lcom/htc/camera/menu/MenuItem;

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 996
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/CameraType;

    invoke-virtual {v2}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v14

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_PhotoSizeModeMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v2, :cond_4

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_isPhotoModeSupported:Z

    if-eqz v2, :cond_33

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/htc/camera/ICaptureResolutionManager;->photoSizeModes:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1002
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/camera/menu/SettingsMenu;->m_PhotoSizeModeMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v2, :cond_31

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v2, v0, :cond_31

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v15, v2}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/camera/menu/SettingsMenu;->m_PhotoSizeModeMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-nez v6, :cond_32

    const/4 v2, 0x1

    :goto_a
    invoke-virtual {v15, v2}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1010
    :cond_4
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_PhotoResolutionMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v2, :cond_5

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v2, :cond_35

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v2, v2, Lcom/htc/camera/ICaptureResolutionManager;->photoResolutionList:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1016
    if-eqz v2, :cond_34

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_34

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_isPhotoModeSupported:Z

    if-eqz v2, :cond_34

    const/4 v2, 0x1

    .line 1020
    :goto_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/menu/SettingsMenu;->m_PhotoResolutionMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v6, v2}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1024
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_VideoResolutionMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v2, :cond_6

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_VideoResolutionMenuItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/camera/menu/SettingsMenu;->m_isVideoModeSupported:Z

    invoke-virtual {v2, v6}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/menu/SettingsMenu;->m_VideoResolutionMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-nez v4, :cond_36

    const/4 v2, 0x1

    :goto_d
    invoke-virtual {v6, v2}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1030
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v2, :cond_7

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagMenuItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/menu/SettingsMenu;->m_LocationManager:Lcom/htc/camera/location/ILocationManager;

    invoke-virtual {v4}, Lcom/htc/camera/location/ILocationManager;->checkLocationSettings()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1034
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagOffMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v2, :cond_8

    .line 1035
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagOffMenuItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_LocationManager:Lcom/htc/camera/location/ILocationManager;

    invoke-virtual {v2}, Lcom/htc/camera/location/ILocationManager;->checkLocationSettings()Z

    move-result v2

    if-nez v2, :cond_37

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {v4, v2}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1039
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v2, :cond_9

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/htc/camera/menu/MenuItem;

    iget-object v1, v1, Lcom/htc/camera/CameraSettings;->isObjectTrackingEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1062
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_IsoItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_a

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_IsoItem:Lcom/htc/camera/menu/MenuItem;

    and-int/lit8 v1, v8, 0x4

    if-nez v1, :cond_38

    const/4 v1, 0x1

    :goto_f
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_IsoItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-static {v1}, Lcom/htc/camera/menu/CameraIsoMenuItem;->isIsoAvailable(Lcom/htc/camera/CameraType;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1068
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_b

    .line 1069
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/htc/camera/menu/MenuItem;

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/htc/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1074
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_c

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/htc/camera/menu/MenuItem;

    and-int/lit8 v1, v8, 0x20

    if-nez v1, :cond_39

    const/4 v1, 0x1

    :goto_10
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_MainWhiteBalanceItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v14}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1078
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_d

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/htc/camera/menu/MenuItem;

    and-int/lit8 v1, v8, 0x20

    if-nez v1, :cond_3a

    const/4 v1, 0x1

    :goto_11
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_FrontWhiteBalanceItem:Lcom/htc/camera/menu/MenuItem;

    if-nez v14, :cond_3b

    const/4 v1, 0x1

    :goto_12
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1084
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_e

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v14, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_isPhotoModeSupported:Z

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    :goto_13
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1088
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_f

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/htc/camera/menu/MenuItem;

    if-nez v14, :cond_3d

    const/4 v1, 0x1

    :goto_14
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1092
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoCaptureItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_11

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoCaptureItem:Lcom/htc/camera/menu/MenuItem;

    if-nez v14, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_isPhotoModeSupported:Z

    if-eqz v1, :cond_3e

    if-nez v7, :cond_3e

    if-nez v12, :cond_3e

    if-eqz v3, :cond_10

    iget-object v1, v3, Lcom/htc/camera/photopattern/IPhotoBoothController;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v1}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3e

    :cond_10
    const/4 v1, 0x1

    :goto_15
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1097
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_12

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->mVoiceHfmClient:Lcom/htc/camera/IVoiceHfmClient;

    if-eqz v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->mVoiceHfmClient:Lcom/htc/camera/IVoiceHfmClient;

    sget-object v3, Lcom/htc/camera/IVoiceHfmClient;->PROPERTY_IS_VOICE_CAPTURE_SUPPORTED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v1, v3}, Lcom/htc/camera/IVoiceHfmClient;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_16
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraSettings;

    sget-object v3, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_VOICE_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v3}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->mVoiceHfmClient:Lcom/htc/camera/IVoiceHfmClient;

    if-eqz v1, :cond_12

    .line 1101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->mVoiceHfmClient:Lcom/htc/camera/IVoiceHfmClient;

    sget-object v2, Lcom/htc/camera/IVoiceHfmClient;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/htc/camera/IVoiceHfmClient;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/camera/menu/SettingsMenu;->updateVoiceCaptureItem(Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;)V

    .line 1105
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/menu/SettingsMenu;->updateSmileCaptureItem()V

    .line 1109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_FrontFaceBeautifierMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_13

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_FrontFaceBeautifierMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-nez v14, :cond_40

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1111
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_MakeUpItem:Lcom/htc/camera/menu/MakeUpMenuItem;

    if-eqz v1, :cond_18

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_MakeUpItem:Lcom/htc/camera/menu/MakeUpMenuItem;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_isPhotoModeSupported:Z

    if-eqz v1, :cond_41

    if-eqz v12, :cond_14

    iget-object v1, v5, Lcom/htc/camera/dualcamera/IDualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    :cond_14
    if-nez v11, :cond_41

    const/4 v1, 0x1

    :goto_18
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MakeUpMenuItem;->setVisibility(Z)V

    .line 1117
    const/4 v1, 0x1

    .line 1118
    if-eqz v10, :cond_15

    instance-of v2, v10, Lcom/htc/camera/effect/am;

    if-eqz v2, :cond_16

    :cond_15
    if-eqz v9, :cond_17

    instance-of v2, v9, Lcom/htc/camera/effect/AutoScene;

    if-nez v2, :cond_17

    .line 1120
    :cond_16
    const/4 v1, 0x0

    .line 1122
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_MakeUpItem:Lcom/htc/camera/menu/MakeUpMenuItem;

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MakeUpMenuItem;->setEnabled(Z)V

    .line 1124
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceBeautifyMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_1c

    .line 1125
    const/4 v1, 0x1

    .line 1126
    if-eqz v10, :cond_19

    instance-of v2, v10, Lcom/htc/camera/effect/am;

    if-eqz v2, :cond_1a

    :cond_19
    if-eqz v9, :cond_1b

    instance-of v2, v9, Lcom/htc/camera/effect/AutoScene;

    if-nez v2, :cond_1b

    .line 1128
    :cond_1a
    const/4 v1, 0x0

    .line 1129
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceBeautifyMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-nez v11, :cond_42

    if-nez v12, :cond_42

    const/4 v2, 0x1

    :goto_19
    invoke-virtual {v3, v2}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceBeautifyMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceBeautifyMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1135
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_1d

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/htc/camera/menu/MenuItem;

    sget v1, Lcom/htc/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    and-int/2addr v1, v8

    if-nez v1, :cond_43

    const/4 v1, 0x1

    :goto_1a
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1140
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_ObjectTrackingItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_1e

    .line 1141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_ObjectTrackingItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1144
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/htc/camera/menu/SelfTimerMenuItem;

    if-eqz v1, :cond_1f

    .line 1145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/htc/camera/menu/SelfTimerMenuItem;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_isPhotoModeSupported:Z

    invoke-virtual {v1, v2}, Lcom/htc/camera/menu/SelfTimerMenuItem;->setVisibility(Z)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/htc/camera/menu/SelfTimerMenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->isSelfTimerDisabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_44

    if-nez v13, :cond_44

    const/4 v1, 0x1

    :goto_1b
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/SelfTimerMenuItem;->setEnabled(Z)V

    .line 1150
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_FrontReviewDurationItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_20

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_FrontReviewDurationItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_FrontReviewDurationItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->isActionScreenEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1155
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_MainReviewDurationItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_21

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_MainReviewDurationItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_MainReviewDurationItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->isActionScreenEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1162
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_SaveMirrorImageItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_22

    .line 1164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v1

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_SaveMirrorImageItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_45

    if-nez v12, :cond_45

    if-nez v7, :cond_45

    const/4 v1, 0x1

    :goto_1c
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1169
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_SlowMotionMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_23

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_SlowMotionMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-nez v13, :cond_46

    const/4 v1, 0x1

    :goto_1d
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1173
    :cond_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_ZoeMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_24

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_ZoeMenuItem:Lcom/htc/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1177
    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_LockAFInVideoMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_25

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_LockAFInVideoMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v14, :cond_47

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_isVideoModeSupported:Z

    if-eqz v1, :cond_47

    const/4 v1, 0x1

    :goto_1e
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1181
    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_AddCameraMenuItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_26

    .line 1183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v1, :cond_26

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_AddCameraMenuItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v3, 0x11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v1, v1, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v3, v1, :cond_48

    const/4 v1, 0x1

    :goto_1f
    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1188
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureOptionsMenuitem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_27

    .line 1190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureOptionsMenuitem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1}, Lcom/htc/camera/menu/MenuItem;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureOptionsMenuitem:Lcom/htc/camera/menu/MenuItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1197
    :cond_27
    :goto_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/menu/MenuItem;

    .line 1199
    invoke-virtual {v1}, Lcom/htc/camera/menu/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v1}, Lcom/htc/camera/menu/MenuItem;->isGlobalSettings()Z

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/camera/menu/SettingsMenu;->m_IsGlobal:Z

    if-eq v3, v4, :cond_28

    .line 1200
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    goto :goto_21

    .line 956
    :cond_29
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_0

    .line 959
    :cond_2a
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_1

    .line 962
    :cond_2b
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_2

    .line 963
    :cond_2c
    const/4 v1, 0x0

    move v7, v1

    goto/16 :goto_3

    .line 978
    :cond_2d
    const/4 v10, 0x0

    .line 979
    const/4 v9, 0x0

    .line 980
    const/4 v6, 0x0

    move-object v4, v6

    goto/16 :goto_4

    .line 985
    :cond_2e
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_6

    .line 986
    :cond_2f
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_7

    .line 987
    :cond_30
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_8

    .line 1002
    :cond_31
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 1003
    :cond_32
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 1006
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/menu/SettingsMenu;->m_PhotoSizeModeMenuItem:Lcom/htc/camera/menu/MenuItem;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    goto/16 :goto_b

    .line 1016
    :cond_34
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 1019
    :cond_35
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 1026
    :cond_36
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 1035
    :cond_37
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 1063
    :cond_38
    const/4 v1, 0x0

    goto/16 :goto_f

    .line 1075
    :cond_39
    const/4 v1, 0x0

    goto/16 :goto_10

    .line 1079
    :cond_3a
    const/4 v1, 0x0

    goto/16 :goto_11

    .line 1080
    :cond_3b
    const/4 v1, 0x0

    goto/16 :goto_12

    .line 1085
    :cond_3c
    const/4 v1, 0x0

    goto/16 :goto_13

    .line 1089
    :cond_3d
    const/4 v1, 0x0

    goto/16 :goto_14

    .line 1093
    :cond_3e
    const/4 v1, 0x0

    goto/16 :goto_15

    .line 1098
    :cond_3f
    const/4 v1, 0x0

    goto/16 :goto_16

    .line 1110
    :cond_40
    const/4 v1, 0x0

    goto/16 :goto_17

    .line 1112
    :cond_41
    const/4 v1, 0x0

    goto/16 :goto_18

    .line 1129
    :cond_42
    const/4 v2, 0x0

    goto/16 :goto_19

    .line 1136
    :cond_43
    const/4 v1, 0x0

    goto/16 :goto_1a

    .line 1146
    :cond_44
    const/4 v1, 0x0

    goto/16 :goto_1b

    .line 1165
    :cond_45
    const/4 v1, 0x0

    goto/16 :goto_1c

    .line 1170
    :cond_46
    const/4 v1, 0x0

    goto/16 :goto_1d

    .line 1178
    :cond_47
    const/4 v1, 0x0

    goto/16 :goto_1e

    .line 1184
    :cond_48
    const/4 v1, 0x0

    goto/16 :goto_1f

    .line 1193
    :cond_49
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureOptionsMenuitem:Lcom/htc/camera/menu/MenuItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    goto/16 :goto_20

    .line 1202
    :cond_4a
    return-void

    :cond_4b
    move-object v2, v9

    goto/16 :goto_5
.end method

.method private updatePhotoSceneItem()V
    .locals 0

    .prologue
    .line 1265
    return-void
.end method

.method private updateSmileCaptureItem()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1503
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    move-object v1, v0

    .line 1509
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    .line 1510
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    .line 1513
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v5, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v0, v5}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 1514
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v5, v3

    .line 1517
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_5

    .line 1518
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v6, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v6}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, v1, Lcom/htc/camera/effect/PanoramaScene;

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    if-nez v5, :cond_4

    move v0, v3

    .line 1528
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1529
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/htc/camera/menu/MenuItem;

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_isPhotoModeSupported:Z

    if-eqz v0, :cond_6

    if-nez v5, :cond_6

    :goto_4
    invoke-virtual {v1, v3}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 1532
    :cond_0
    return-void

    .line 1506
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_2
    move v2, v4

    .line 1510
    goto :goto_1

    :cond_3
    move v5, v4

    .line 1514
    goto :goto_2

    :cond_4
    move v0, v4

    .line 1518
    goto :goto_3

    :cond_5
    move v0, v4

    .line 1527
    goto :goto_3

    :cond_6
    move v3, v4

    .line 1529
    goto :goto_4
.end method

.method private updateVideoSceneItem()V
    .locals 0

    .prologue
    .line 1535
    return-void
.end method

.method private updateVoiceCaptureItem(Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;)V
    .locals 7

    .prologue
    const v1, 0x7f0801a4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1701
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    if-nez v0, :cond_0

    .line 1703
    const-string v0, "SettingsMenu"

    const-string v1, "updateVoiceCaptureItem() - VoiceCaptureItem is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    :goto_0
    return-void

    .line 1707
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->isChecked()Z

    move-result v2

    .line 1708
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v3, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_VOICE_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1710
    sget-object v0, Lcom/htc/camera/menu/SettingsMenu$7;->$SwitchMap$com$htc$camera$IVoiceHfmClient$VoiceClientState:[I

    invoke-virtual {p1}, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 1732
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v6}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1733
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v3}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    .line 1734
    iget-object v4, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v3, :cond_1

    const v0, 0x7f0801a3

    :goto_1
    invoke-virtual {v4, v0}, Lcom/htc/camera/menu/MenuItem;->setSummary(I)V

    .line 1738
    :goto_2
    const-string v0, "SettingsMenu"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "updateVoiceCaptureItem() - voiceClientState:"

    aput-object v4, v1, v5

    aput-object p1, v1, v6

    const/4 v4, 0x2

    const-string v5, " isChecked:"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x4

    const-string v4, " isPropertyEnalbed:"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1713
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v5}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1714
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v3}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    .line 1715
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    const v1, 0x7f0801b9

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setSummary(I)V

    goto :goto_2

    .line 1719
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v6}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1720
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v5}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    .line 1721
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setSummary(I)V

    goto :goto_2

    .line 1725
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v6}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    .line 1726
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v5}, Lcom/htc/camera/menu/MenuItem;->setChecked(Z)V

    .line 1727
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setSummary(I)V

    goto :goto_2

    :cond_1
    move v0, v1

    .line 1734
    goto :goto_1

    .line 1710
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public initializeMenuItems(Z)Z
    .locals 13

    .prologue
    const v12, 0x7f080234

    const v11, 0x7f0801f0

    const v3, 0x7f0801d1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 225
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 226
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraMode;

    .line 227
    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/CameraType;

    .line 228
    iget-boolean v4, p0, Lcom/htc/camera/menu/SettingsMenu;->m_IsItemInitialized:Z

    if-eqz v4, :cond_1

    .line 230
    iget-object v4, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TargetSettings:Lcom/htc/camera/CameraSettings;

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TargetCameraMode:Lcom/htc/camera/CameraMode;

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TargetCameraType:Lcom/htc/camera/CameraType;

    if-ne v4, v2, :cond_0

    .line 232
    iput-boolean p1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_IsGlobal:Z

    move v7, v8

    .line 637
    :goto_0
    return v7

    .line 235
    :cond_0
    const-string v4, "SettingsMenu"

    const-string v5, "initializeMenuItems() - Settings, camera or mode has been changed, re-initialize items"

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    iput-boolean v8, p0, Lcom/htc/camera/menu/SettingsMenu;->m_IsItemInitialized:Z

    .line 238
    iput-boolean p1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_IsGlobal:Z

    .line 239
    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TargetSettings:Lcom/htc/camera/CameraSettings;

    .line 240
    iput-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TargetCameraMode:Lcom/htc/camera/CameraMode;

    .line 241
    iput-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TargetCameraType:Lcom/htc/camera/CameraType;

    .line 244
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_LocationManager:Lcom/htc/camera/location/ILocationManager;

    if-nez v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/location/ILocationManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/location/ILocationManager;

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_LocationManager:Lcom/htc/camera/location/ILocationManager;

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v9

    .line 254
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/menu/SettingsMenu$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/menu/SettingsMenu$1;-><init>(Lcom/htc/camera/menu/SettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 263
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    iget-boolean v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_IsGlobal:Z

    if-nez v0, :cond_16

    .line 269
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v2

    .line 270
    if-nez v2, :cond_5

    .line 272
    const-string v0, "SettingsMenu"

    const-string v1, "No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 278
    new-instance v0, Lcom/htc/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const v5, 0x7f080258

    invoke-direct {v0, v4, v5, v7}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AddCameraMenuItem:Lcom/htc/camera/menu/MenuItem;

    .line 279
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AddCameraMenuItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v4, 0x3b

    invoke-virtual {v0, v4}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 280
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AddCameraMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_6
    iget-boolean v0, v9, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_7

    .line 287
    new-instance v4, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;

    iget-object v5, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const v6, 0x7f080229

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-direct {v4, v5, v6, v0}, Lcom/htc/camera/menu/PhotoSizeModeMenuItem;-><init>(Lcom/htc/camera/HTCCamera;ILcom/htc/camera/CameraType;)V

    iput-object v4, p0, Lcom/htc/camera/menu/SettingsMenu;->m_PhotoSizeModeMenuItem:Lcom/htc/camera/menu/MenuItem;

    .line 291
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_PhotoSizeModeMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_7
    invoke-virtual {v2}, Lcom/htc/camera/CameraController;->isLiveFaceBeautySupported()Z

    move-result v0

    .line 297
    if-nez v0, :cond_8

    .line 299
    new-instance v2, Lcom/htc/camera/menu/MakeUpMenuItem;

    iget-object v4, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const v5, 0x7f080241

    invoke-direct {v2, v4, v5}, Lcom/htc/camera/menu/MakeUpMenuItem;-><init>(Lcom/htc/camera/HTCCamera;I)V

    iput-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_MakeUpItem:Lcom/htc/camera/menu/MakeUpMenuItem;

    .line 302
    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_MakeUpItem:Lcom/htc/camera/menu/MakeUpMenuItem;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_8
    iget-boolean v2, v9, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 308
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_live_face_beautifier"

    const v5, 0x7f080242

    invoke-direct {v0, v2, v4, v5}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceBeautifyMenuItem:Lcom/htc/camera/menu/MenuItem;

    .line 313
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceBeautifyMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_9
    iget-boolean v0, v9, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_10

    .line 319
    new-instance v0, Lcom/htc/camera/menu/MenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const v4, 0x7f08022f

    invoke-direct {v0, v2, v4, v7}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureOptionsMenuitem:Lcom/htc/camera/menu/MenuItem;

    .line 320
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureOptionsMenuitem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 324
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasAutoFocus:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 326
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_camera_auto_focus"

    const v5, 0x7f0801ee

    invoke-direct {v0, v2, v4, v5}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/htc/camera/menu/MenuItem;

    .line 329
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 330
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_a
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_face_detection"

    const v5, 0x7f080232

    invoke-direct {v0, v2, v4, v5}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/htc/camera/menu/MenuItem;

    .line 337
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 338
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isFrontCameraFaceBeautifierSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 343
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_face_beautifier_front"

    const v5, 0x7f080240

    invoke-direct {v0, v2, v4, v5}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FrontFaceBeautifierMenuItem:Lcom/htc/camera/menu/MenuItem;

    .line 346
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FrontFaceBeautifierMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_b
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isHtcDevice()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 352
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_smile_capture"

    const v5, 0x7f080233

    invoke-direct {v0, v2, v4, v5}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/htc/camera/menu/MenuItem;

    .line 355
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 356
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 362
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_camera_autoface_capture_front"

    const v5, 0x7f0801ba

    invoke-direct {v0, v2, v4, v5}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoCaptureItem:Lcom/htc/camera/menu/MenuItem;

    .line 366
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoCaptureItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v2, 0x38

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 367
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_d
    new-instance v2, Lcom/htc/camera/menu/CheckBoxMenuItem;

    iget-object v4, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const v5, 0x7f0801b3

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v6, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v6}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v6, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_VOICE_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    const v0, 0x7f0801a3

    :goto_1
    invoke-direct {v2, v4, v5, v0}, Lcom/htc/camera/menu/CheckBoxMenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    iput-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    .line 379
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v2, 0x39

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 380
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_camera_tap_capture"

    invoke-direct {v0, v2, v4, v11}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/htc/camera/menu/MenuItem;

    .line 388
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 389
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TapToCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_camera_tap_capture_front"

    invoke-direct {v0, v2, v4, v11}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/htc/camera/menu/MenuItem;

    .line 396
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 397
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TapToCaptureFrontItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportSaveMirrorImage()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 402
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_save_mirror_image"

    const v5, 0x7f08023f

    invoke-direct {v0, v2, v4, v5}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_SaveMirrorImageItem:Lcom/htc/camera/menu/MenuItem;

    .line 406
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_SaveMirrorImageItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_e
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 412
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_lock_focus_in_video"

    const v5, 0x7f0801ef

    invoke-direct {v0, v2, v4, v5}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_LockAFInVideoMenuItem:Lcom/htc/camera/menu/MenuItem;

    .line 417
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_LockAFInVideoMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureOptionsMenuitem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    .line 426
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstController;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    .line 427
    if-eqz v0, :cond_11

    .line 429
    new-instance v0, Lcom/htc/camera/menu/MenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v2, v12, v7}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/htc/camera/menu/MenuItem;

    .line 430
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 434
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_continuous_burst"

    invoke-direct {v0, v2, v4, v12}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    .line 437
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 438
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_continuous_burst_limit"

    const v5, 0x7f080235

    invoke-direct {v0, v2, v4, v5}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/htc/camera/menu/MenuItem;

    .line 444
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v4, "pref_continuous_burst_auto_review"

    const v5, 0x7f080236

    invoke-direct {v0, v2, v4, v5}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/htc/camera/menu/MenuItem;

    .line 450
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    .line 458
    :cond_11
    iget-boolean v0, v9, Lcom/htc/camera/CameraStartMode;->isServiceMode:Z

    if-nez v0, :cond_12

    .line 460
    new-instance v0, Lcom/htc/camera/menu/ListPreferenceMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v2, "pref_camera_review_duration_main"

    const v4, 0x7f0c004e

    const v5, 0x7f0c004d

    const-string v6, "0s"

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/menu/ListPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_MainReviewDurationItem:Lcom/htc/camera/menu/MenuItem;

    .line 467
    new-instance v0, Lcom/htc/camera/menu/ListPreferenceMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v2, "pref_camera_review_duration_front"

    const v4, 0x7f0c004e

    const v5, 0x7f0c004d

    const-string v6, "5s"

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/menu/ListPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FrontReviewDurationItem:Lcom/htc/camera/menu/MenuItem;

    .line 474
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_MainReviewDurationItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_FrontReviewDurationItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_12
    iget-boolean v0, v9, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_13

    .line 481
    new-instance v0, Lcom/htc/camera/menu/SelfTimerMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const v2, 0x7f080205

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/menu/SelfTimerMenuItem;-><init>(Lcom/htc/camera/HTCCamera;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/htc/camera/menu/SelfTimerMenuItem;

    .line 484
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/htc/camera/menu/SelfTimerMenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_13
    iget-boolean v0, v9, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_14

    .line 491
    new-instance v0, Lcom/htc/camera/menu/ResolutionMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    const v3, 0x7f0801ab

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/menu/ResolutionMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraMode;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_PhotoResolutionMenuItem:Lcom/htc/camera/menu/MenuItem;

    .line 492
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_PhotoResolutionMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_14
    new-instance v0, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const v2, 0x7f080224

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/menu/ImageAdjustmentMenuItem;-><init>(Lcom/htc/camera/HTCCamera;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/htc/camera/menu/MenuItem;

    .line 500
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    iget-boolean v0, v9, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_15

    .line 505
    new-instance v0, Lcom/htc/camera/menu/ResolutionMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    const v3, 0x7f080227

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/menu/ResolutionMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraMode;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VideoResolutionMenuItem:Lcom/htc/camera/menu/MenuItem;

    .line 510
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VideoResolutionMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_15
    new-instance v0, Lcom/htc/camera/menu/MenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const v2, 0x7f080223

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ShowGlobalSettingsItem:Lcom/htc/camera/menu/MenuItem;

    .line 515
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ShowGlobalSettingsItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 516
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ShowGlobalSettingsItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_16
    sget-object v0, Lcom/htc/camera/CameraStartMode;->ContactsPhoto:Lcom/htc/camera/CameraStartMode;

    if-eq v9, v0, :cond_17

    sget-object v0, Lcom/htc/camera/CameraStartMode;->SquarePhoto:Lcom/htc/camera/CameraStartMode;

    if-eq v9, v0, :cond_17

    iget-boolean v0, v9, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_17

    .line 523
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v2, "pref_grid"

    const v3, 0x7f080256

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_GridMenuItem:Lcom/htc/camera/menu/MenuItem;

    .line 527
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_GridMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v8}, Lcom/htc/camera/menu/MenuItem;->setIsGlobalSettings(Z)V

    .line 528
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_GridMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_17
    iget-boolean v0, v9, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_18

    .line 534
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v2, "pref_camera_geo_tagging"

    const v3, 0x7f08023d

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagMenuItem:Lcom/htc/camera/menu/MenuItem;

    .line 538
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagMenuItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 539
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v8}, Lcom/htc/camera/menu/MenuItem;->setIsGlobalSettings(Z)V

    .line 540
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_18
    iget-boolean v0, v9, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_19

    .line 546
    new-instance v0, Lcom/htc/camera/menu/MenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const v2, 0x7f0801eb

    const v3, 0x7f0801ec

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagOffMenuItem:Lcom/htc/camera/menu/MenuItem;

    .line 550
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagOffMenuItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 551
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagOffMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v7}, Lcom/htc/camera/menu/MenuItem;->setSingleLine(Z)V

    .line 552
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagOffMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v8}, Lcom/htc/camera/menu/MenuItem;->setIsGlobalSettings(Z)V

    .line 553
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_GeoTagOffMenuItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_19
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 559
    new-instance v0, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v2, "pref_play_shutter_sound"

    const v3, 0x7f080255

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/htc/camera/menu/MenuItem;

    .line 563
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 564
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v8}, Lcom/htc/camera/menu/MenuItem;->setIsGlobalSettings(Z)V

    .line 565
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_1a
    const/16 v0, 0x1b

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 570
    new-instance v0, Lcom/htc/camera/menu/ListPreferenceMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v2, "pref_camera_hwkey_control"

    const v3, 0x7f080247

    const v4, 0x7f0c0053

    const v5, 0x7f0c0052

    const-string v6, "pref_camera_hwkey_control"

    invoke-static {v6}, Lcom/htc/camera/CameraSettings;->getGlobalDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/menu/ListPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;IIILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraHwKeyItem:Lcom/htc/camera/menu/MenuItem;

    .line 576
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraHwKeyItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v8}, Lcom/htc/camera/menu/MenuItem;->setIsGlobalSettings(Z)V

    .line 577
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraHwKeyItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_1b
    new-instance v0, Lcom/htc/camera/menu/ListPreferenceMenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v2, "pref_volumekey_control"

    const v3, 0x7f080243

    const v4, 0x7f0c0055

    const v5, 0x7f0c0054

    const-string v6, "pref_volumekey_control"

    invoke-static {v6}, Lcom/htc/camera/CameraSettings;->getGlobalDefaultValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/menu/ListPreferenceMenuItem;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;IIILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VolumeKeyItem:Lcom/htc/camera/menu/MenuItem;

    .line 587
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VolumeKeyItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v8}, Lcom/htc/camera/menu/MenuItem;->setIsGlobalSettings(Z)V

    .line 588
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VolumeKeyItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isStorageSlotLocked()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 593
    new-instance v0, Lcom/htc/camera/menu/a;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const v2, 0x7f0801e4

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/menu/a;-><init>(Lcom/htc/camera/HTCCamera;I)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/htc/camera/menu/MenuItem;

    .line 596
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v8}, Lcom/htc/camera/menu/MenuItem;->setIsGlobalSettings(Z)V

    .line 597
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_1c
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->isHelpAvailable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 603
    new-instance v0, Lcom/htc/camera/menu/MenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const v2, 0x7f08025b

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TipsHelpItem:Lcom/htc/camera/menu/MenuItem;

    .line 604
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TipsHelpItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 605
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TipsHelpItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v8}, Lcom/htc/camera/menu/MenuItem;->setIsGlobalSettings(Z)V

    .line 606
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_TipsHelpItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_1d
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 612
    new-instance v0, Lcom/htc/camera/menu/MenuItem;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    const v2, 0x7f08025a

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;II)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ResetToDefaultItem:Lcom/htc/camera/menu/MenuItem;

    .line 613
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ResetToDefaultItem:Lcom/htc/camera/menu/MenuItem;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 614
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ResetToDefaultItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, v8}, Lcom/htc/camera/menu/MenuItem;->setIsGlobalSettings(Z)V

    .line 615
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ResetToDefaultItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_1e
    iput-object v10, p0, Lcom/htc/camera/menu/SettingsMenu;->m_Items:Ljava/util/ArrayList;

    .line 622
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/SettingsMenu;->setItems(Ljava/util/List;)V

    .line 624
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IVoiceHfmClient;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IVoiceHfmClient;

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->mVoiceHfmClient:Lcom/htc/camera/IVoiceHfmClient;

    .line 625
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->mVoiceHfmClient:Lcom/htc/camera/IVoiceHfmClient;

    if-eqz v0, :cond_1f

    .line 626
    new-instance v0, Lcom/htc/camera/menu/SettingsMenu$2;

    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->mVoiceHfmClient:Lcom/htc/camera/IVoiceHfmClient;

    const-string v2, "VoiceClientStatus"

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/menu/SettingsMenu$2;-><init>(Lcom/htc/camera/menu/SettingsMenu;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceClientStateDynamicListner:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    :cond_1f
    move v7, v8

    .line 637
    goto/16 :goto_0

    .line 371
    :cond_20
    const v0, 0x7f0801a4

    goto/16 :goto_1
.end method

.method protected onMenuItemClicked(Lcom/htc/camera/menu/MenuItem;II)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 647
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 648
    packed-switch p3, :pswitch_data_0

    .line 799
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/camera/menu/MenuListView;->onMenuItemClicked(Lcom/htc/camera/menu/MenuItem;II)V

    .line 800
    return-void

    .line 652
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateAutoFocusRelatedItem()V

    goto :goto_0

    .line 658
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/htc/camera/menu/MenuItem;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/htc/camera/menu/MenuItem;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->updateContent()V

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/htc/camera/menu/MenuItem;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/htc/camera/menu/MenuItem;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->updateContent()V

    goto :goto_0

    .line 667
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->restartPreview()Z

    .line 668
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateSmileCaptureItem()V

    goto :goto_0

    .line 674
    :pswitch_4
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/camera/DisplayDevice;->ishtcChina()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    iput-boolean v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_IsGeotaoOff:Z

    .line 677
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 678
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->showGeoTagDialog()V

    goto :goto_0

    .line 685
    :pswitch_5
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->ishtcChina()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 687
    iput-boolean v3, p0, Lcom/htc/camera/menu/SettingsMenu;->m_IsGeotaoOff:Z

    .line 688
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->showGeoTagDialog()V

    goto :goto_0

    .line 692
    :cond_2
    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 693
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 694
    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraApplication;->setIsGeoTagDialogShown(Z)V

    .line 695
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_LocationManager:Lcom/htc/camera/location/ILocationManager;

    invoke-virtual {v0}, Lcom/htc/camera/location/ILocationManager;->startLocationSettings()V

    goto :goto_0

    .line 702
    :pswitch_6
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->restartPreview()Z

    .line 703
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/htc/camera/menu/MenuItem;

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isObjectTrackingEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Z)V

    goto/16 :goto_0

    .line 710
    :pswitch_7
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateDisabledItems()V

    goto/16 :goto_0

    .line 716
    :pswitch_8
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->resetToDefault()V

    goto/16 :goto_0

    .line 722
    :pswitch_9
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 723
    if-eqz v0, :cond_3

    .line 724
    invoke-virtual {v0}, Lcom/htc/camera/capturemode/ICaptureModeManager;->createUserCaptureMode()V

    .line 731
    :goto_1
    :pswitch_a
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->updateContent()V

    goto/16 :goto_0

    .line 726
    :cond_3
    const-string v0, "SettingsMenu"

    const-string v1, "onMenuItemClicked() - No ICaptureModeManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 738
    :pswitch_b
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateDisabledItems()V

    goto/16 :goto_0

    .line 744
    :pswitch_c
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateContinuousCaptureItem()V

    goto/16 :goto_0

    .line 750
    :pswitch_d
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ExpendedPhotoSceneHeaderMenuItem:Lcom/htc/camera/menu/SceneMenuItem;

    if-eqz v0, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->applyLastPhotoScene()V

    goto/16 :goto_0

    .line 763
    :pswitch_e
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_ExpendedPhotoSceneHeaderMenuItem:Lcom/htc/camera/menu/SceneMenuItem;

    if-eqz v0, :cond_4

    .line 764
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updatePhotoSceneItem()V

    .line 765
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateVideoSceneItem()V

    .line 767
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateDisabledItems()V

    goto/16 :goto_0

    .line 773
    :pswitch_f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.showme"

    const-string v3, "com.htc.showme.ui.Search"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 775
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    :try_start_0
    const-string v1, "SettingsMenu"

    const-string v2, "Launch showme"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    const-string v1, "SettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 786
    :pswitch_10
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_5

    .line 787
    invoke-virtual {p0}, Lcom/htc/camera/menu/SettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    const-string v1, "pref_camera_voice_capture"

    iget-object v2, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v2}, Lcom/htc/camera/menu/MenuItem;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 791
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->mVoiceHfmClient:Lcom/htc/camera/IVoiceHfmClient;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->mVoiceHfmClient:Lcom/htc/camera/IVoiceHfmClient;

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/IVoiceHfmClient;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-direct {p0, v0}, Lcom/htc/camera/menu/SettingsMenu;->updateVoiceCaptureItem(Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;)V

    goto/16 :goto_0

    .line 789
    :cond_5
    const-string v0, "SettingsMenu"

    const-string v1, "onMenuItemClicked() - m_VoiceCaptureItem null !!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_7
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final setCaptureModeItemVisibility(Z)V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureModeItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureModeItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, p1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 852
    :cond_0
    return-void
.end method

.method public final setSlowMotionItemVisibility(Z)V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_SlowMotionItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_SlowMotionItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0, p1}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    .line 857
    :cond_0
    return-void
.end method

.method public updateItemContents()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1238
    invoke-virtual {p0}, Lcom/htc/camera/menu/SettingsMenu;->beginUpdate()V

    .line 1240
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    move-object v2, v0

    .line 1241
    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_isPhotoModeSupported:Z

    .line 1242
    if-eqz v2, :cond_3

    iget-object v0, v2, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    iput-boolean v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_isVideoModeSupported:Z

    .line 1243
    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/htc/camera/capturemode/CaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_isZoeMode:Z

    .line 1246
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    .line 1247
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/MenuItem;->setVisibility(Z)V

    goto :goto_3

    .line 1240
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1241
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1242
    goto :goto_2

    .line 1250
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateAutoFocusRelatedItem()V

    .line 1251
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateCameraTypeItem()V

    .line 1252
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updatePhotoSceneItem()V

    .line 1253
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateVideoSceneItem()V

    .line 1254
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateContinuousCaptureItem()V

    .line 1255
    invoke-direct {p0}, Lcom/htc/camera/menu/SettingsMenu;->updateDisabledItems()V

    .line 1256
    invoke-super {p0}, Lcom/htc/camera/menu/MenuListView;->updateItemContents()V

    .line 1257
    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_5

    .line 1258
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu;->m_VoiceCaptureItem:Lcom/htc/camera/menu/MenuItem;

    iget-object v0, p0, Lcom/htc/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0801b3

    :goto_4
    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/MenuItem;->setTitle(I)V

    .line 1260
    :cond_5
    invoke-virtual {p0}, Lcom/htc/camera/menu/SettingsMenu;->endUpdate()V

    .line 1261
    return-void

    .line 1258
    :cond_6
    const v0, 0x7f0801b4

    goto :goto_4
.end method
