.class public final Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;
.super Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;
.source "SplitCaptureTypeMainBarItem.java"


# instance fields
.field private m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

.field private final m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private final m_CaptureTypeChangedCallback:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Lcom/htc/camera/splitcapture/SplitCaptureType;",
            ">;"
        }
    .end annotation
.end field

.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private final m_IconMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/menu/IconMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 5

    .prologue
    .line 65
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;I)V

    .line 35
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$1;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureTypeChangedCallback:Lcom/htc/camera/property/c;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_IconMenuItems:Ljava/util/ArrayList;

    .line 66
    const v0, 0x7f080427

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->setTitle(I)V

    .line 69
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 70
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "No ICaptureModeManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 75
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$2;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_DUAL_CAPTURE_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$3;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/dualcamera/IDualCameraController;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 96
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_HUMAN_JOINT_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$4;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/dualcamera/IDualCameraController;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_IconMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    const v3, 0x7f080215

    sget-object v4, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;Lcom/htc/camera/HTCCamera;ILcom/htc/camera/splitcapture/SplitCaptureType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_IconMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    const v3, 0x7f080217

    sget-object v4, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_15_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;Lcom/htc/camera/HTCCamera;ILcom/htc/camera/splitcapture/SplitCaptureType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_IconMenuItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    const v3, 0x7f080212

    sget-object v4, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitDualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;-><init>(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;Lcom/htc/camera/HTCCamera;ILcom/htc/camera/splitcapture/SplitCaptureType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->linkToCaptureMode()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->updateIconMenuItemSelection()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->linkToCaptureMode()V

    return-void
.end method

.method public static getDrawable(Lcom/htc/camera/splitcapture/SplitCaptureType;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const v3, 0x7f02005b

    .line 123
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$5;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 139
    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 127
    :pswitch_0
    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_1
    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_2
    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_3
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 135
    :pswitch_4
    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_5
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private linkToCaptureMode()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 154
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eq v1, v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v1, v1, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureTypeChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 162
    :cond_2
    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 163
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureTypeChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 167
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->updateIconMenuItemSelection()V

    .line 168
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->updateVisibility()V

    .line 169
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->refreshItemHighlight()V

    goto :goto_0
.end method

.method private updateIconMenuItemSelection()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    move-object v5, v0

    .line 211
    :goto_0
    if-eqz v5, :cond_5

    .line 214
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_IconMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_1
    if-ltz v4, :cond_4

    .line 216
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_IconMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;

    .line 217
    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$5;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    iget-object v6, v0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;->captureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v6}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_0

    .line 233
    :goto_2
    iget-object v1, v0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;->captureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;->setSelected(Z)V

    .line 214
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    .line 210
    :cond_0
    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    sget-object v6, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_DUAL_CAPTURE_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v6}, Lcom/htc/camera/dualcamera/IDualCameraController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-ne v1, v6, :cond_1

    move v1, v2

    .line 223
    :goto_4
    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;->setVisibility(Z)V

    goto :goto_2

    :cond_1
    move v1, v3

    .line 222
    goto :goto_4

    .line 228
    :pswitch_1
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    sget-object v6, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_HUMAN_JOINT_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v6}, Lcom/htc/camera/dualcamera/IDualCameraController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-ne v1, v6, :cond_2

    move v1, v2

    .line 229
    :goto_5
    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;->setVisibility(Z)V

    goto :goto_2

    :cond_2
    move v1, v3

    .line 228
    goto :goto_5

    :cond_3
    move v1, v3

    .line 233
    goto :goto_3

    .line 237
    :cond_4
    invoke-static {v5}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->getDrawable(Lcom/htc/camera/splitcapture/SplitCaptureType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :cond_5
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->invalidate()V

    .line 240
    return-void

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    if-eqz v0, :cond_0

    .line 254
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->setVisibility(Z)V

    .line 255
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    check-cast v0, Lcom/htc/camera/capturemode/UserCaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/UserCaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 253
    goto :goto_0
.end method


# virtual methods
.method protected isDefaultValue()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method protected onItemClicked()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_IconMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->showPopupMenu(Ljava/util/List;)V

    .line 190
    return-void
.end method

.method protected onMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    check-cast p3, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;

    iget-object v1, p3, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;->captureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->setCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    instance-of v0, v0, Lcom/htc/camera/capturemode/UserCaptureMode;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem;->m_CaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    check-cast v0, Lcom/htc/camera/capturemode/UserCaptureMode;

    check-cast p3, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;

    iget-object v1, p3, Lcom/htc/camera/splitcapture/SplitCaptureTypeMainBarItem$CaptureTypeMenuItem;->captureType:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/capturemode/UserCaptureMode;->setSplitCaptureType(Lcom/htc/camera/splitcapture/SplitCaptureType;)V

    goto :goto_0
.end method
