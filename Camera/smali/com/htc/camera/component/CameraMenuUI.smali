.class public Lcom/htc/camera/component/CameraMenuUI;
.super Lcom/htc/camera/ICameraMenuUI;
.source "CameraMenuUI.java"


# instance fields
.field private mAudioManager:Lcom/htc/camera/IAudioManager;

.field private mDragListener:Landroid/view/View$OnDragListener;

.field private mDragPosition:I

.field private mDropPosition:I

.field private mGestureDetectorListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mHighlightPosition:I

.field private mManageCam_EnterexitSoundHandle:Lcom/htc/camera/Handle;

.field private mManageCam_PaginationSoundHandle:Lcom/htc/camera/Handle;

.field private mManagecam_TapHandle:Lcom/htc/camera/Handle;

.field private mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;

.field private mMenuViewPagerPaddingBottom:I

.field private mMenuViewPagerPaddingTop:I

.field private mMenuViewPagerisExpended:Z

.field private final mTapPoint:Landroid/graphics/Point;

.field private mTapPosition:I

.field private m_BlockManager:Lcom/htc/camera/w;

.field private m_CameraMenuContainer:Landroid/view/ViewGroup;

.field private m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

.field private m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

.field private m_CameraMenubtn:Landroid/widget/ImageView;

.field private m_ClosingBlockHandle:Lcom/htc/camera/Handle;

.field private m_CurrentLongPressedView:Landroid/view/View;

.field private m_DeleteIconContainer:Landroid/widget/LinearLayout;

.field private m_DialogManager:Lcom/htc/camera/IRotateDialogManager;

.field private m_DragState:Lcom/htc/camera/component/CameraMenuUI$DragState;

.field private m_GestureDetector:Landroid/view/GestureDetector;

.field private m_GlobalSettingsBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

.field private m_GlobalSettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

.field private m_GlobalSettingsDialogHandle:Lcom/htc/camera/Handle;

.field private m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

.field private final m_HighlightShape:Landroid/graphics/drawable/Drawable;

.field private m_IsAnimating:Z

.field private m_IsAnimationFilter:Z

.field private m_IsCaptureModeChanged:Z

.field private m_IsHandleDropEvent:Z

.field private m_IsPreviewStoppedByCameraMenu:Z

.field private m_IsRelayoutNeeded:Z

.field private m_LockRotation:Lcom/htc/camera/rotate/UIRotation;

.field private m_MenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/CameraMenuUI$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_MenuTable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/camera/component/CameraMenuUI$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_NeedWaitFirstFrameReady:Z

.field private m_PageIndicator:[Landroid/widget/ImageView;

.field private m_PageIndicatorContainer:Landroid/widget/LinearLayout;

.field private m_ScrollDownView:Landroid/view/View;

.field private m_ScrollUpView:Landroid/view/View;

.field private final m_Shape:Landroid/graphics/drawable/Drawable;

.field private m_ShowSystemBarHandle:Lcom/htc/camera/Handle;

.field private final m_SolidShape:Landroid/graphics/drawable/Drawable;

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

.field private m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 550
    const-string v0, "CameraMenuUI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/htc/camera/ICameraMenuUI;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 108
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_SolidShape:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_Shape:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_HighlightShape:Landroid/graphics/drawable/Drawable;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    .line 154
    iput v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mHighlightPosition:I

    .line 155
    iput v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    .line 156
    iput v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I

    .line 157
    iput v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I

    .line 158
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mTapPoint:Landroid/graphics/Point;

    .line 165
    iput-boolean v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_NeedWaitFirstFrameReady:Z

    .line 172
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_LockRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 173
    sget-object v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;->CLOSED:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    .line 179
    new-instance v0, Lcom/htc/camera/component/CameraMenuUI$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CameraMenuUI$1;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mGestureDetectorListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 268
    new-instance v0, Lcom/htc/camera/component/CameraMenuUI$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CameraMenuUI$2;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragListener:Landroid/view/View$OnDragListener;

    .line 551
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$MenuState;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/component/CameraMenuUI$MenuState;)Lcom/htc/camera/component/CameraMenuUI$MenuState;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/CameraMenuUI;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mTapPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/CameraMenuUI;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/camera/component/CameraMenuUI;I)I
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/CameraMenuUI;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/camera/component/CameraMenuUI;I)I
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->shinkMenuViewPager()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$DragState;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_DragState:Lcom/htc/camera/component/CameraMenuUI$DragState;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/component/CameraMenuUI$DragState;)Lcom/htc/camera/component/CameraMenuUI$DragState;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_DragState:Lcom/htc/camera/component/CameraMenuUI$DragState;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/CameraMenuUI;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsHandleDropEvent:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/camera/component/CameraMenuUI;Z)Z
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsHandleDropEvent:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/capturemode/ICaptureModeManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/CameraMenuUI;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_DeleteIconContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/component/CameraMenuUI;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimating:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/CameraMenuUI;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/component/CameraMenuUI;IIZ)I
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/CameraMenuUI;->getNearestViewPosition(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/htc/camera/component/CameraMenuUI;I)I
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/component/CameraMenuUI;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimationFilter:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/camera/component/CameraMenuUI;Z)Z
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimationFilter:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->updateCaptureModes()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->updatePageIndicatorState()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->expendMenuViewPager()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->openCameraMenuUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/CameraMenuUI;IIZ)I
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/CameraMenuUI;->pointToViewPosition(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/camera/component/CameraMenuUI;Z)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CameraMenuUI;->sendCloseMenuMessage(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->closeCameraMenuUI()V

    return-void
.end method

.method static synthetic access$3302(Lcom/htc/camera/component/CameraMenuUI;Z)Z
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsRelayoutNeeded:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->initMenuList()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/camera/component/CameraMenuUI;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/IAudioManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mManageCam_EnterexitSoundHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->updateButtonStates()V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/lib1/cc/widget/HtcIconButton;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/camera/component/CameraMenuUI;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->updateHighlightItem()V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/camera/component/CameraMenuUI;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsCaptureModeChanged:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/camera/component/CameraMenuUI;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/menu/SettingsMenu;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/menu/SettingsMenu;)Lcom/htc/camera/menu/SettingsMenu;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsMenu:Lcom/htc/camera/menu/SettingsMenu;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialogHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialogHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/IRotateDialogManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/IRotateDialogManager;)Lcom/htc/camera/IRotateDialogManager;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/lib1/cc/widget/HtcAlertDialog;)Lcom/htc/lib1/cc/widget/HtcAlertDialog;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialog:Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/CameraMenuUI;IZZ)Z
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/CameraMenuUI;->setCaptureMode(IZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/camera/component/CameraMenuUI;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_Shape:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/camera/component/CameraMenuUI;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CameraMenuUI;->createBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/CameraMenuUI;I)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CameraMenuUI;->getViewPage(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/CameraMenuUI;)Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CurrentLongPressedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/camera/component/CameraMenuUI;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CurrentLongPressedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_LockRotation:Lcom/htc/camera/rotate/UIRotation;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/rotate/UIRotation;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_LockRotation:Lcom/htc/camera/rotate/UIRotation;

    return-object p1
