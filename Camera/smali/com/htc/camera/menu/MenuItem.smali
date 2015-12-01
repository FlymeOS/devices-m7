.class public Lcom/htc/camera/menu/MenuItem;
.super Lcom/htc/camera/widget/ItemBase;
.source "MenuItem.java"


# instance fields
.field private m_Background:Ljava/lang/Object;

.field private m_IsChecked:Z

.field private m_IsGlobal:Z

.field private m_IsSelectable:Z

.field private m_Items:[Lcom/htc/camera/menu/MenuItem;

.field m_MenuListView:Lcom/htc/camera/menu/MenuListView;

.field private m_Parent:Lcom/htc/camera/menu/MenuItem;

.field private m_Summary:Ljava/lang/Object;

.field private final m_VisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/camera/widget/ItemBase;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/menu/MenuItem;->m_IsSelectable:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;II)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;III)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;III)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/camera/widget/ItemBase;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/menu/MenuItem;->m_IsSelectable:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p0, p4}, Lcom/htc/camera/menu/MenuItem;->setId(I)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/htc/camera/menu/MenuItem;->setTitle(I)V

    .line 69
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/camera/widget/ItemBase;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/menu/MenuItem;->m_IsSelectable:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p0, p2}, Lcom/htc/camera/menu/MenuItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method private getViewDefault(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 163
    invoke-virtual {p0, p2, p4}, Lcom/htc/camera/menu/MenuItem;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;

    .line 167
    iget-object v2, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->leftRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->leftRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v2, v6}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setVisibility(I)V

    .line 170
    iget-object v2, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->leftRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    invoke-virtual {v2, v5}, Lcom/htc/lib1/cc/widget/HtcRadioButton;->setClickable(Z)V

    .line 173
    :cond_0
    invoke-virtual {p0, v1, p3}, Lcom/htc/camera/menu/MenuItem;->setBackgroundForView(Landroid/view/View;I)V

    .line 176
    iget-object v2, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->getTitle()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/camera/menu/MenuItem;->setText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->isEnabled()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Landroid/view/View;Z)V

    .line 182
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->isSingleLine()Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    iget-object v2, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v5}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 189
    iget-object v2, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    if-eqz v2, :cond_2

    .line 190
    iget-object v0, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    invoke-virtual {v0, v6}, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;->setVisibility(I)V

    .line 207
    :cond_2
    :goto_0
    return-object v1

    .line 195
    :cond_3
    iget-object v2, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    if-eqz v2, :cond_2

    .line 197
    iget-object v2, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    invoke-virtual {v2, v5}, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;->setVisibility(I)V

    .line 198
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    iget-object v0, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;->setAlpha(F)V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v0, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;->setAlpha(F)V

    goto :goto_0
.end method

