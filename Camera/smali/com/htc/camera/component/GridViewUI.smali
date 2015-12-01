.class public final Lcom/htc/camera/component/GridViewUI;
.super Lcom/htc/camera/component/cm;
.source "GridViewUI.java"


# instance fields
.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_GridViewContainer:Landroid/widget/RelativeLayout;

.field private m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 43
    const-string v0, "Grid View UI"

    const/4 v1, 0x1

    const v2, 0x7f0e00ff

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 44
    invoke-virtual {p0}, Lcom/htc/camera/component/GridViewUI;->disableAutoInflateView()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/GridViewUI;Z)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/camera/component/GridViewUI;->showGridViewUI(Z)V

    return-void
.end method

.method private initializeUI()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/GridViewUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    .line 80
    const v1, 0x7f0e010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/htc/camera/component/GridViewUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 93
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/GridViewUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/GridViewUI$1;-><init>(Lcom/htc/camera/component/GridViewUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 113
    iget-object v1, p0, Lcom/htc/camera/component/GridViewUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/component/GridViewUI$2;

    const-string v3, "Settings.IsGridVisible"

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/GridViewUI$2;-><init>(Lcom/htc/camera/component/GridViewUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 122
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/GridViewUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/GridViewUI$3;-><init>(Lcom/htc/camera/component/GridViewUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 130
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/GridViewUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/GridViewUI$4;-><init>(Lcom/htc/camera/component/GridViewUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 142
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/GridViewUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/GridViewUI$5;-><init>(Lcom/htc/camera/component/GridViewUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 154
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/GridViewUI$6;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/GridViewUI$6;-><init>(Lcom/htc/camera/component/GridViewUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 167
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_COVER_VISIBLE:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/component/GridViewUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/GridViewUI$7;-><init>(Lcom/htc/camera/component/GridViewUI;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/ui/IViewfinder;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 180
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/component/GridViewUI$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/GridViewUI$8;-><init>(Lcom/htc/camera/component/GridViewUI;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/ui/IViewfinder;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 189
    :cond_0
    return-void
.end method

.method private showGridViewUI(Z)V
    .locals 2

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_COVER_VISIBLE:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const/4 p1, 0x0

    .line 204
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 210
    :goto_1
    return-void

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/component/GridViewUI;->initializeUI()V

    goto :goto_0

    .line 207
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/component/GridViewUI;->updateContainerSize()V

    .line 209
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p1, p1}, Lcom/htc/camera/component/GridViewUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_1
.end method

.method private updateContainerSize()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v1, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 223
    iget-object v1, p0, Lcom/htc/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 225
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 229
    iget-object v2, p0, Lcom/htc/camera/component/GridViewUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/htc/camera/component/GridViewUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v2, v2, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/camera/component/GridViewUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v2, v2, Lcom/htc/camera/dualcamera/IDualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    if-ne v2, v3, :cond_2

    .line 233
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 234
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_GridViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 57
    const-class v0, Lcom/htc/camera/ui/IViewfinder;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/GridViewUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IViewfinder;

    iput-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    .line 58
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/GridViewUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 59
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/htc/camera/component/GridViewUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Cannot find IDualCameraController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/GridViewUI;->setupPropertyChangedCallbacks()V

    .line 66
    invoke-virtual {p0}, Lcom/htc/camera/component/GridViewUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GRID_VISIBLE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/GridViewUI;->showGridViewUI(Z)V

    .line 68
    :cond_1
    return-void
.end method