.end method

.method private cloneView(I)Landroid/view/View;
    .locals 10

    .prologue
    const v6, 0x7f0e0151

    const v9, 0x7f0e0150

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1303
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CameraMenuUI;->getViewLocation(I)[I

    move-result-object v3

    .line 1304
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mItemName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    .line 1306
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/camera/component/CameraMenuUI;->getViewPage(I)Landroid/view/ViewGroup;

    move-result-object v1

    .line 1307
    rem-int/lit8 v2, p1, 0x6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1308
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1310
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005c

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1311
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1312
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1313
    iget-object v6, p0, Lcom/htc/camera/component/CameraMenuUI;->m_HighlightShape:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1314
    iget-object v6, v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1315
    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1318
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1320
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1321
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1322
    const v2, 0x7f0a04a5

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1323
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1324
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1325
    aget v0, v3, v8

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setX(F)V

    .line 1326
    const/4 v0, 0x1

    aget v0, v3, v0

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setY(F)V

    .line 1327
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    if-ne v0, v7, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v5, v0, v8}, Lcom/htc/camera/component/CameraMenuUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 1328
    return-object v5

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_LockRotation:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0
.end method

.method private closeCameraMenuUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 618
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 619
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsPreviewStoppedByCameraMenu:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    const-string v2, "closeCameraMenuUI() - Preview is stopped by menu, restart preview and close later"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iput-boolean v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsPreviewStoppedByCameraMenu:Z

    .line 627
    sget-object v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;->CLOSING:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    .line 628
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/camera/HTCCamera;->startPreview(Lcom/htc/camera/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    const-string v2, "closeCameraMenuUI() - Fail to restart preview"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_BlockManager:Lcom/htc/camera/w;

    if-nez v0, :cond_2

    .line 634
    const-class v0, Lcom/htc/camera/w;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraMenuUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/w;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_BlockManager:Lcom/htc/camera/w;

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ClosingBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_BlockManager:Lcom/htc/camera/w;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ClosingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v2}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 638
    iput-object v4, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ClosingBlockHandle:Lcom/htc/camera/Handle;

    .line 641
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ShowSystemBarHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_4

    .line 643
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ShowSystemBarHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->hideNavigationBar(Lcom/htc/camera/Handle;)V

    .line 644
    iput-object v4, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ShowSystemBarHandle:Lcom/htc/camera/Handle;

    .line 647
    :cond_4
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsPreviewStoppedByCameraMenu:Z

    if-eqz v0, :cond_5

    .line 649
    iput-boolean v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsPreviewStoppedByCameraMenu:Z

    .line 650
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    const-string v2, "onEventReceived() - Resume preview"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/camera/HTCCamera;->startPreview(Lcom/htc/camera/CameraType;)Z

    .line 654
    :cond_5
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isIdle()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 655
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/CameraMenuUI;->showUI(Landroid/view/View;ZZ)V

    .line 656
    :cond_7
    sget-object v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;->CLOSED:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    .line 657
    iput-boolean v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsCaptureModeChanged:Z

    .line 659
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->hideGridUIAnimation()V

    .line 661
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_8

    .line 663
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/IRotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 664
    iput-object v4, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsDialogHandle:Lcom/htc/camera/Handle;

    .line 668
    :cond_8
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->openCaptureUI()V

    .line 671
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->cameraMenuState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private createBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 12

    .prologue
    .line 1587
    .line 1588
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 1589
    const v0, 0x7f0a04b7

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v0

    const v1, 0x7f0a04b8

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1592
    :goto_0
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1593
    const v1, 0x7f0a04b3

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    .line 1596
    const/4 v4, 0x0

    .line 1597
    const/4 v3, 0x0

    .line 1598
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1599
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1600
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f00e2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1601
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1603
    const/4 v1, 0x0

    move v5, v4

    move v4, v1

    :goto_1
    if-ge v4, p1, :cond_2

    .line 1605
    const v1, 0x7f0a04b3

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v1

    mul-int/2addr v1, v5

    const v8, 0x7f0a04b5

    invoke-virtual {p0, v8}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v8

    mul-int/2addr v8, v5

    add-int/2addr v1, v8

    add-int v8, v1, v2

    .line 1606
    const v1, 0x7f0a04b4

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v1

    mul-int/2addr v1, v3

    const v9, 0x7f0a04b6

    invoke-virtual {p0, v9}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v9

    mul-int/2addr v9, v3

    add-int/2addr v1, v9

    const v9, 0x7f0a04b6

    invoke-virtual {p0, v9}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v1, v9

    add-int/2addr v1, v2

    .line 1607
    iget-object v9, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x3

    if-gt v9, v10, :cond_0

    move v1, v2

    .line 1609
    :cond_0
    int-to-float v8, v8

    int-to-float v1, v1

    int-to-float v9, v2

    invoke-virtual {v6, v8, v1, v9, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1611
    add-int/lit8 v1, v5, 0x1

    .line 1612
    const/4 v5, 0x3

    if-ne v1, v5, :cond_3

    .line 1614
    add-int/lit8 v1, v3, 0x1

    .line 1615
    const/4 v3, 0x0

    .line 1603
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move v3, v1

    goto :goto_1

    .line 1591
    :cond_1
    const v0, 0x7f0a04b7

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v0

    const v1, 0x7f0a04b4

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 1619
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_3
    move v11, v3

    move v3, v1

    move v1, v11

    goto :goto_2
.end method

.method private expendMenuViewPager()V
    .locals 1

    .prologue
    .line 1700
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CameraMenuUI;->expendMenuViewPager(Z)V

    .line 1701
    return-void
.end method

.method private expendMenuViewPager(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 1704
    iget-boolean v1, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuViewPagerisExpended:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 1727
    :goto_0
    return-void

    .line 1707
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1710
    sget v2, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1711
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v4, :cond_1

    .line 1712
    const v2, 0x7f0a04b4

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1713
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v2, v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1716
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    const v2, 0x7f0a04b8

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1717
    iget v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuViewPagerPaddingTop:I

    add-int/2addr v2, v1

    .line 1718
    iget v3, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuViewPagerPaddingBottom:I

    add-int/2addr v1, v3

    .line 1719
    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v4, :cond_2

    move v1, v0

    .line 1724
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v4}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setPadding(IIII)V

    .line 1726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuViewPagerisExpended:Z

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private getCaptureModes()V
    .locals 4

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "user_capture_mode_order_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1135
    if-eqz v0, :cond_2

    .line 1137
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1138
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 1140
    aget-object v3, v2, v1

    .line 1141
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    .line 1142
    if-eqz v0, :cond_1

    .line 1143
    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1144
    :cond_1
    const-string v0, "Main Camera (Photo) Mode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;

    const-string v3, "Main Camera Capture Mode"

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    .line 1147
    if-eqz v0, :cond_0

    .line 1148
    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1153
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 1157
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    .line 1158
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1159
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1161
    :cond_4
    return-void
.end method

.method private getNearestViewPosition(IIZ)I
    .locals 9

    .prologue
    const/4 v4, -0x1

    .line 1534
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getLeft()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1535
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1536
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_2

    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 1555
    :cond_2
    return v4

    .line 1541
    :cond_3
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    .line 1542
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CameraMenuUI;->getViewPage(I)Landroid/view/ViewGroup;

    move-result-object v6

    .line 1543
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_0
    if-ltz v5, :cond_2

    .line 1545
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1546
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    int-to-double v7, v1

    .line 1547
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    int-to-double v0, v0

    .line 1548
    mul-double/2addr v7, v7

    mul-double/2addr v0, v0

    add-double/2addr v0, v7

    .line 1549
    cmpg-double v7, v0, v2

    if-gez v7, :cond_4

    .line 1552
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v2, v5

    .line 1543
    :goto_1
    add-int/lit8 v3, v5, -0x1

    move v5, v3

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_4
    move-wide v0, v2

    move v2, v4

    goto :goto_1
.end method

.method private getViewLocation(I)[I
    .locals 8

    .prologue
    const v7, 0x7f0a04b6

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1560
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1561
    rem-int/lit8 v1, p1, 0x6

    .line 1562
    rem-int/lit8 v2, v1, 0x3

    .line 1563
    div-int/lit8 v1, v1, 0x3

    .line 1564
    const v3, 0x7f0a04b3

    invoke-virtual {p0, v3}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v3

    mul-int/2addr v3, v2

    const v4, 0x7f0a04b5

    invoke-virtual {p0, v4}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v4

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    aput v2, v0, v5

    .line 1565
    const v2, 0x7f0a04b4

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p0, v7}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v3

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, v7}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 1566
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 1567
    aput v5, v0, v6

    .line 1569
    :cond_0
    return-object v0
