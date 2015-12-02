.class public final Lcom/htc/camera/widget/PopupBubble;
.super Ljava/lang/Object;
.source "PopupBubble.java"


# instance fields
.field private m_Anchor:Landroid/view/View;

.field private final m_ContentContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_ContentRotation:Lcom/htc/camera/rotate/UIRotation;

.field private final m_Context:Landroid/content/Context;

.field private m_ExpandDirection:Lcom/htc/camera/widget/PopupBubble$ExpandDirection;

.field private m_Height:I

.field private m_IsReopeningWindow:Z

.field private m_OnClosedListener:Lcom/htc/camera/widget/h;

.field private m_OnOpenListener:Lcom/htc/camera/widget/i;

.field private m_OnOutsideTouchListener:Lcom/htc/camera/widget/j;

.field private m_Width:I

.field private m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

.field private m_XOffset:I

.field private m_YOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 69
    sget-object v0, Lcom/htc/camera/widget/PopupBubble$ExpandDirection;->Default:Lcom/htc/camera/widget/PopupBubble$ExpandDirection;

    iput-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_ExpandDirection:Lcom/htc/camera/widget/PopupBubble$ExpandDirection;

    .line 70
    iput v2, p0, Lcom/htc/camera/widget/PopupBubble;->m_Height:I

    .line 76
    iput v2, p0, Lcom/htc/camera/widget/PopupBubble;->m_Width:I

    .line 87
    new-instance v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-direct {v0, p1}, Lcom/htc/camera/rotate/RotateRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 90
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iput-object p1, p0, Lcom/htc/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/widget/PopupBubble;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/camera/widget/PopupBubble;Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/camera/widget/PopupBubble;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_IsReopeningWindow:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/widget/PopupBubble;)Lcom/htc/camera/widget/h;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_OnClosedListener:Lcom/htc/camera/widget/h;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/widget/PopupBubble;)Landroid/view/View;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Anchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/widget/PopupBubble;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_XOffset:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/camera/widget/PopupBubble;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_YOffset:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/camera/widget/PopupBubble;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/widget/PopupBubble;)Lcom/htc/camera/widget/j;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_OnOutsideTouchListener:Lcom/htc/camera/widget/j;

    return-object v0
.end method

.method private convertToWindowLayoutSize(I)I
    .locals 0

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 121
    const/4 p1, 0x0

    :pswitch_0
    return p1

    .line 115
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private reopenWindow()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_IsReopeningWindow:Z

    .line 291
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dismiss()V

    .line 292
    return-void
.end method

