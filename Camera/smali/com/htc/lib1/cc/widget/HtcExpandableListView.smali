.class public Lcom/htc/lib1/cc/widget/HtcExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "HtcExpandableListView.java"


# instance fields
.field mCurrentExpandedGroup:I

.field mDarkExpandDivider:Landroid/graphics/drawable/Drawable;

.field mDarkModeEnabled:Z

.field mDividerMargin:I

.field mExpandDivider:Landroid/graphics/drawable/Drawable;

.field mExpandDividerHeight:I

.field mIndicatorEnabled:Z

.field mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mExpandDividerHeight:I

    .line 29
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mDividerMargin:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mCurrentExpandedGroup:I

    .line 33
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mIndicatorEnabled:Z

    .line 49
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    new-instance v1, Lcom/htc/lib1/cc/widget/HtcExpandableListView$1;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView$1;-><init>(Lcom/htc/lib1/cc/widget/HtcExpandableListView;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->init(Landroid/widget/AbsListView;Lcom/htc/lib1/cc/widget/aq;)V

    .line 95
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->getDividerMargin()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mDividerMargin:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    sget v1, Lcom/htc/lib1/cc/d;->expand_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mExpandDividerHeight:I

    .line 98
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/htc/lib1/cc/c;->dark_ap_background_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mExpandDivider:Landroid/graphics/drawable/Drawable;

    .line 99
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/htc/lib1/cc/c;->ap_background_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mDarkExpandDivider:Landroid/graphics/drawable/Drawable;

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void
.end method

.method static synthetic access$001(Lcom/htc/lib1/cc/widget/HtcExpandableListView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$101(Lcom/htc/lib1/cc/widget/HtcExpandableListView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$201(Lcom/htc/lib1/cc/widget/HtcExpandableListView;IIZZ)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onOverScrolled(IIZZ)V

    return-void
.end method

.method static synthetic access$301(Lcom/htc/lib1/cc/widget/HtcExpandableListView;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    return-void
.end method

.method static synthetic access$401(Lcom/htc/lib1/cc/widget/HtcExpandableListView;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V

    return-void
.end method

.method static synthetic access$501(Lcom/htc/lib1/cc/widget/HtcExpandableListView;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static synthetic access$601(Lcom/htc/lib1/cc/widget/HtcExpandableListView;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$701(Lcom/htc/lib1/cc/widget/HtcExpandableListView;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Landroid/widget/AbsListView;->requestLayout()V

    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 287
    if-nez v0, :cond_1

    .line 339
    :cond_0
    return-void

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v1

    .line 291
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    add-int/lit8 v4, v0, -0x1

    .line 293
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getBottom()I

    move-result v5

    .line 294
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getChildCount()I

    move-result v6

    .line 295
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getFirstVisiblePosition()I

    move-result v7

    .line 298
    sub-int v0, v7, v1

    move v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_0

    .line 299
    if-gez v1, :cond_3

    .line 298
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 302
    :cond_3
    if-gt v1, v4, :cond_0

    .line 306
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 310
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 312
    if-ltz v9, :cond_2

    if-gt v8, v5, :cond_2

    .line 315
    add-int v8, v7, v2

    .line 316
    invoke-virtual {p0, v8}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v8

    .line 317
    invoke-static {v8, v9}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getPackedPositionGroup(J)I

    move-result v10

    .line 318
    invoke-static {v8, v9}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getPackedPositionType(J)I

    move-result v8

    .line 321
    if-nez v8, :cond_2

    instance-of v8, v0, Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    .line 322
    invoke-virtual {p0, v10}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->isGroupExpanded(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 323
    check-cast v0, Landroid/view/ViewGroup;

    sget v8, Lcom/htc/lib1/cc/g;->htc_expandable_indicator:I

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_2

    instance-of v8, v0, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    if-eqz v8, :cond_2

    .line 326
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    .line 327
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;->setExpanded(Z)V

    goto :goto_1

    .line 330
    :cond_4
    check-cast v0, Landroid/view/ViewGroup;

    sget v8, Lcom/htc/lib1/cc/g;->htc_expandable_indicator:I

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_2

    instance-of v8, v0, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    if-eqz v8, :cond_2

    .line 333
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;

    .line 334
    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcIndicatorButton;->setExpanded(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mIndicatorEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 214
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getFirstVisiblePosition()I

    move-result v9

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getDividerHeight()I

    move-result v10

    .line 221
    const/4 v2, -0x2

    .line 222
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mExpandDividerHeight:I

    sub-int/2addr v1, v10

    div-int/lit8 v6, v1, 0x2

    .line 224
    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 225
    add-int v11, v9, v1

    .line 226
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v3

    .line 227
    invoke-static {v3, v4}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    .line 228
    invoke-static {v3, v4}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getPackedPositionType(J)I

    move-result v12

    .line 231
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mDarkExpandDivider:Landroid/graphics/drawable/Drawable;

    move-object v8, v3

    .line 232
    :goto_1
    if-nez v12, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->isGroupExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    move v7, v3

    .line 234
    :goto_2
    if-eqz v7, :cond_2

    add-int/lit8 v3, v1, -0x1

    if-eq v3, v2, :cond_2

    .line 235
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 236
    add-int/lit8 v3, v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 237
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v3

    float-to-int v4, v3

    .line 238
    if-ltz v4, :cond_8

    const/4 v3, -0x1

    .line 239
    :goto_3
    if-nez v13, :cond_9

    move v3, v4

    .line 242
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    if-lez v11, :cond_a

    move v5, v6

    :goto_5
    add-int/2addr v5, v13

    if-nez v11, :cond_1

    if-ltz v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    add-int/2addr v3, v5

    .line 244
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mDividerMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mExpandDividerHeight:I

    sub-int v5, v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mDividerMargin:I

    sub-int/2addr v13, v14

    invoke-virtual {v8, v4, v5, v13, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    :cond_2
    const/4 v3, 0x1

    if-ne v12, v3, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->isDrawExpandBottomDivider(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->isDrawExpandBottomDivider(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 250
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v11, v2, :cond_b

    add-int v2, v10, v6

    :goto_6
    add-int/2addr v2, v3

    .line 252
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mDividerMargin:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mExpandDividerHeight:I

    sub-int v4, v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mDividerMargin:I

    sub-int/2addr v5, v7

    invoke-virtual {v8, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 254
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v2, v1

    .line 224
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 231
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mExpandDivider:Landroid/graphics/drawable/Drawable;

    move-object v8, v3

    goto/16 :goto_1

    .line 232
    :cond_7
    const/4 v3, 0x0

    move v7, v3

    goto/16 :goto_2

    .line 238
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 239
    :cond_9
    int-to-float v14, v3

    invoke-virtual {v13}, Landroid/view/View;->getTranslationY()F

    move-result v13

    int-to-float v15, v4

    sub-float/2addr v13, v15

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    float-to-int v13, v13

    mul-int/2addr v3, v13

    add-int/2addr v3, v4

    goto/16 :goto_4

    .line 242
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mExpandDividerHeight:I

    goto/16 :goto_5

    .line 251
    :cond_b
    const/4 v2, 0x0

    goto :goto_6

    .line 258
    :cond_c
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->invalidate()V

    .line 201
    return-void
.end method

.method isDrawExpandBottomDivider(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 261
    add-int/lit8 v1, p1, 0x1

    .line 262
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    .line 268
    invoke-static {v1, v2}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->getPackedPositionType(J)I

    move-result v1

    .line 269
    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->onDetachedFromWindow()V

    .line 137
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 124
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public onOverScrolled(IIZZ)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/ListViewUtil;->onOverScrolled(IIZZ)V

    .line 133
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ExpandableListView;->onSizeChanged(IIII)V

    .line 364
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/ListViewUtil;->onSizeChanged(IIII)V

    .line 365
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->onWindowFocusChanged(Z)V

    .line 142
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;->requestLayout()V

    .line 209
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setClipToPadding(Z)V

    .line 192
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setClipToPadding(Z)V

    .line 193
    return-void
.end method

.method public setDarkModeEnabled(Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mDarkModeEnabled:Z

    .line 107
    return-void
.end method

.method public setDividerController(Lcom/htc/lib1/cc/widget/aj;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setDividerController(Lcom/htc/lib1/cc/widget/aj;)V

    .line 152
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    .line 349
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setFastScrollEnabled(Z)V

    .line 353
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setFooterDividersEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setFooterDividersEnabled(Z)V

    .line 168
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setHeaderDividersEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setHeaderDividersEnabled(Z)V

    .line 160
    return-void
.end method

.method public setIndicatorEnabled(Z)V
    .locals 0

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mIndicatorEnabled:Z

    .line 283
    return-void
.end method

.method public setOnPullDownListener(Lcom/htc/lib1/cc/widget/ar;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setOnPullDownListener(Lcom/htc/lib1/cc/widget/ar;)V

    .line 112
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 184
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/ListViewUtil;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 176
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setVerticalScrollbarPosition(I)V

    .line 358
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcExpandableListView;->mListViewUtil:Lcom/htc/lib1/cc/widget/ListViewUtil;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/ListViewUtil;->setScrollbarPosition(I)V

    .line 359
    return-void
.end method