.end method

.method private getViewPage(I)Landroid/view/ViewGroup;
    .locals 4

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getChildCount()I

    move-result v2

    .line 1576
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1578
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1579
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1582
    :goto_1
    return-object v0

    .line 1576
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1582
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hideGridUIAnimation()V
    .locals 4

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1441
    :goto_0
    return-void

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1430
    const/16 v0, 0x1c2

    .line 1431
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1433
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 1434
    const/16 v0, 0x2ee

    .line 1436
    :cond_1
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1437
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x40733333    # 3.8f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1438
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 1439
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 1440
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private initMenuList()V
    .locals 8

    .prologue
    .line 1203
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1204
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 1205
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1208
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1210
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 1214
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1216
    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->isUserDefined()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1217
    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getSmallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v7, v0}, Lcom/htc/camera/component/CameraMenuUI$MenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1220
    :cond_2
    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getSmallIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v7, v0}, Lcom/htc/camera/component/CameraMenuUI$MenuItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1223
    :cond_3
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1224
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCaptureModes()V

    .line 1226
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    :goto_1
    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    .line 1227
    return-void

    .line 1226
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuTable:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method private isBelongToCurrentPage(I)Z
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/component/CameraMenuUI;->isBelongToCurrentPage(II)Z

    move-result v0

    return v0
