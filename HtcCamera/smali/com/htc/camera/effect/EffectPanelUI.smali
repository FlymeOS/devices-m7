.class public Lcom/htc/camera/effect/EffectPanelUI;
.super Lcom/htc/camera/component/cm;
.source "EffectPanelUI.java"


# instance fields
.field private final effectPanelState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field private m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

.field private m_EffectButton:Landroid/view/View;

.field private m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;

.field private m_EffectListView:Landroid/widget/ListView;

.field private m_EffectListViewContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

.field private m_HasPhotoEnhancer:Ljava/lang/Boolean;

.field private m_HasVideoTrimmer:Ljava/lang/Boolean;

.field private m_IsFirstPanelOpen:Z

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 79
    const-string v0, "Effect Panel"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 67
    iput-boolean v2, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_IsFirstPanelOpen:Z

    .line 80
    const-string v0, "EffectPanelUI.EffectPanelState"

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-static {v0, v1, p0, v2}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->effectPanelState:Lcom/htc/camera/property/Property;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectPanelUI;->onEffectButtonClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/widget/PopupBubble;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/effect/EffectPanelUI;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/actionscreen/CommonActionScreen;)Lcom/htc/camera/actionscreen/CommonActionScreen;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/effect/EffectPanelUI;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/effect/EffectPanelUI;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/effect/EffectPanelUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectPanelUI;->updateEffectButtonContent()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/effect/EffectPanelAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectPanelUI;->openUI()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/effect/EffectPanelUI;I)V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/EffectPanelUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectPanelUI;->closeUI()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/property/Property;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->effectPanelState:Lcom/htc/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/component/Component;IJZ)Z
    .locals 1

    .prologue
    .line 45
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/effect/EffectPanelUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/effect/EffectPanelUI;I)V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/EffectPanelUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/effect/IEffectManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/camera/effect/EffectPanelUI;)Z
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->isCaptureUIBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/camera/effect/EffectPanelUI;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/EffectPanelUI;->ensureEffectItemVisible(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z
    .locals 1

    .prologue
    .line 45
    invoke-virtual/range {p0 .. p8}, Lcom/htc/camera/effect/EffectPanelUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/media/MediaInfo;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/EffectPanelUI;->startPhotoEnhancer(Lcom/htc/camera/media/MediaInfo;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/media/MediaInfo;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/EffectPanelUI;->startVideoTrimmer(Lcom/htc/camera/media/MediaInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/camera/effect/EffectPanelUI;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/camera/effect/EffectPanelUI;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/camera/effect/EffectPanelUI;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_HasPhotoEnhancer:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/camera/effect/EffectPanelUI;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_HasVideoTrimmer:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/effect/EffectPanelUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private closeUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V

    .line 92
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/htc/camera/widget/PopupBubble;->close()V

    .line 94
    :cond_0
    return-void
.end method

.method private ensureEffectItemVisible(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 114
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 117
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 118
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 119
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->effectList:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 120
    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 123
    if-ltz v0, :cond_0

    .line 126
    if-gt v0, v2, :cond_1

    .line 127
    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 139
    :goto_0
    if-eqz p1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 146
    :cond_0
    :goto_1
    return-void

    .line 128
    :cond_1
    if-lt v0, v3, :cond_0

    .line 130
    if-eqz p1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;

    invoke-virtual {v1}, Lcom/htc/camera/effect/EffectPanelAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 133
    :cond_2
    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
.end method

.method private initializeUI()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 470
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 475
    new-instance v1, Lcom/htc/camera/widget/PopupBubble;

    invoke-direct {v1, v0}, Lcom/htc/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    .line 476
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    const v2, 0x7f0a03e1

    invoke-virtual {p0, v2}, Lcom/htc/camera/effect/EffectPanelUI;->getDimension(I)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/widget/PopupBubble;->setSize(II)V

    .line 477
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    new-instance v2, Lcom/htc/camera/effect/EffectPanelUI$14;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectPanelUI$14;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/PopupBubble;->setOnClosedListener(Lcom/htc/camera/widget/h;)V

    .line 487
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    new-instance v2, Lcom/htc/camera/effect/EffectPanelUI$15;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectPanelUI$15;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/PopupBubble;->setOnOpenListener(Lcom/htc/camera/widget/i;)V

    .line 497
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    new-instance v2, Lcom/htc/camera/effect/EffectPanelUI$16;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectPanelUI$16;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/PopupBubble;->setOnOutsideTouchListener(Lcom/htc/camera/widget/j;)V

    .line 508
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e018f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 509
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f0e0190

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    .line 510
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 511
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/PopupBubble;->setContentView(Landroid/view/View;)V

    .line 512
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    invoke-virtual {v0, v3, v3}, Lcom/htc/camera/widget/PopupBubble;->setSize(II)V

    .line 513
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 516
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    .line 517
    if-eqz v0, :cond_1

    .line 519
    new-instance v2, Lcom/htc/camera/effect/EffectPanelAdapter;

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget-object v1, v0, Lcom/htc/camera/effect/IEffectManager;->effectList:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v3, v1}, Lcom/htc/camera/effect/EffectPanelAdapter;-><init>(Lcom/htc/camera/HTCCamera;Ljava/util/List;)V

    iput-object v2, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;

    .line 520
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/effect/EffectPanelAdapter;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 521
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v1, v0}, Lcom/htc/camera/effect/EffectPanelAdapter;->setCurrentEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 522
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 526
    :cond_1
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportTrackBallFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    const v1, 0x7f020257

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 529
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    new-instance v1, Lcom/htc/camera/effect/EffectPanelUI$17;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectPanelUI$17;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 550
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    new-instance v1, Lcom/htc/camera/effect/EffectPanelUI$18;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectPanelUI$18;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 561
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectPanelUI;->updateEffectListOrientation(Lcom/htc/camera/rotate/UIRotation;)V

    goto/16 :goto_0
.end method

.method private onEffectButtonClicked()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 575
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectPanelUI;->togglePanel(Z)V

    goto :goto_0

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    new-instance v1, Lcom/htc/camera/effect/EffectPanelUI$19;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectPanelUI$19;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->performAction(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 604
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    const-string v1, "No action screen to perform action"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openUI()V
    .locals 3

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 693
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 695
    :cond_1
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    sget-object v2, Lcom/htc/camera/effect/EffectPanelUI$21;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 703
    sget-object v2, Lcom/htc/camera/effect/EffectPanelUI$21;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 697
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 703
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startPhotoEnhancer(Lcom/htc/camera/media/MediaInfo;)V
    .locals 3

    .prologue
    .line 732
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPhotoEnhancer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :try_start_0
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectPanelUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 737
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 738
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 742
    :cond_0
    const-string v0, "com.htc.album"

    const-string v1, "com.htc.photoenhancer.PhotoEnhancer"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    iget-object v0, p1, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 744
    const-string v0, "filePath"

    invoke-virtual {p1}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    const-string v0, "degree"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 748
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    const-string v1, "startPhotoEnhancer() - Enter retouch mode directly"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v0, "com_htc_photoenhancer_key_edit_mode"

    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 759
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    .line 770
    :cond_2
    :goto_1
    return-void

    .line 754
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    const-string v1, "startPhotoEnhancer() - Start human-joint editor"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v0, "com.htc.intent.action.JOINT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    iget-object v0, p1, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/camera/media/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const-string v0, "FilePath"

    invoke-virtual {p1}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 761
    :catch_0
    move-exception v0

    .line 763
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start photo enhancer"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 764
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->clearAction()V

    .line 767
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    goto :goto_1
.end method

.method private startVideoTrimmer(Lcom/htc/camera/media/MediaInfo;)V
    .locals 3

    .prologue
    .line 777
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoTrimmer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.htc.video"

    const-string v2, "com.htc.trimslow.activity.VideoTrimmerActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.trimslow.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 786
    const-string v0, "data"

    iget-object v2, p1, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v0

    .line 791
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    const-string v2, "Cannot start photo enhancer"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 792
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->clearAction()V

    .line 795
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    goto :goto_0
.end method

.method private togglePanel(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 806
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 807
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isAutoFocusing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getFocusingState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 813
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/htc/camera/widget/PopupBubble;->close()V

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore open togglePanel FocusingState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getFocusingState()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 819
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->isCaptureUIBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 820
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->TAG:Ljava/lang/String;

    const-string v1, "ignore open togglePanel isCaptureUIBlocked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 825
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectPanelUI;->initializeUI()V

    .line 826
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/htc/camera/widget/PopupBubble;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 827
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/htc/camera/widget/PopupBubble;->close()V

    goto :goto_0

    .line 830
    :cond_4
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->popupOpeningEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 831
    iget-boolean v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_IsFirstPanelOpen:Z

    if-nez v0, :cond_5

    .line 832
    invoke-direct {p0, v3}, Lcom/htc/camera/effect/EffectPanelUI;->ensureEffectItemVisible(Z)V

    .line 835
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    sget-object v1, Lcom/htc/camera/widget/PopupBubble$ExpandDirection;->Left:Lcom/htc/camera/widget/PopupBubble$ExpandDirection;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/PopupBubble;->setExpandDirection(Lcom/htc/camera/widget/PopupBubble$ExpandDirection;)V

    .line 836
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v2, 0x7f0a03dd

    invoke-virtual {p0, v2}, Lcom/htc/camera/effect/EffectPanelUI;->getDimension(I)I

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/camera/widget/PopupBubble;->open(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 834
    :cond_5
    iput-boolean v3, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_IsFirstPanelOpen:Z

    goto :goto_1
.end method

.method private updateEffectButtonAvailability()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 846
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 868
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 853
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 857
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 858
    if-eqz v0, :cond_3

    instance-of v3, v0, Lcom/htc/camera/effect/AutoScene;

    if-nez v3, :cond_3

    instance-of v0, v0, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    :goto_2
    move v1, v0

    .line 859
    goto :goto_1

    :cond_4
    move v0, v1

    .line 858
    goto :goto_2

    :cond_5
    move v1, v2

    .line 861
    goto :goto_1
.end method

.method private updateEffectButtonContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f02021b

    .line 875
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    .line 876
    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    if-eq v0, v1, :cond_0

    .line 903
    :goto_0
    return-void

    .line 883
    :cond_0
    sget-object v0, Lcom/htc/camera/effect/EffectPanelUI$21;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 886
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_2

    .line 887
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 890
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/camera/widget/IconButton;

    if-eqz v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v0, Lcom/htc/camera/widget/IconButton;

    invoke-virtual {v0, v4}, Lcom/htc/camera/widget/IconButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 893
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_4

    .line 894
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 897
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 895
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/camera/widget/IconButton;

    if-eqz v0, :cond_3

    .line 896
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v0, Lcom/htc/camera/widget/IconButton;

    invoke-virtual {v0, v3}, Lcom/htc/camera/widget/IconButton;->setImageResource(I)V

    goto :goto_2

    .line 883
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEffectListOrientation(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/camera/effect/EffectPanelAdapter;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 917
    :cond_1
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->InversePortrait:Lcom/htc/camera/rotate/UIRotation;

    if-ne p1, v0, :cond_3

    .line 918
    :cond_2
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    .line 921
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 920
    :cond_3
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 103
    invoke-static {p0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 106
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 107
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 175
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 178
    :pswitch_0
    return-void

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 188
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 191
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 192
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->effectPanelState:Lcom/htc/camera/property/Property;

    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->effectPanelState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V

    .line 195
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 196
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectPanelUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 197
    const-class v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectPanelUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 198
    invoke-static {v1}, Lcom/htc/camera/effect/EffectPanelAdapter;->initialize(Lcom/htc/camera/HTCCamera;)V

    .line 201
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0e0191

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    new-instance v2, Lcom/htc/camera/effect/EffectPanelUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectPanelUI$1;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/effect/EffectPanelUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectPanelUI$2;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 244
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->restartingCameraEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/effect/EffectPanelUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectPanelUI$3;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 282
    new-instance v0, Lcom/htc/camera/effect/EffectPanelUI$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/effect/EffectPanelUI$4;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    .line 289
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/effect/EffectPanelUI$5;

    invoke-direct {v3, p0}, Lcom/htc/camera/effect/EffectPanelUI$5;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 381
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 382
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 383
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/effect/EffectPanelUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectPanelUI$6;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 394
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/effect/EffectPanelUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectPanelUI$7;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 403
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->effectList:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/effect/EffectPanelUI$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectPanelUI$8;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 413
    :cond_0
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/effect/EffectPanelUI$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectPanelUI$9;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 423
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/effect/EffectPanelUI$10;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/effect/EffectPanelUI$10;-><init>(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/effect/EffectPanelUI$11;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/effect/EffectPanelUI$11;-><init>(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/effect/EffectPanelUI$12;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectPanelUI$12;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 451
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/effect/EffectPanelUI$13;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectPanelUI$13;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 461
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V

    .line 462
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/effect/EffectPanelUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 614
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/camera/effect/EffectPanelUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 626
    invoke-direct {p0, p2}, Lcom/htc/camera/effect/EffectPanelUI;->updateEffectListOrientation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 627
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 2

    .prologue
    .line 632
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 634
    instance-of v0, p1, Lcom/htc/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_0

    .line 636
    check-cast p1, Lcom/htc/camera/actionscreen/CommonActionScreen;

    .line 637
    iget-object v0, p1, Lcom/htc/camera/actionscreen/CommonActionScreen;->isUIHidden:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/effect/EffectPanelUI$20;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectPanelUI$20;-><init>(Lcom/htc/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 665
    const-class v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectPanelUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 667
    :cond_0
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 676
    invoke-direct {p0, p2}, Lcom/htc/camera/effect/EffectPanelUI;->updateEffectListOrientation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 679
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/htc/camera/widget/PopupBubble;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    const/16 v2, 0x2711

    const/4 v5, 0x0

    const-wide/16 v6, 0x1388

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/effect/EffectPanelUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/effect/EffectPanelUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 684
    return-void
.end method

.method public setEffectButtonDisabled(Z)V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
