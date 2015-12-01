.class public Lcom/htc/camera/widget/ExpandableMenu;
.super Landroid/view/ViewGroup;
.source "ExpandableMenu.java"


# instance fields
.field m_Handler:Landroid/os/Handler;

.field m_ItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/widget/ExpandableMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field m_ItemMargin:I

.field m_ItemMarginRemainder:F

.field m_ItemSize:I

.field m_ListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/widget/c;",
            ">;"
        }
    .end annotation
.end field

.field m_MenuLeftPadding:I

.field m_MenuRightPadding:I

.field m_TouchListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/widget/d;",
            ">;"
        }
    .end annotation
.end field

.field m_VisibleItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/widget/ExpandableMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0}, Lcom/htc/camera/widget/ExpandableMenu;->initialize()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0}, Lcom/htc/camera/widget/ExpandableMenu;->initialize()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/widget/ExpandableMenu;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/camera/widget/ExpandableMenu;->onItemClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/widget/ExpandableMenu;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/camera/widget/ExpandableMenu;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private createNewIconButtonToItem(Lcom/htc/camera/widget/ExpandableMenuItem;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 125
    new-instance v1, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;-><init>(Lcom/htc/camera/widget/ExpandableMenuItem;Landroid/content/Context;)V

    .line 126
    invoke-virtual {p1}, Lcom/htc/camera/widget/ExpandableMenuItem;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {v1, p1}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->setTag(Ljava/lang/Object;)V

    .line 128
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 129
    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v0, Lcom/htc/camera/widget/ExpandableMenu$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/widget/ExpandableMenu$1;-><init>(Lcom/htc/camera/widget/ExpandableMenu;)V

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {p1}, Lcom/htc/camera/widget/ExpandableMenuItem;->getTitle()Ljava/lang/Object;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 141
    instance-of v2, v0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 142
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    :goto_0
    iput-object v1, p1, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    .line 147
    iput-object p0, p1, Lcom/htc/camera/widget/ExpandableMenuItem;->iconMenu:Lcom/htc/camera/widget/ExpandableMenu;

    .line 148
    iget-object v0, p1, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    invoke-virtual {p1}, Lcom/htc/camera/widget/ExpandableMenuItem;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->setEnabled(Z)V

    .line 149
    iget-object v0, p1, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    invoke-virtual {p1}, Lcom/htc/camera/widget/ExpandableMenuItem;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->setColorOn(Z)V

    .line 151
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 158
    iput-object v0, p1, Lcom/htc/camera/widget/ExpandableMenuItem;->iconContainer:Landroid/widget/RelativeLayout;

    .line 159
    return-void

    .line 143
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 190
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/widget/ExpandableMenu;->onAddingItemFinished()V

    goto :goto_0

    .line 195
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/widget/ExpandableMenu;->onInflatingLayout()V

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->requestLayout()V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    const-string v0, "ExpandableMenu"

    const-string v1, "initialize() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/htc/camera/widget/ExpandableMenu$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/widget/ExpandableMenu$2;-><init>(Lcom/htc/camera/widget/ExpandableMenu;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_Handler:Landroid/os/Handler;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_VisibleItemList:Ljava/util/List;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ListenerList:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_TouchListenerList:Ljava/util/List;

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/ExpandableMenu;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iput v2, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_MenuLeftPadding:I

    .line 227
    iput v2, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_MenuRightPadding:I

    .line 228
    iput v2, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMarginRemainder:F

    .line 232
    const-string v0, "ExpandableMenu"

    const-string v1, "initialize() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private onAddingItemFinished()V
    .locals 2

    .prologue
    .line 260
    const-string v0, "ExpandableMenu"

    const-string v1, "onAddingItemFinished() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->requestLayout()V

    .line 262
    const-string v0, "ExpandableMenu"

    const-string v1, "onAddingItemFinished() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method private onInflatingLayout()V
    .locals 3

    .prologue
    .line 270
    const-string v0, "ExpandableMenu"

    const-string v1, "onInflatingLayout() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const-string v0, "ExpandableMenu"

    const-string v1, "onInflatingLayout() - layout hasn\'t been inflated, keep trying"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->d(Landroid/os/Handler;I)V

    .line 281
    :goto_0
    const-string v0, "ExpandableMenu"

    const-string v1, "onInflatingLayout() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void

    .line 278
    :cond_0
    const-string v0, "ExpandableMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInflatingLayout() - size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/htc/camera/widget/ExpandableMenu;->updateItemsPosition()V

    goto :goto_0
.end method

.method private onItemClicked(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ExpandableMenuItem;

    .line 290
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ListenerList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/widget/c;

    invoke-interface {v1, v0}, Lcom/htc/camera/widget/c;->onClick(Lcom/htc/camera/widget/ExpandableMenuItem;)V

    .line 290
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method private updateItemsPosition()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 497
    const-string v0, "ExpandableMenu"

    const-string v1, "updateItemsPosition() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 499
    :cond_0
    const-string v0, "ExpandableMenu"

    const-string v1, "updateItemsPosition() - items is null or size is 0"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    move v3, v2

    .line 504
    :goto_1
    if-ge v1, v4, :cond_2

    .line 505
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ExpandableMenuItem;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v3, v0

    .line 504
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getWidth()I

    move-result v0

    sub-int/2addr v0, v3

    mul-int/lit8 v1, v4, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    .line 509
    iget v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    mul-int/lit8 v0, v0, 0x2

    div-int v1, v3, v4

    add-int/2addr v0, v1

    .line 510
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getHeight()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    .line 511
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    mul-int/2addr v1, v4

    sub-int/2addr v0, v1

    mul-int/lit8 v1, v4, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    .line 512
    const-string v0, "ExpandableMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateItemsPosition() - m_ItemSize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", itemMargin = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 517
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 519
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ExpandableMenuItem;

    iget-object v3, v0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    .line 520
    invoke-virtual {v3}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 521
    iget v4, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    iget v5, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 522
    iget v4, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 523
    iget v4, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 524
    invoke-virtual {v3, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    invoke-virtual {v3}, Lcom/htc/lib1/cc/widget/HtcIconButton;->requestLayout()V

    .line 517
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 510
    :cond_3
    iget v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    goto :goto_2

    .line 527
    :cond_4
    const-string v0, "ExpandableMenu"

    const-string v1, "updateItemsPosition() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addItem(Lcom/htc/camera/widget/ExpandableMenuItem;)V
    .locals 2

    .prologue
    .line 81
    const-string v0, "ExpandableMenu"

    const-string v1, "addItem() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-nez p1, :cond_0

    .line 83
    const-string v0, "ExpandableMenu"

    const-string v1, "addItem() - item is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-direct {p0, p1}, Lcom/htc/camera/widget/ExpandableMenu;->createNewIconButtonToItem(Lcom/htc/camera/widget/ExpandableMenuItem;)V

    .line 89
    iget-object v0, p1, Lcom/htc/camera/widget/ExpandableMenuItem;->iconContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/ExpandableMenu;->addView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->d(Landroid/os/Handler;I)V

    .line 91
    const-string v0, "ExpandableMenu"

    const-string v1, "addItem() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearAllItemsAnimation()V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/ExpandableMenu;->clearItemAnimation(Lcom/htc/camera/widget/ExpandableMenuItem;)V

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public clearItemAnimation(Lcom/htc/camera/widget/ExpandableMenuItem;)V
    .locals 1

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p1, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;->clearAnimation()V

    .line 118
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method notifyItemTouched(Lcom/htc/camera/widget/ExpandableMenuItem;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_TouchListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_TouchListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/d;

    invoke-interface {v0, p1, p2}, Lcom/htc/camera/widget/d;->onTouch(Lcom/htc/camera/widget/ExpandableMenuItem;Landroid/view/MotionEvent;)V

    .line 249
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 302
    iget-object v1, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 303
    :cond_0
    const-string v0, "ExpandableMenu"

    const-string v1, "onLayout() - items is null or size is 0"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_1
    return-void

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    add-int v4, v1, v2

    .line 309
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getPaddingTop()I

    move-result v5

    .line 311
    iget-object v1, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_VisibleItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 313
    const/4 v1, 0x0

    move v2, v1

    move v3, v0

    move v1, v0

    .line 315
    :goto_0
    if-ge v1, v6, :cond_1

    .line 316
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_VisibleItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ExpandableMenuItem;

    iget-object v0, v0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconContainer:Landroid/widget/RelativeLayout;

    .line 318
    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMarginRemainder:F

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    .line 319
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v3, v7

    .line 320
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v2, v7

    .line 321
    mul-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v4

    iget v8, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    .line 322
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3

    .line 323
    iget v8, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    add-int/2addr v8, v7

    iget v9, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    add-int/2addr v7, v9

    iget v9, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    add-int/2addr v7, v9

    iget v9, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    add-int/2addr v9, v5

    invoke-virtual {v0, v8, v5, v7, v9}, Landroid/view/View;->layout(IIII)V

    .line 315
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 334
    .line 338
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 339
    new-array v4, v11, [I

    .line 341
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_VisibleItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v2, v3

    move v1, v3

    .line 342
    :goto_0
    if-ge v2, v11, :cond_1

    .line 343
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ExpandableMenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 344
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_VisibleItemList:Ljava/util/List;

    iget-object v5, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ExpandableMenuItem;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_1
    aput v0, v4, v2

    .line 347
    aget v0, v4, v2

    add-int/2addr v0, v1

    .line 342
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 346
    goto :goto_1

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_VisibleItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 353
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v4, v2, 0x1

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v0, v4

    iput v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    .line 354
    if-lez v2, :cond_3

    iget v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 355
    :goto_3
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getMeasuredHeight()I

    move-result v0

    :goto_4
    iput v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    .line 356
    iget v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    if-gez v0, :cond_2

    .line 359
    const-string v0, "ExpandableMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure() - negative m_ItemSize("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 368
    float-to-int v1, v0

    iput v1, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    .line 369
    iget v1, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMarginRemainder:F

    move v10, v3

    move v7, v3

    move v8, v3

    move v9, v3

    .line 373
    :goto_5
    if-ge v10, v11, :cond_5

    .line 374
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ExpandableMenuItem;

    iget-object v1, v0, Lcom/htc/camera/widget/ExpandableMenuItem;->iconContainer:Landroid/widget/RelativeLayout;

    .line 376
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    .line 377
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 378
    iget v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 379
    iget v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemSize:I

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 381
    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/widget/ExpandableMenu;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 382
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    .line 383
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 384
    add-int v4, v9, v0

    .line 385
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 386
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v7, v0}, Lcom/htc/camera/widget/ExpandableMenu;->combineMeasuredStates(II)I

    move-result v0

    move v1, v2

    move v2, v4

    .line 373
    :goto_6
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move v7, v0

    move v8, v1

    move v9, v2

    goto :goto_5

    :cond_3
    move v0, v3

    .line 354
    goto/16 :goto_3

    .line 355
    :cond_4
    iget v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    goto/16 :goto_4

    .line 390
    :cond_5
    iget v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemMargin:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v9

    .line 392
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 393
    invoke-virtual {p0}, Lcom/htc/camera/widget/ExpandableMenu;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 397
    invoke-static {v0, p1, v7}, Lcom/htc/camera/widget/ExpandableMenu;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v2, v7, 0x10

    invoke-static {v1, p2, v2}, Lcom/htc/camera/widget/ExpandableMenu;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/widget/ExpandableMenu;->setMeasuredDimension(II)V

    .line 399
    return-void

    :cond_6
    move v0, v7

    move v1, v8

    move v2, v9

    goto :goto_6

    :cond_7
    move v0, v1

    goto/16 :goto_2
.end method

.method public registerOnClickListener(Lcom/htc/camera/widget/c;)V
    .locals 2

    .prologue
    .line 406
    if-nez p1, :cond_0

    .line 407
    const-string v0, "ExpandableMenu"

    const-string v1, "registerOnClickListener() - listener is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerOnTouchListener(Lcom/htc/camera/widget/d;)V
    .locals 2

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    const-string v0, "ExpandableMenu"

    const-string v1, "registerOnTouchListener() - listener is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_TouchListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAllItemsEnabled(Z)V
    .locals 2

    .prologue
    .line 484
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ExpandableMenuItem;->setEnabled(Z)V

    .line 484
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 486
    :cond_0
    return-void
.end method

.method public setAllItemsOrientation(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 432
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/htc/camera/widget/ExpandableMenu;->m_ItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {p0, v0, p1}, Lcom/htc/camera/widget/ExpandableMenu;->setItemOrientation(Lcom/htc/camera/widget/ExpandableMenuItem;Lcom/htc/camera/rotate/UIRotation;)V

    .line 432
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method

.method public setItemOrientation(Lcom/htc/camera/widget/ExpandableMenuItem;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 437
    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/camera/widget/ExpandableMenu;->setItemOrientation(Lcom/htc/camera/widget/ExpandableMenuItem;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 438
    return-void
.end method

.method public setItemOrientation(Lcom/htc/camera/widget/ExpandableMenuItem;Lcom/htc/camera/rotate/UIRotation;I)V
    .locals 6

    .prologue
    const/high16 v5, 0x43b40000    # 360.0f

    .line 441
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 443
    iget-object v2, p1, Lcom/htc/camera/widget/ExpandableMenuItem;->iconButton:Lcom/htc/camera/widget/ExpandableMenuItem$IconButtonWrapper;

    .line 444
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v1, v0

    .line 445
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v0

    .line 446
    sub-float v3, v1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 448
    cmpl-float v3, v1, v0

    if-lez v3, :cond_2

    .line 449
    sub-float/2addr v1, v5

    .line 453
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 454
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    .line 455
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 456
    int-to-long v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 457
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 459
    :cond_1
    return-void

    .line 451
    :cond_2
    sub-float/2addr v0, v5

    goto :goto_0
.end method