.end method

.method private isBelongToCurrentPage(II)Z
    .locals 1

    .prologue
    .line 1501
    mul-int/lit8 v0, p2, 0x6

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    mul-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_0

    .line 1502
    const/4 v0, 0x1

    .line 1503
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openCameraMenuUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 560
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->setupUI()V

    .line 561
    invoke-direct {p0, v4}, Lcom/htc/camera/component/CameraMenuUI;->expendMenuViewPager(Z)V

    .line 563
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsRelayoutNeeded:Z

    if-eqz v0, :cond_0

    .line 565
    iput-boolean v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsRelayoutNeeded:Z

    .line 566
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    const-string v2, "onEventReceived() - Force updating layout"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->notifyDataSetChanged()V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ShowSystemBarHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->showNavigationBar()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ShowSystemBarHandle:Lcom/htc/camera/Handle;

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsPreviewStoppedByCameraMenu:Z

    .line 575
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsPreviewStoppedByCameraMenu:Z

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    const-string v2, "onEventReceived() - Stop preview for capture mode change first"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->stopPreview()V

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 582
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 584
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->updateHighlightItem()V

    .line 585
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->updatePageIndicatorState()V

    .line 587
    sget-object v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;->OPEN:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    .line 588
    iput-boolean v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsCaptureModeChanged:Z

    .line 590
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_4

    .line 591
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mManageCam_EnterexitSoundHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v2, v3, v3}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 593
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->showGridUIAnimation()V

    .line 596
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/camera/component/CameraMenuUI;->showUI(Landroid/view/View;ZZ)V

    .line 598
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 599
    instance-of v2, v0, Lcom/htc/camera/effect/HdrScene;

    if-nez v2, :cond_5

    instance-of v2, v0, Lcom/htc/camera/effect/EisScene;

    if-nez v2, :cond_5

    instance-of v0, v0, Lcom/htc/camera/manualcapture/ManualCaptureScene;

    if-eqz v0, :cond_6

    .line 602
    :cond_5
    iput-boolean v4, p0, Lcom/htc/camera/component/CameraMenuUI;->m_NeedWaitFirstFrameReady:Z

    .line 607
    :goto_0
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->closeCaptureUI()V

    .line 610
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->cameraMenuState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 611
    return-void

    .line 605
    :cond_6
    iput-boolean v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_NeedWaitFirstFrameReady:Z

    goto :goto_0
.end method

