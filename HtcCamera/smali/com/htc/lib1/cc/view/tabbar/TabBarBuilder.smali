.class public Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;
.super Ljava/lang/Object;
.source "TabBarBuilder.java"


# instance fields
.field private isCarMode:Z

.field private mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

.field private mContext:Landroid/content/Context;

.field private mMaxTitleStringLength:I

.field private final mTabTitleRecycler:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetRecycler:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lib1/cc/view/tabbar/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mWidgetRecycler:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mTabTitleRecycler:Landroid/util/SparseArray;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->paint:Landroid/graphics/Paint;

    .line 42
    iput v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mMaxTitleStringLength:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->selected:I

    .line 44
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->isCarMode:Z

    .line 47
    iput-object p1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    .line 49
    invoke-interface {p2}, Lcom/htc/lib1/cc/view/tabbar/c;->isAutomotiveMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->isCarMode:Z

    .line 50
    return-void
.end method

.method private getPopupBubbleItem(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 194
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcListItem;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcListItem;-><init>(Landroid/content/Context;I)V

    .line 195
    iget-boolean v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->isCarMode:Z

    invoke-virtual {v0, v1, v3}, Lcom/htc/lib1/cc/widget/HtcListItem;->setAutoMotiveMode(ZZ)V

    .line 196
    new-instance v1, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    iget-object v2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;-><init>(Landroid/content/Context;I)V

    .line 197
    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 198
    new-instance v2, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;

    iget-object v3, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcListItem;->addView(Landroid/view/View;)V

    .line 201
    iget-object v3, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    invoke-interface {v3, p1}, Lcom/htc/lib1/cc/view/tabbar/c;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 202
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 204
    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->setUpperBound(I)V

    .line 205
    iget-object v3, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    invoke-interface {v3, p1}, Lcom/htc/lib1/cc/view/tabbar/c;->getPageCount(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItemBubbleCount;->setBubbleCount(I)V

    .line 207
    iget v2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->selected:I

    if-ne p1, v2, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;->getPrimaryTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/view/tabbar/e;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    :cond_0
    return-object v0
.end method

.method private getTabBarItem(I)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 149
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mWidgetRecycler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    if-nez v0, :cond_0

    .line 151
    new-instance v1, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder$1;

    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder$1;-><init>(Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;Landroid/content/Context;)V

    .line 177
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->makeTabBarItemString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->isCarMode:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/lib1/cc/k;->fixed_automotive_b_separator_primary_s:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 180
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 182
    const/high16 v0, 0x40800000    # 4.0f

    iget-object v2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 183
    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 185
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 186
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mWidgetRecycler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 190
    :cond_0
    return-object v0

    .line 179
    :cond_1
    sget v0, Lcom/htc/lib1/cc/k;->b_separator_secondary_xs:I

    goto :goto_0
.end method

.method private makeTabBarItemString(I)Ljava/lang/CharSequence;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v9, -0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mTabTitleRecycler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 64
    if-nez v0, :cond_5

    .line 65
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/view/tabbar/c;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 66
    if-nez v0, :cond_6

    move-object v0, v1

    .line 67
    :goto_0
    iget-object v3, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    invoke-interface {v3, p1}, Lcom/htc/lib1/cc/view/tabbar/c;->getPageCount(I)I

    move-result v4

    .line 69
    iget-object v3, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->paint:Landroid/graphics/Paint;

    if-nez v3, :cond_4

    .line 70
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->paint:Landroid/graphics/Paint;

    .line 72
    iget-object v3, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 73
    sget v5, Lcom/htc/lib1/cc/k;->b_separator_secondary_xl:I

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 81
    if-eqz v3, :cond_4

    .line 82
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 83
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 84
    const/4 v7, 0x2

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 85
    const/4 v8, 0x3

    invoke-virtual {v3, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 87
    if-eqz v5, :cond_0

    .line 88
    iget-object v9, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->paint:Landroid/graphics/Paint;

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    :cond_0
    if-eqz v6, :cond_1

    .line 92
    invoke-static {v6, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 93
    :cond_1
    if-nez v1, :cond_2

    .line 94
    packed-switch v7, :pswitch_data_0

    .line 106
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 107
    iget-object v5, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    :cond_4
    if-nez v0, :cond_7

    move v1, v2

    .line 114
    :goto_2
    iget-object v2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/view/tabbar/f;->a(Landroid/content/Context;)I

    move-result v5

    .line 116
    iget-object v2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 120
    :goto_3
    if-lez v4, :cond_9

    .line 123
    const/16 v0, 0x64

    if-ge v4, v0, :cond_8

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_4
    new-instance v2, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/lib1/cc/view/tabbar/e;->a(Landroid/content/Context;)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x2

    const/16 v7, 0x21

    invoke-interface {v2, v4, v6, v3, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 134
    iget-object v3, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    .line 135
    add-int/2addr v0, v1

    mul-int/lit8 v1, v5, 0x3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mMaxTitleStringLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mMaxTitleStringLength:I

    move-object v0, v2

    .line 142
    :goto_5
    if-eqz v0, :cond_5

    .line 143
    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mTabTitleRecycler:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    :cond_5
    return-object v0

    .line 66
    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 96
    :pswitch_0
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto/16 :goto_1

    .line 99
    :pswitch_1
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto/16 :goto_1

    .line 102
    :pswitch_2
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto/16 :goto_1

    .line 113
    :cond_7
    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    goto/16 :goto_2

    .line 126
    :cond_8
    const-string v0, "(99+)"

    goto/16 :goto_4

    .line 139
    :cond_9
    mul-int/lit8 v0, v5, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mMaxTitleStringLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mMaxTitleStringLength:I

    move-object v0, v3

    goto :goto_5

    :cond_a
    move-object v3, v0

    goto/16 :goto_3

    .line 73
    :array_0
    .array-data 4
        0x1010095
        0x10103ac
        0x1010096
        0x1010097
    .end array-data

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mWidgetRecycler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 58
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mTabTitleRecycler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mMaxTitleStringLength:I

    .line 60
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/view/tabbar/c;->getPageCount(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 276
    instance-of v0, p3, Lcom/htc/lib1/cc/view/tabbar/TabBar;

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->getTabBarItem(I)Landroid/view/View;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    .line 278
    :cond_0
    instance-of v0, p3, Lcom/htc/lib1/cc/widget/HtcListView;

    if-nez v0, :cond_1

    if-nez p3, :cond_2

    .line 280
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->getPopupBubbleItem(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 283
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x2

    return v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    iput p2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->selected:I

    .line 54
    return-void
.end method
