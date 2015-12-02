.class public Lcom/htc/camera/menu/PopupIconMenu;
.super Ljava/lang/Object;
.source "PopupIconMenu.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private m_Context:Lcom/htc/camera/HTCCamera;

.field private m_FloatingHintHandle:Lcom/htc/camera/Handle;

.field private m_FloatingMenuHint:Lcom/htc/camera/y;

.field private m_IconMenu:Lcom/htc/camera/menu/IconMenu;

.field private m_IsDispose:Z

.field private m_ItemRotationInDegree:I

.field private m_OnIconMenuLayoutListener:Lcom/htc/camera/menu/c;

.field private m_OnPopupIconMenuClosedListener:Lcom/htc/camera/menu/g;

.field private m_Owner:Landroid/view/View;

.field private m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

.field private m_SelectedItemChangedListener:Lcom/htc/camera/menu/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "PopupIconMenu"

    sput-object v0, Lcom/htc/camera/menu/PopupIconMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/htc/camera/menu/PopupIconMenu$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/menu/PopupIconMenu$1;-><init>(Lcom/htc/camera/menu/PopupIconMenu;)V

    iput-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_SelectedItemChangedListener:Lcom/htc/camera/menu/d;

    .line 56
    new-instance v0, Lcom/htc/camera/menu/PopupIconMenu$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/menu/PopupIconMenu$2;-><init>(Lcom/htc/camera/menu/PopupIconMenu;)V

    iput-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_OnIconMenuLayoutListener:Lcom/htc/camera/menu/c;

    .line 79
    iput-object p1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    .line 81
    new-instance v0, Lcom/htc/camera/menu/IconMenu;

    iget-object v1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1}, Lcom/htc/camera/menu/IconMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    .line 82
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    iget-object v1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_SelectedItemChangedListener:Lcom/htc/camera/menu/d;

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/IconMenu;->setOnIconMenuSelectedItemChangedListener(Lcom/htc/camera/menu/d;)V

    .line 83
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    iget-object v1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_OnIconMenuLayoutListener:Lcom/htc/camera/menu/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/IconMenu;->setOnIconMenuLayoutListener(Lcom/htc/camera/menu/c;)V

    .line 85
    iput-object p2, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_Owner:Landroid/view/View;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/menu/PopupIconMenu;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/menu/PopupIconMenu;)Lcom/htc/camera/y;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingMenuHint:Lcom/htc/camera/y;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/menu/PopupIconMenu;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingHintHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/camera/menu/PopupIconMenu;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingHintHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/camera/menu/PopupIconMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/menu/PopupIconMenu;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IsDispose:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/camera/menu/PopupIconMenu;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->showTextHint()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/menu/PopupIconMenu;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->notifyPopupIconMenuClosed()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/menu/PopupIconMenu;)Lcom/htc/camera/HTCCamera;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/menu/PopupIconMenu;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->dispose()V

    return-void
.end method

.method private checkAccessibility()V
    .locals 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IsDispose:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/htc/camera/menu/PopupIconMenu;->TAG:Ljava/lang/String;

    const-string v1, "checkAccessibility() - Already disposed, should not use this object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 98
    :cond_0
    return-void
.end method

.method private dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    .line 127
    sget-object v0, Lcom/htc/camera/menu/PopupIconMenu;->TAG:Ljava/lang/String;

    const-string v1, "dispose() -  Menu dispose"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->hideTextHint()V

    .line 133
    iput-object v2, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_SelectedItemChangedListener:Lcom/htc/camera/menu/d;

    .line 134
    iput-object v2, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_OnPopupIconMenuClosedListener:Lcom/htc/camera/menu/g;

    .line 137
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    invoke-virtual {v0}, Lcom/htc/camera/menu/IconMenu;->dispose()V

    .line 140
    iput-object v2, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    .line 144
    :cond_0
    iput-object v2, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingMenuHint:Lcom/htc/camera/y;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IsDispose:Z

    .line 147
    return-void
.end method

.method private hideTextHint()V
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    .line 179
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingMenuHint:Lcom/htc/camera/y;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingMenuHint:Lcom/htc/camera/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/y;->hideFloatingHint(Lcom/htc/camera/Handle;)V

    .line 181
    :cond_0
    return-void
.end method

.method private notifyPopupIconMenuClosed()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    .line 191
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_OnPopupIconMenuClosedListener:Lcom/htc/camera/menu/g;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_OnPopupIconMenuClosedListener:Lcom/htc/camera/menu/g;

    invoke-interface {v0, p0}, Lcom/htc/camera/menu/g;->onPopupIconMenuClosed(Lcom/htc/camera/menu/PopupIconMenu;)V

    .line 193
    :cond_0
    return-void
.end method