.method private pointToViewPosition(IIZ)I
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 1508
    .line 1509
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getLeft()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1510
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 1511
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_2

    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 1528
    :cond_2
    :goto_0
    return v2

    .line 1514
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CameraMenuUI;->getViewPage(I)Landroid/view/ViewGroup;

    move-result-object v3

    .line 1515
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pointToViewPosition page: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v4}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " child count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    const/4 v0, 0x0

    move v1, v2

    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 1518
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1519
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt p1, v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    if-gt p1, v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt p2, v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v5

    if-gt p2, v4, :cond_4

    .line 1520
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    .line 1516
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1523
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_6

    .line 1527
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pointToViewPosition block: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v2, v1

    goto :goto_2
.end method

.method private reorderGridView(I)V
    .locals 4

    .prologue
    .line 1240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimating:Z

    .line 1242
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    if-lt p1, v0, :cond_3

    .line 1244
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CameraMenuUI;->isBelongToCurrentPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1245
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    .line 1248
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reorderGridView move left from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endpos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    if-ge p1, v0, :cond_2

    .line 1251
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    iget v1, p0, Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->viewAnimation(II)V

    .line 1272
    :cond_0
    return-void

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    goto :goto_0

    .line 1255
    :cond_2
    :goto_1
    if-lt p1, v0, :cond_0

    .line 1257
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/htc/camera/component/CameraMenuUI;->viewAnimation(II)V

    .line 1255
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 1260
    :cond_3
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    if-ge p1, v0, :cond_0

    .line 1262
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CameraMenuUI;->isBelongToCurrentPage(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1263
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    .line 1266
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reorderGridView move right from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endpos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :goto_3
    if-gt p1, v0, :cond_0

    .line 1269
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/htc/camera/component/CameraMenuUI;->viewAnimation(II)V

    .line 1267
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1265
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private scaleAnimation(IFFI)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1380
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scaleAnimation pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_DragState:Lcom/htc/camera/component/CameraMenuUI$DragState;

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$DragState;->DRAG_TO_REORDER:Lcom/htc/camera/component/CameraMenuUI$DragState;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/camera/component/CameraMenuUI;->isBelongToCurrentPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CameraMenuUI;->cloneView(I)Landroid/view/View;

    move-result-object v0

    .line 1384
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1385
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1386
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1387
    int-to-long v4, p4

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1388
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v4, 0x40733333    # 3.8f

    invoke-direct {v2, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1389
    invoke-virtual {v1, p3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 1390
    invoke-virtual {v1, p3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 1391
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1392
    const/16 v2, 0x2711

    new-array v5, v8, [Ljava/lang/Object;

    iget v1, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    aput-object v0, v5, v6

    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    int-to-long v6, p4

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/CameraMenuUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    .line 1396
    :goto_0
    return-void

    .line 1395
    :cond_0
    const/16 v2, 0x2711

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x0

    aput-object v0, v5, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    int-to-long v6, p4

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/CameraMenuUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    goto :goto_0
.end method

.method private scrollDown()V
    .locals 3

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setCurrentItem(IZ)V

    .line 1453
    :cond_0
    return-void
.end method

.method private scrollUp()V
    .locals 3

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setCurrentItem(IZ)V

    .line 1447
    :cond_0
    return-void
.end method

.method private sendCloseMenuMessage(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 539
    const/4 v3, 0x1

    .line 540
    if-eqz p1, :cond_0

    move v3, v4

    .line 542
    :cond_0
    const/16 v2, 0x2717

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/CameraMenuUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 543
    return-void
.end method

.method private setCaptureMode(IZZ)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1624
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", "

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1627
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Invalid item position"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 1694
    :goto_0
    return v0

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->OPEN:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    if-eq v0, v1, :cond_1

    .line 1636
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureMode() - Menu state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 1637
    goto :goto_0

    .line 1641
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ClosingBlockHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 1643
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_BlockManager:Lcom/htc/camera/w;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ClosingBlockHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 1644
    iput-object v8, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ClosingBlockHandle:Lcom/htc/camera/Handle;

    .line 1648
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    iget-object v3, v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mItemName:Ljava/lang/String;

    .line 1650
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1651
    if-eqz v0, :cond_a

    .line 1653
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_a

    .line 1655
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 1656
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1663
    :goto_2
    if-nez v1, :cond_4

    .line 1665
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureMode() - Cannot find capture mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 1666
    goto/16 :goto_0

    .line 1653
    :cond_3
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 1670
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCaptureMode() - Change capture mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v7

    .line 1672
    :goto_3
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v2, v1}, Lcom/htc/camera/capturemode/ICaptureModeManager;->setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1674
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCaptureMode() - Fail to switch capture mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 1675
    goto/16 :goto_0

    :cond_5
    move v0, v6

    .line 1671
    goto :goto_3

    .line 1677
    :cond_6
    iput-boolean v7, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsCaptureModeChanged:Z

    .line 1680
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CameraMenuUI;->setHighlighItem(I)V

    .line 1683
    if-nez p2, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_8

    .line 1684
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->mManagecam_TapHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1, v6, v6}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 1687
    :cond_8
    if-eqz p3, :cond_9

    .line 1689
    sget-object v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;->CLOSING:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    .line 1690
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->closeCameraMenuUI()V

    :cond_9
    move v0, v7

    .line 1694
    goto/16 :goto_0

    :cond_a
    move-object v1, v8

    goto/16 :goto_2
.end method

.method private setHighlighItem(I)V
    .locals 3

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    if-nez v0, :cond_0

    .line 1360
    :goto_0
    return-void

    .line 1355
    :cond_0
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mHighlightPosition:I

    iget v1, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mHighlightPosition:I

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1356
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mHighlightPosition:I

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_Shape:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->setMenuItemBackground(ILandroid/graphics/drawable/Drawable;Z)V

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_HighlightShape:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->setMenuItemBackground(ILandroid/graphics/drawable/Drawable;Z)V

    .line 1359
    iput p1, p0, Lcom/htc/camera/component/CameraMenuUI;->mHighlightPosition:I

    goto :goto_0
.end method

.method private setMenuItemBackground(ILandroid/graphics/drawable/Drawable;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1364
    move v0, v1

    move v2, v1

    .line 1365
    :goto_0
    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v3}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1366
    invoke-direct {p0, p1, v0}, Lcom/htc/camera/component/CameraMenuUI;->isBelongToCurrentPage(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    .line 1365
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1369
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v0

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    sget-object v3, Lcom/htc/camera/component/CameraMenuUI$MenuState;->CLOSED:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    if-ne v0, v3, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0, v2, v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setCurrentItem(IZ)V

    .line 1372
    :cond_2
    invoke-direct {p0, v2}, Lcom/htc/camera/component/CameraMenuUI;->getViewPage(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1373
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMenuItemBackground page: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v3, p1, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    rem-int/lit8 v1, p1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1375
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1376
    return-void
.end method

.method private setupUI()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 905
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    if-eqz v0, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 908
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->initMenuList()V

    .line 910
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 911
    const v0, 0x7f0e00d7

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 912
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuContainer:Landroid/view/ViewGroup;

    .line 913
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0e0156

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    .line 914
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuViewPagerPaddingTop:I

    .line 915
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuViewPagerPaddingBottom:I

    .line 916
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->expendMenuViewPager()V

    .line 917
    new-instance v0, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;-><init>(Lcom/htc/camera/component/CameraMenuUI;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    .line 918
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mGestureDetectorListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 919
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setAdapter(Lcom/htc/lib1/cc/view/viewpager/HtcPagerAdapter;)V

    .line 920
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setOrientation(I)V

    .line 921
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 922
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0, v6}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setOffscreenPageLimit(I)V

    .line 924
    const v0, 0x7f0e0153

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_DeleteIconContainer:Landroid/widget/LinearLayout;

    .line 925
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_DeleteIconContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 926
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_DeleteIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CameraMenuUI;->showUI(Landroid/view/View;ZZ)V

    .line 928
    const v0, 0x7f0e0157

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicatorContainer:Landroid/widget/LinearLayout;

    .line 929
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicator:[Landroid/widget/ImageView;

    .line 930
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicator:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicatorContainer:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0158

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v4

    .line 931
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicator:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicatorContainer:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0159

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v5

    .line 932
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicator:[Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicatorContainer:Landroid/widget/LinearLayout;

    const v3, 0x7f0e015a

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v6

    .line 934
    const v0, 0x7f0e0152

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ScrollUpView:Landroid/view/View;

    .line 935
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ScrollUpView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 937
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const v2, 0x7f0e015b

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ScrollDownView:Landroid/view/View;

    .line 938
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ScrollDownView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 940
    const v0, 0x7f0e015c

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    .line 943
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget-boolean v0, v0, Lcom/htc/camera/ScreenResolution;->hasNavigationBar:Z

    if-eqz v0, :cond_1

    .line 946
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v2, v0, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    .line 947
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 948
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 949
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->requestLayout()V

    .line 952
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 953
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 954
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 957
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_DeleteIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 958
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 959
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_DeleteIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$19;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraMenuUI$19;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setOnPageChangeListener(Lcom/htc/lib1/cc/view/viewpager/e;)V

    .line 980
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$20;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraMenuUI$20;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1021
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$21;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/component/CameraMenuUI$21;-><init>(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private shinkMenuViewPager()V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 1731
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuViewPagerisExpended:Z

    if-nez v0, :cond_0

    .line 1753
    :goto_0
    return-void

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1737
    const v2, 0x7f0a04b8

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1738
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v4, :cond_1

    .line 1739
    const v2, 0x7f0a04b4

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1740
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1743
    iget v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuViewPagerPaddingTop:I

    .line 1744
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuViewPagerPaddingBottom:I

    .line 1745
    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_MenuList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v4, :cond_2

    move v0, v1

    move v2, v1

    .line 1750
    :cond_2
    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v4}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getPaddingRight()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5, v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->setPadding(IIII)V

    .line 1752
    iput-boolean v1, p0, Lcom/htc/camera/component/CameraMenuUI;->mMenuViewPagerisExpended:Z

    goto :goto_0
.end method

.method private showGridUIAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1414
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1423
    :goto_0
    return-void

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1417
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1418
    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1419
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x40733333    # 3.8f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1420
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 1421
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 1422
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private translateAnimation(III)V
    .locals 4

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    const-string v1, "translate animation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    invoke-direct {p0, p2}, Lcom/htc/camera/component/CameraMenuUI;->getViewLocation(I)[I

    move-result-object v0

    .line 1402
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/camera/component/CameraMenuUI;->getViewPage(I)Landroid/view/ViewGroup;

    move-result-object v1

    .line 1403
    rem-int/lit8 v2, p1, 0x6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1404
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1405
    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1406
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x40733333    # 3.8f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1407
    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 1408
    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 1409
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1410
    return-void
.end method

.method private updateButtonStates()V
    .locals 3

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1458
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    .line 1460
    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    .line 1463
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenubtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1464
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenubtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1465
    :cond_1
    return-void
.end method

.method private updateCaptureModes()V
    .locals 4

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1122
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1123
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 1125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1126
    const/16 v0, 0x3b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    iget-object v0, v0, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mItemName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1129
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "user_capture_mode_order_list"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateHighlightItem()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1333
    .line 1334
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 1335
    if-nez v0, :cond_0

    .line 1337
    invoke-direct {p0, v1}, Lcom/htc/camera/component/CameraMenuUI;->setHighlighItem(I)V

    .line 1348
    :goto_0
    return-void

    .line 1341
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    if-eqz v2, :cond_2

    move v2, v1

    move v3, v1

    .line 1343
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 1344
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    iget-object v1, v1, Lcom/htc/camera/component/CameraMenuUI$MenuItem;->mItemName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v2

    .line 1343
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1347
    :cond_3
    invoke-direct {p0, v3}, Lcom/htc/camera/component/CameraMenuUI;->setHighlighItem(I)V

    goto :goto_0
.end method

.method private updatePageIndicatorState()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 1469
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1471
    :goto_0
    if-ge v1, v5, :cond_5

    .line 1472
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicator:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicator:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1471
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1477
    :goto_1
    if-ge v0, v5, :cond_5

    .line 1479
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v2}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1481
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicator:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1482
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicator:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1483
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 1484
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicator:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f020156

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1477
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1486
    :cond_3
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicator:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f020155

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1489
    :cond_4
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_PageIndicator:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1492
    :cond_5
    return-void
.end method

.method private viewAnimation(II)V
    .locals 5

    .prologue
    const/16 v4, 0x28a

    const/4 v3, 0x0

    .line 1276
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewAnimation start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " drag pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDropPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I

    if-ne p1, v0, :cond_1

    .line 1280
    const v0, 0x3f666666    # 0.9f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/htc/camera/component/CameraMenuUI;->scaleAnimation(IFFI)V

    .line 1281
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    iget v1, p0, Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I

    if-ne v0, v1, :cond_2

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    if-eq p1, v0, :cond_0

    .line 1288
    :cond_2
    invoke-direct {p0, p2}, Lcom/htc/camera/component/CameraMenuUI;->isBelongToCurrentPage(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1289
    invoke-direct {p0, p1, p2, v4}, Lcom/htc/camera/component/CameraMenuUI;->translateAnimation(III)V

    .line 1296
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->mManageCam_PaginationSoundHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1, v3, v3}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 1292
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CameraMenuUI;->getViewPage(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1293
    rem-int/lit8 v1, p1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1294
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 1235
    invoke-super {p0}, Lcom/htc/camera/ICameraMenuUI;->deinitializeOverride()V

    .line 1236
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 467
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 533
    invoke-super {p0, p1}, Lcom/htc/camera/ICameraMenuUI;->handleMessage(Landroid/os/Message;)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 470
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->scrollUp()V

    goto :goto_0

    .line 474
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->scrollDown()V

    goto :goto_0

    .line 478
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    const-string v1, "MSG_SCALE_ANIMATION_FINISHED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 480
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 481
    if-eq v4, v3, :cond_3

    move v1, v2

    move v3, v2

    .line 484
    :goto_1
    iget-object v5, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 485
    invoke-direct {p0, v4, v1}, Lcom/htc/camera/component/CameraMenuUI;->isBelongToCurrentPage(II)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v1

    .line 484
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 488
    :cond_2
    invoke-direct {p0, v3}, Lcom/htc/camera/component/CameraMenuUI;->getViewPage(I)Landroid/view/ViewGroup;

    move-result-object v1

    .line 489
    rem-int/lit8 v3, v4, 0x6

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 490
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 492
    aget-object v1, v0, v6

    check-cast v1, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuContainer:Landroid/view/ViewGroup;

    aget-object v0, v0, v6

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 496
    :cond_3
    iput-boolean v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimating:Z

    .line 497
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->notifyDataSetChanged()V

    .line 500
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->updateHighlightItem()V

    .line 501
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->updateCaptureModes()V

    goto :goto_0

    .line 505
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 506
    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_VIEW_ANIMATION start: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " end: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iput-boolean v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimationFilter:Z

    .line 508
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v3}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 510
    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/component/CameraMenuUI$MenuItem;

    .line 511
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    invoke-virtual {v2, v1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->deleteItem(Lcom/htc/camera/component/CameraMenuUI$MenuItem;)V

    .line 512
    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    aget-object v2, v0, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2, v1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->addItem(ILcom/htc/camera/component/CameraMenuUI$MenuItem;)V

    .line 513
    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/camera/component/CameraMenuUI;->reorderGridView(I)V

    .line 514
    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    goto/16 :goto_0

    .line 519
    :pswitch_4
    iput v3, p0, Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I

    iput v3, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    goto/16 :goto_0

    .line 523
    :pswitch_5
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I

    if-ltz v0, :cond_0

    .line 524
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I

    invoke-direct {p0, v0, v6, v2}, Lcom/htc/camera/component/CameraMenuUI;->setCaptureMode(IZZ)Z

    goto/16 :goto_0

    .line 527
    :pswitch_6
    iget-boolean v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_NeedWaitFirstFrameReady:Z

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    .line 528
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    const-string v1, "wait for first preview callback to close menu"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/component/CameraMenuUI;->closeCameraMenuUI()V

    goto/16 :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 680
    invoke-super {p0}, Lcom/htc/camera/ICameraMenuUI;->initializeOverride()V

    .line 682
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 683
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 685
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/IAudioManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    .line 686
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;

    const-string v2, "linkToOptionalServiceComponents() - Cannot find IAudioManager interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_0
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CameraMenuUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 692
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mManageCam_EnterexitSoundHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v2, 0x7f07000c

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mManageCam_EnterexitSoundHandle:Lcom/htc/camera/Handle;

    .line 695
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v2, 0x7f07000d

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mManageCam_PaginationSoundHandle:Lcom/htc/camera/Handle;

    .line 696
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v2, 0x7f07000e

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mManagecam_TapHandle:Lcom/htc/camera/Handle;

    .line 699
    :cond_1
    const v0, 0x7f0e00f7

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenubtn:Landroid/widget/ImageView;

    .line 700
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenubtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 701
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenubtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraMenuUI$3;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_HighlightShape:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const v2, 0x7f0a04bc

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CameraMenuUI;->getDimension(I)I

    move-result v2

    invoke-static {v1}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getMultiplyColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 718
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isFirstPreviewFrameReceived:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraMenuUI$4;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 728
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraMenuUI$5;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 739
    sget-object v0, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraMenuUI$6;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 748
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraMenuUI$7;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 757
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$8;

    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/HTCCamera;->isCoverClosed:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/CameraMenuUI$8;-><init>(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$9;

    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/CameraMenuUI$9;-><init>(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$10;

    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/CameraMenuUI$10;-><init>(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraMenuUI$11;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 810
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraMenuUI$12;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 820
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CameraMenuUI$13;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CameraMenuUI$13;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 829
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/CameraMenuUI$14;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CameraMenuUI$14;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 844
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeCreatedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/CameraMenuUI$15;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CameraMenuUI$15;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 859
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeChangedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/CameraMenuUI$16;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CameraMenuUI$16;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 868
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_captureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeDeletedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/CameraMenuUI$17;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CameraMenuUI$17;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 889
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_2

    .line 891
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isSingleShotMode:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/component/CameraMenuUI$18;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CameraMenuUI$18;-><init>(Lcom/htc/camera/component/CameraMenuUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 900
    :cond_2
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenubtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/component/CameraMenuUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 1193
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 1198
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/CameraMenuUI;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1199
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1166
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenubtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/CameraMenuUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1168
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_GlobalSettingsBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/CameraMenuUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1170
    iget v0, p0, Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1187
    :cond_0
    return-void

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1175
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1177
    invoke-direct {p0, v0}, Lcom/htc/camera/component/CameraMenuUI;->getViewPage(I)Landroid/view/ViewGroup;

    move-result-object v3

    move v2, v1

    .line 1179
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1181
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1182
    invoke-virtual {p0, v4, p2}, Lcom/htc/camera/component/CameraMenuUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1179
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1175
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method updateCameraMenuButtonVisibility()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1097
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1098
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenubtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/CameraMenuUI;->showUI(Landroid/view/View;ZZ)V

    .line 1115
    :goto_0
    return-void

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isSingleShotMode:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenubtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/component/CameraMenuUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1114
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenubtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/component/CameraMenuUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