.method private isSetPrimaryTextSuccessfully(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/menu/MenuItem;->setPrimaryText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setPrimaryText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 517
    if-nez p2, :cond_0

    .line 519
    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    .line 546
    :goto_0
    return v0

    .line 524
    :cond_0
    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    .line 526
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 528
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 529
    if-lez v0, :cond_1

    .line 530
    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 546
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    goto :goto_1

    .line 534
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 537
    check-cast p2, Ljava/lang/String;

    .line 538
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 539
    invoke-virtual {p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1

    .line 541
    :cond_3
    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setVisibility(I)V

    goto :goto_1

    .line 544
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setSecondaryText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 551
    if-nez p2, :cond_0

    .line 552
    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 577
    :goto_0
    return-void

    .line 555
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 557
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 559
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 560
    if-lez v0, :cond_1

    .line 561
    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto :goto_0

    .line 563
    :cond_1
    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 565
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 568
    check-cast p2, Ljava/lang/String;

    .line 569
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 570
    invoke-virtual {p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_3
    invoke-virtual {p1, v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 575
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final collapse()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v0, p0}, Lcom/htc/camera/menu/MenuListView;->collapseItem(Lcom/htc/camera/menu/MenuItem;)V

    .line 86
    :cond_0
    return-void
.end method

.method public final expand()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v0, p0}, Lcom/htc/camera/menu/MenuListView;->expandItem(Lcom/htc/camera/menu/MenuItem;)V

    .line 95
    :cond_0
    return-void
.end method

.method public final getItems()[Lcom/htc/camera/menu/MenuItem;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    return-object v0
.end method

.method public getMenuListView()Lcom/htc/camera/menu/MenuListView;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    return-object v0
.end method

.method public final getParent()Lcom/htc/camera/menu/MenuItem;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Parent:Lcom/htc/camera/menu/MenuItem;

    return-object v0
.end method

.method public final getSummary()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    return-object v0
.end method

.method final getView(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/camera/menu/MenuItem;->getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 127
    .line 128
    if-eqz p2, :cond_2

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 131
    instance-of v1, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;

    if-eqz v1, :cond_1

    .line 132
    check-cast v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;

    move-object v1, p2

    .line 138
    :goto_0
    if-nez v1, :cond_0

    .line 140
    const v0, 0x7f03000b

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 141
    new-instance v1, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;

    invoke-direct {v1}, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;-><init>()V

    .line 142
    const v0, 0x7f0e007b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem;

    .line 143
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 144
    const v0, 0x7f0e007c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcRadioButton;

    iput-object v0, v1, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->leftRadioButton:Lcom/htc/lib1/cc/widget/HtcRadioButton;

    .line 145
    const v0, 0x7f0e007d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    iput-object v0, v1, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    .line 146
    const v0, 0x7f0e004a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    iput-object v0, v1, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->expandButton:Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    .line 147
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    move-object v1, v2

    .line 150
    :cond_0
    iget-object v2, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    const v3, 0x7f0900d5

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 151
    iget-object v0, v0, Lcom/htc/camera/menu/MenuItem$ItemViewInfo;->textViews:Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    const v2, 0x7f0900f9

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 154
    return-object v1

    :cond_1
    move-object v0, v2

    move-object v1, v2

    .line 134
    goto :goto_0

    :cond_2
    move-object v0, v2

    move-object v1, p2

    goto :goto_0
.end method

.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/menu/MenuItem;->getViewDefault(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVisibleItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final hasVisibleItems()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/htc/camera/menu/MenuItem;->m_IsChecked:Z

    return v0
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public final isExpanded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 243
    iget-object v1, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v1}, Lcom/htc/camera/menu/MenuListView;->getExpandedItem()Lcom/htc/camera/menu/MenuItem;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    .line 245
    :cond_0
    return v0
.end method

.method public isGlobalSettings()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/htc/camera/menu/MenuItem;->m_IsGlobal:Z

    return v0
.end method

.method public final isSelectable()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/htc/camera/menu/MenuItem;->m_IsSelectable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final notifyItemContentClicked()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v0, p0}, Lcom/htc/camera/menu/MenuListView;->notifyItemContentClicked(Lcom/htc/camera/menu/MenuItem;)V

    .line 263
    :cond_0
    return-void
.end method

.method protected final notifyItemsChanged()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuListView;->notifyItemsChanged()V

    .line 272
    :cond_0
    return-void
.end method

.method protected final notifyItemsInvalidated()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuListView;->notifyItemsInvalidated()V

    .line 281
    :cond_0
    return-void
.end method

.method protected onClicked()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method protected onEnabledChanged(Z)V
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 299
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/widget/ItemBase;->onEnabledChanged(Z)V

    .line 300
    return-void
.end method

.method protected onTitleResourceChanged(I)V
    .locals 0

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 309
    invoke-super {p0, p1}, Lcom/htc/camera/widget/ItemBase;->onTitleResourceChanged(I)V

    .line 310
    return-void
.end method

.method protected onTitleStringChanged(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 315
    invoke-super {p0, p1}, Lcom/htc/camera/widget/ItemBase;->onTitleStringChanged(Ljava/lang/CharSequence;)V

    .line 316
    return-void
.end method

.method protected onVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Parent:Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Parent:Lcom/htc/camera/menu/MenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/MenuItem;->updateVisibleItems(Z)V

    .line 326
    :cond_0
    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->updateContent()V

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->notifyItemsChanged()V

    .line 329
    invoke-super {p0, p1}, Lcom/htc/camera/widget/ItemBase;->onVisibilityChanged(Z)V

    .line 330
    return-void
.end method

.method public setBackgroundForView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 354
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Background:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 350
    const v0, 0x7f0200ea

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 352
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/htc/camera/menu/MenuItem;->m_IsChecked:Z

    if-eq v0, p1, :cond_0

    .line 360
    iput-boolean p1, p0, Lcom/htc/camera/menu/MenuItem;->m_IsChecked:Z

    .line 361
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 364
    :cond_0
    return-void
.end method

.method protected final setEnabled(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 368
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 370
    check-cast p1, Landroid/view/ViewGroup;

    .line 371
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/htc/camera/menu/MenuItem;->setEnabled(Landroid/view/View;Z)V

    .line 371
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method public setIsGlobalSettings(Z)V
    .locals 0

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/htc/camera/menu/MenuItem;->m_IsGlobal:Z

    .line 383
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 405
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/htc/camera/menu/MenuItem;

    .line 406
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 407
    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MenuItem;->setItems([Lcom/htc/camera/menu/MenuItem;)V

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x0

    check-cast v0, [Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MenuItem;->setItems([Lcom/htc/camera/menu/MenuItem;)V

    goto :goto_0
.end method

.method public setItems([Lcom/htc/camera/menu/MenuItem;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 419
    iget-object v1, p0, Lcom/htc/camera/menu/MenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/htc/camera/menu/MenuItem;->setMenuListView(Lcom/htc/camera/menu/MenuListView;)V

    .line 420
    iget-object v1, p0, Lcom/htc/camera/menu/MenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/htc/camera/menu/MenuItem;->m_Parent:Lcom/htc/camera/menu/MenuItem;

    .line 417
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 425
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/menu/MenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    .line 426
    if-eqz p1, :cond_1

    .line 428
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 430
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v1, v2}, Lcom/htc/camera/menu/MenuItem;->setMenuListView(Lcom/htc/camera/menu/MenuListView;)V

    .line 431
    aget-object v1, p1, v0

    iput-object p0, v1, Lcom/htc/camera/menu/MenuItem;->m_Parent:Lcom/htc/camera/menu/MenuItem;

    .line 428
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->notifyItemsChanged()V

    .line 437
    return-void
.end method

.method final setMenuListView(Lcom/htc/camera/menu/MenuListView;)V
    .locals 2

    .prologue
    .line 386
    iput-object p1, p0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    .line 387
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 390
    iget-object v1, p0, Lcom/htc/camera/menu/MenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/htc/camera/menu/MenuItem;->setMenuListView(Lcom/htc/camera/menu/MenuListView;)V

    .line 389
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/htc/camera/menu/MenuItem;->m_IsSelectable:Z

    .line 396
    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .prologue
    .line 444
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    .line 445
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 446
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/htc/camera/menu/MenuItem;->m_Summary:Ljava/lang/Object;

    .line 450
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuItem;->notifyItemsInvalidated()V

    .line 451
    return-void
.end method

.method protected final setText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 504
    if-nez p1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/menu/MenuItem;->isSetPrimaryTextSuccessfully(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-direct {p0, p1, p3}, Lcom/htc/camera/menu/MenuItem;->setSecondaryText(Lcom/htc/lib1/cc/widget/HtcListItem2LineText;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateContent()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->updateContent()V

    .line 584
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 586
    :cond_0
    return-void
.end method

.method final updateVisibleItems(Z)V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 594
    iget-object v0, p0, Lcom/htc/camera/menu/MenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_1

    .line 596
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/camera/menu/MenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 598
    iget-object v1, p0, Lcom/htc/camera/menu/MenuItem;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v1, v1, v0

    .line 599
    invoke-virtual {v1}, Lcom/htc/camera/menu/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    iget-object v2, p0, Lcom/htc/camera/menu/MenuItem;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    if-eqz p1, :cond_0

    .line 603
    invoke-virtual {v1, p1}, Lcom/htc/camera/menu/MenuItem;->updateVisibleItems(Z)V

    .line 596
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_1
    return-void
.end method