.method private showTextHint()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 328
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    .line 331
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingMenuHint:Lcom/htc/camera/y;

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/y;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/y;

    iput-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingMenuHint:Lcom/htc/camera/y;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingMenuHint:Lcom/htc/camera/y;

    if-eqz v0, :cond_2

    .line 339
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 340
    iget-object v1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/IconMenu;->getLocationOnScreen([I)V

    .line 341
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    iget-object v5, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    invoke-virtual {v5}, Lcom/htc/camera/menu/IconMenu;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    iget-object v5, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    invoke-virtual {v5}, Lcom/htc/camera/menu/IconMenu;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 344
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    invoke-virtual {v0}, Lcom/htc/camera/menu/IconMenu;->getSelectedItem()Lcom/htc/camera/menu/IconMenuItem;

    move-result-object v0

    .line 345
    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingMenuHint:Lcom/htc/camera/y;

    iget-object v1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingHintHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/y;->hideFloatingHint(Lcom/htc/camera/Handle;)V

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingMenuHint:Lcom/htc/camera/y;

    invoke-virtual {v0}, Lcom/htc/camera/menu/IconMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/htc/camera/y;->showFloatingHint(Landroid/graphics/Rect;Ljava/lang/String;)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 352
    :cond_2
    sget-object v0, Lcom/htc/camera/menu/PopupIconMenu;->TAG:Ljava/lang/String;

    const-string v1, "open() - No IFloatingMenuHint component"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    .line 108
    sget-object v0, Lcom/htc/camera/menu/PopupIconMenu;->TAG:Ljava/lang/String;

    const-string v1, "close() -  Close popup menu"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    invoke-virtual {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->removeAllViews()V

    .line 114
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    invoke-virtual {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->dismiss()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    .line 117
    :cond_0
    return-void
.end method

.method public getCurrentScrollPosition()I
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    .line 157
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    invoke-virtual {v0}, Lcom/htc/camera/menu/IconMenu;->getScrollX()I

    move-result v0

    return v0
.end method

.method public open()V
    .locals 3

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    .line 204
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    iget-object v1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    .line 209
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    iget-object v1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    invoke-virtual {v0, v1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setContentView(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0451

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0452

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v2, v2, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    add-int/2addr v1, v2

    .line 212
    iget-object v2, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    invoke-virtual {v2, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setMinPaddingLeft(I)V

    .line 213
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    invoke-virtual {v0, v1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setMinPaddingRight(I)V

    .line 217
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    new-instance v1, Lcom/htc/camera/menu/PopupIconMenu$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/menu/PopupIconMenu$3;-><init>(Lcom/htc/camera/menu/PopupIconMenu;)V

    invoke-virtual {v0, v1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setOnDismissListener(Ldev/htc/camerapopupcontainerlibrary/widget/a;)V

    .line 231
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    new-instance v1, Lcom/htc/camera/menu/PopupIconMenu$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/menu/PopupIconMenu$4;-><init>(Lcom/htc/camera/menu/PopupIconMenu;)V

    invoke-virtual {v0, v1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setOnOpenListener(Ldev/htc/camerapopupcontainerlibrary/widget/b;)V

    .line 242
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    new-instance v1, Lcom/htc/camera/menu/PopupIconMenu$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/menu/PopupIconMenu$5;-><init>(Lcom/htc/camera/menu/PopupIconMenu;)V

    invoke-virtual {v0, v1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setOnOutsideTouchListener(Ldev/htc/camerapopupcontainerlibrary/widget/c;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->popupOpeningEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 260
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_PopupBubble:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    iget-object v1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_Owner:Landroid/view/View;

    invoke-virtual {v0, v1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->showAsDropDown(Landroid/view/View;)V

    .line 261
    return-void
.end method

.method public setIconMenuItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/menu/IconMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    .line 271
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    invoke-virtual {v0, p1}, Lcom/htc/camera/menu/IconMenu;->setItems(Ljava/util/List;)V

    .line 272
    return-void
.end method

.method public setInitScrollPosition(I)V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    .line 168
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    invoke-virtual {v0, p1}, Lcom/htc/camera/menu/IconMenu;->setInitialScrollPosition(I)V

    .line 169
    return-void
.end method

.method public setItemRotation(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    .line 283
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    iget v1, p1, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_ItemRotationInDegree:I

    .line 286
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    iget v1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_ItemRotationInDegree:I

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/IconMenu;->setItemRotation(I)V

    .line 288
    :cond_0
    return-void
.end method

.method public setOnIconMenuClickListener(Lcom/htc/camera/menu/b;)V
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    .line 298
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    invoke-virtual {v0, p1}, Lcom/htc/camera/menu/IconMenu;->setOnIconMenuClickListener(Lcom/htc/camera/menu/b;)V

    .line 300
    :cond_0
    return-void
.end method

.method public setOnPopupIconMenuClosedListener(Lcom/htc/camera/menu/g;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V

    .line 310
    iput-object p1, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_OnPopupIconMenuClosedListener:Lcom/htc/camera/menu/g;

    .line 311
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu;->m_IconMenu:Lcom/htc/camera/menu/IconMenu;

    invoke-virtual {v0, p1}, Lcom/htc/camera/menu/IconMenu;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 320
    :cond_0
    return-void
.end method