.method private updateWindowSize()V
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    invoke-direct {p0}, Lcom/htc/camera/widget/PopupBubble;->reopenWindow()V

    goto :goto_0

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/htc/camera/widget/PopupBubble;->m_Width:I

    invoke-direct {p0, v1}, Lcom/htc/camera/widget/PopupBubble;->convertToWindowLayoutSize(I)I

    move-result v1

    iget v2, p0, Lcom/htc/camera/widget/PopupBubble;->m_Height:I

    invoke-direct {p0, v2}, Lcom/htc/camera/widget/PopupBubble;->convertToWindowLayoutSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    .line 447
    iget v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Width:I

    if-lez v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/htc/camera/widget/PopupBubble;->m_Width:I

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setWidth(I)V

    .line 449
    :cond_3
    iget v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Height:I

    if-lez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/htc/camera/widget/PopupBubble;->m_Height:I

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setHeight(I)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 107
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dismiss()V

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Landroid/view/View;II)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HTCCheckContentViewParent"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 162
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    .line 169
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 172
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 173
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setFocusable(Z)V

    .line 174
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setTouchable(Z)V

    .line 175
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/camera/widget/PopupBubble;->m_ExpandDirection:Lcom/htc/camera/widget/PopupBubble$ExpandDirection;

    iget v1, v1, Lcom/htc/camera/widget/PopupBubble$ExpandDirection;->value:I

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setExpandDirection(I)V

    .line 177
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    .line 178
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setClipToScreenEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    new-instance v1, Lcom/htc/camera/widget/PopupBubble$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/widget/PopupBubble$1;-><init>(Lcom/htc/camera/widget/PopupBubble;)V

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/lib1/cc/widget/as;)V

    .line 203
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    new-instance v1, Lcom/htc/camera/widget/PopupBubble$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/widget/PopupBubble$2;-><init>(Lcom/htc/camera/widget/PopupBubble;)V

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 234
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setFocusable(Z)V

    .line 235
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setFocusableInTouchMode(Z)V

    .line 237
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    new-instance v1, Lcom/htc/camera/widget/PopupBubble$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/widget/PopupBubble$3;-><init>(Lcom/htc/camera/widget/PopupBubble;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 261
    invoke-direct {p0}, Lcom/htc/camera/widget/PopupBubble;->updateWindowSize()V

    .line 263
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;

    instance-of v0, v0, Lcom/htc/camera/HTCCamera;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->notifyPopupBubbleOpened()V

    .line 267
    :cond_1
    iput-object p1, p0, Lcom/htc/camera/widget/PopupBubble;->m_Anchor:Landroid/view/View;

    .line 268
    iput p2, p0, Lcom/htc/camera/widget/PopupBubble;->m_XOffset:I

    .line 269
    iput p3, p0, Lcom/htc/camera/widget/PopupBubble;->m_YOffset:I

    .line 270
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 273
    iget-boolean v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_IsReopeningWindow:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_OnOpenListener:Lcom/htc/camera/widget/i;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_OnOpenListener:Lcom/htc/camera/widget/i;

    invoke-interface {v0, p0}, Lcom/htc/camera/widget/i;->onOpen(Lcom/htc/camera/widget/PopupBubble;)V

    .line 275
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_IsReopeningWindow:Z

    goto/16 :goto_0
.end method

.method public setContentRotation(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 299
    iput-object p1, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 300
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/htc/camera/widget/PopupBubble;->reopenWindow()V

    .line 302
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 309
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/widget/PopupBubble;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 314
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->removeAllViews()V

    .line 317
    if-eqz p1, :cond_2

    .line 320
    instance-of v0, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 322
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 323
    if-eqz p2, :cond_3

    .line 325
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 326
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 327
    instance-of v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 329
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 330
    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    :goto_0
    move-object p2, v0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    :cond_2
    return-void

    .line 340
    :cond_3
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 341
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method public final setExpandDirection(Lcom/htc/camera/widget/PopupBubble$ExpandDirection;)V
    .locals 1

    .prologue
    .line 357
    iput-object p1, p0, Lcom/htc/camera/widget/PopupBubble;->m_ExpandDirection:Lcom/htc/camera/widget/PopupBubble$ExpandDirection;

    .line 360
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/htc/camera/widget/PopupBubble;->reopenWindow()V

    .line 362
    :cond_0
    return-void
.end method

.method public setOnClosedListener(Lcom/htc/camera/widget/h;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/htc/camera/widget/PopupBubble;->m_OnClosedListener:Lcom/htc/camera/widget/h;

    .line 370
    return-void
.end method

.method public setOnOpenListener(Lcom/htc/camera/widget/i;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/htc/camera/widget/PopupBubble;->m_OnOpenListener:Lcom/htc/camera/widget/i;

    .line 374
    return-void
.end method

.method public setOnOutsideTouchListener(Lcom/htc/camera/widget/j;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/htc/camera/widget/PopupBubble;->m_OnOutsideTouchListener:Lcom/htc/camera/widget/j;

    .line 378
    return-void
.end method

.method public setSize(II)V
    .locals 2

    .prologue
    const/4 v0, -0x2

    .line 386
    iput p1, p0, Lcom/htc/camera/widget/PopupBubble;->m_Width:I

    .line 387
    iput p2, p0, Lcom/htc/camera/widget/PopupBubble;->m_Height:I

    .line 390
    iget-object v1, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 391
    if-ne p2, v0, :cond_1

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 392
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 395
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_ContentContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 398
    invoke-direct {p0}, Lcom/htc/camera/widget/PopupBubble;->updateWindowSize()V

    .line 400
    :cond_0
    return-void

    .line 391
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setSizeDirectly(II)V
    .locals 1

    .prologue
    .line 408
    iput p1, p0, Lcom/htc/camera/widget/PopupBubble;->m_Width:I

    .line 409
    iput p2, p0, Lcom/htc/camera/widget/PopupBubble;->m_Height:I

    .line 412
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->update(II)V

    .line 417
    :cond_0
    return-void
.end method
