.class public Lcom/htc/lib1/cc/widget/HtcNumberPicker;
.super Landroid/widget/RelativeLayout;
.source "HtcNumberPicker.java"

# interfaces
.implements Lcom/htc/lib1/cc/view/table/e;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final ahanLog:Z

.field private isRightIdle:Z

.field private mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

.field private mAssetHeight:I

.field private mBackgroundBorderColor:I

.field private mBackgroundBorderWeight:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mCenterViewFadingTextColor:Landroid/animation/ObjectAnimator;

.field private mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

.field private mCenterViewTextColor:I

.field private mChangeBkg:Z

.field private mChangeTextColor:Z

.field private mChangeTextStyle:Z

.field private mContext:Landroid/content/Context;

.field private mCurrent:I

.field private mCustomShadow:Z

.field private mDigits:I

.field private mDrawFocusIndicator:Z

.field mEnd:I

.field private mFocusIndicator:Landroid/graphics/drawable/Drawable;

.field private final mHandler:Landroid/os/Handler;

.field private mHasAnimatorInited:Z

.field private mIdleScrollListener:Lcom/htc/lib1/cc/widget/ad;

.field mIsNeverSlidedBeforeSet:Z

.field mIsOnInitState:Z

.field private mKeyOfPicker:Ljava/lang/String;

.field private mMyParent:Landroid/view/ViewGroup;

.field private mPickerHeight:I

.field private mPickerHeightLandscape:I

.field private mPickerHeightPortrait:I

.field private mPos:I

.field mReadyToSet:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mScrollControl:Lcom/htc/lib1/cc/widget/TableViewScrollControl;

.field mStart:I

.field private mTableCenter:I

.field private mTableChildHeightInXML:I

.field private mTableHeight:I

.field private mTableHeightInXML:I

.field private mTableInflater:Landroid/view/LayoutInflater;

.field private mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

.field private mTableViewSlideOffsetInXML:I

.field private mTextColor:I

.field private mTextStyle:I

.field private mUsingTwoLayerFocus:Z

.field private shadow1st:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

.field private shadow2nd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

.field private shadow3rd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/high16 v1, -0x80000000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const-string v0, "NumberTableView"

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->LOG_TAG:Ljava/lang/String;

    .line 55
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->ahanLog:Z

    .line 62
    iput-object v4, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mScrollControl:Lcom/htc/lib1/cc/widget/TableViewScrollControl;

    .line 69
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->isRightIdle:Z

    .line 71
    iput-object v4, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mIdleScrollListener:Lcom/htc/lib1/cc/widget/ad;

    .line 72
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mChangeBkg:Z

    .line 82
    iput-object v4, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mKeyOfPicker:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAssetHeight:I

    .line 85
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPickerHeightPortrait:I

    .line 86
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPickerHeightLandscape:I

    .line 87
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableHeightInXML:I

    .line 88
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableChildHeightInXML:I

    .line 89
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableViewSlideOffsetInXML:I

    .line 90
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mBackgroundBorderWeight:I

    .line 91
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mBackgroundBorderColor:I

    .line 97
    iput-object v4, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    .line 100
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mHasAnimatorInited:Z

    .line 512
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$2;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$2;-><init>(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 519
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mReadyToSet:Z

    .line 607
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mHandler:Landroid/os/Handler;

    .line 608
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mIsNeverSlidedBeforeSet:Z

    .line 609
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mIsOnInitState:Z

    .line 153
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    .line 154
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    sget v1, Lcom/htc/lib1/cc/d;->time_pick_picker_height_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPickerHeightPortrait:I

    .line 157
    sget v1, Lcom/htc/lib1/cc/d;->time_pick_picker_height_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPickerHeightLandscape:I

    .line 158
    sget v1, Lcom/htc/lib1/cc/d;->table_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableHeightInXML:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableHeight:I

    .line 159
    sget v1, Lcom/htc/lib1/cc/d;->time_pick_text_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableChildHeightInXML:I

    .line 160
    sget v1, Lcom/htc/lib1/cc/d;->table_view_slide_offest:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableViewSlideOffsetInXML:I

    .line 161
    sget v1, Lcom/htc/lib1/cc/d;->time_pick_border_weight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mBackgroundBorderWeight:I

    .line 162
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getTimePickerColorResources(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mBackgroundBorderColor:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTextColor:I

    .line 163
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getTimePickerColorResources(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewTextColor:I

    .line 165
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableCenter:I

    .line 167
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableInflater:Landroid/view/LayoutInflater;

    .line 168
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/htc/lib1/cc/i;->number_picker:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 170
    sget v0, Lcom/htc/lib1/cc/g;->my_table_view:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/MyTableView;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    .line 173
    new-instance v0, Lcom/htc/lib1/cc/view/table/TableLayoutParams;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/table/TableLayoutParams;-><init>()V

    .line 174
    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->enableScrollOverBoundary(Z)V

    .line 175
    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->initialWithScrollControl(Z)V

    .line 176
    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->setOrientation(I)V

    .line 177
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v1, v2, v0}, Lcom/htc/lib1/cc/widget/MyTableView;->setTableLayoutParams(ILcom/htc/lib1/cc/view/table/TableLayoutParams;)V

    .line 179
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/MyTableView;->setNumColumnRows(I)V

    .line 180
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/MyTableView;->setHorizontalSpacing(I)V

    .line 181
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/MyTableView;->setVerticalSpacing(I)V

    .line 182
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/MyTableView;->setHorizontalSpacing(I)V

    .line 183
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/MyTableView;->setVerticalSpacing(I)V

    .line 184
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/MyTableView;->setTableEnabled(Z)V

    .line 187
    new-instance v0, Lcom/htc/lib1/cc/widget/TableViewScrollControl;

    invoke-direct {v0}, Lcom/htc/lib1/cc/widget/TableViewScrollControl;-><init>()V

    .line 188
    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/TableViewScrollControl;->setOrientation(I)V

    .line 189
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/TableViewScrollControl;->setTableView(Lcom/htc/lib1/cc/view/table/TableView;)V

    .line 190
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/MyTableView;->setScrollControl(Lcom/htc/lib1/cc/view/ScrollControl;)V

    .line 192
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/MyTableView;->setSelector(I)V

    .line 194
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 195
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mBackgroundBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->initAllAboutFocus(Landroid/content/Context;)V

    .line 198
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->initObjectAnimator()V

    .line 201
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/widget/MyTableView;->setOnScrollListener(Lcom/htc/lib1/cc/view/table/e;)V

    .line 203
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    new-instance v1, Lcom/htc/lib1/cc/widget/HtcNumberPicker$1;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$1;-><init>(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)V

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/MyTableView;->setCenterViewListener(Lcom/htc/lib1/cc/view/table/i;)V

    .line 219
    :cond_0
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mHasAnimatorInited:Z

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTextColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewTextColor:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow2nd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow3rd:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mDigits:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mChangeTextStyle:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTextStyle:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPos:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/MyTableView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCustomShadow:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->shadow1st:Lcom/htc/lib1/cc/widget/HtcNumberPicker$NumberTextShadow;

    return-object v0
.end method

.method private checkIfLeftOrRightMost(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 338
    .line 340
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/htc/lib1/cc/widget/HtcDatePicker;

    .line 344
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    instance-of v2, v2, Lcom/htc/lib1/cc/widget/HtcTimePicker;

    .line 346
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    .line 349
    :cond_2
    if-eqz p1, :cond_4

    .line 350
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcDatePicker;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/widget/HtcDatePicker;->isTheMostLeftPicker(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcTimePicker;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->isTheMostLeftPicker(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Z

    move-result v0

    goto :goto_0

    .line 352
    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcDatePicker;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/widget/HtcDatePicker;->isTheMostRightPicker(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcTimePicker;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/widget/HtcTimePicker;->isTheMostRightPicker(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)Z

    move-result v0

    goto :goto_0
.end method

.method private findCenterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    if-nez v0, :cond_0

    .line 725
    const/4 v0, 0x0

    .line 726
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/MyTableView;->getCenterView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private getTimePickerColorResources(I)I
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/htc/lib1/cc/R$styleable;->SkinColor:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 224
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 225
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    return v1
.end method

.method private initAllAboutFocus(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_focused:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    .line 231
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 233
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getOverlayColor(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 235
    :cond_0
    return-void
.end method

.method private initObjectAnimator()V
    .locals 4

    .prologue
    .line 238
    const-string v0, "centerFadingColor"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColor:Landroid/animation/ObjectAnimator;

    .line 239
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColor:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 240
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    .line 241
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    .line 242
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    .line 243
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColor:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    .line 244
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 245
    return-void

    .line 238
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private measurePickerHeight(I)V
    .locals 2

    .prologue
    .line 587
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 588
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPickerHeightPortrait:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPickerHeight:I

    .line 589
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPickerHeight:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableHeight:I

    .line 590
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableChildHeightInXML:I

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/MyTableView;->setMyTableChildHeight(I)V

    .line 591
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableChildHeightInXML:I

    mul-int/lit8 v1, v1, 0x46

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/MyTableView;->setMyTableViewSlideOffset(I)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 593
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPickerHeightLandscape:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPickerHeight:I

    .line 594
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPickerHeight:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableHeight:I

    .line 595
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableHeight:I

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x18

    .line 596
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/MyTableView;->setMyTableChildHeight(I)V

    .line 597
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    mul-int/lit8 v0, v0, 0x41

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/MyTableView;->setMyTableViewSlideOffset(I)V

    goto :goto_0
.end method

.method private returnFocusToParent()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 361
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 363
    :cond_0
    return-void
.end method

.method private setCenterFadingColor(I)V
    .locals 4

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->findCenterView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;

    .line 249
    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewTextColor:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewTextColor:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewTextColor:I

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 274
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 275
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mBackgroundBorderWeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 276
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mBackgroundBorderWeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 278
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mDrawFocusIndicator:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 280
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 282
    :cond_0
    return-void
.end method

.method public getCenterView()I
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/MyTableView;->getCenterChildPosition()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->getStart()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 568
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getKeyOfPicker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mKeyOfPicker:Ljava/lang/String;

    return-object v0
.end method

.method getMyTableChildHeight()I
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/MyTableView;->getMyTableChildHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getTableView()Lcom/htc/lib1/cc/view/table/TableView;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    return-object v0
.end method

.method public getTableViewSlideOffset()I
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/MyTableView;->getTableViewSlideOffset()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 256
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mHasAnimatorInited:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->initObjectAnimator()V

    .line 259
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 264
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 266
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    .line 268
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mDrawFocusIndicator:Z

    .line 603
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 604
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 286
    .line 287
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 316
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 317
    if-eqz v0, :cond_1

    :goto_1
    return v0

    .line 289
    :sswitch_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getTableViewSlideOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/MyTableView;->slideWithOffset(I)V

    goto :goto_0

    .line 293
    :sswitch_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getTableViewSlideOffset()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/MyTableView;->slideWithOffset(I)V

    goto :goto_0

    .line 297
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mUsingTwoLayerFocus:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->checkIfLeftOrRightMost(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->returnFocusToParent()V

    goto :goto_0

    .line 303
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mUsingTwoLayerFocus:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->checkIfLeftOrRightMost(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->returnFocusToParent()V

    goto :goto_0

    .line 310
    :sswitch_4
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mUsingTwoLayerFocus:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->returnFocusToParent()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 317
    goto :goto_1

    .line 287
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 322
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 323
    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 578
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 580
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->measurePickerHeight(I)V

    .line 581
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPickerHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setMeasuredDimension(II)V

    .line 582
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPickerHeight:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 583
    return-void
.end method

.method public onScroll(Lcom/htc/lib1/cc/view/table/AbstractTableView;III)V
    .locals 0

    .prologue
    .line 738
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/lib1/cc/view/table/AbstractTableView;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 695
    if-ne p2, v3, :cond_0

    .line 697
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getCenterView()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/MyTableView;->setStopExcept(I)V

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    if-ne v0, p1, :cond_2

    .line 701
    if-ne v3, p2, :cond_3

    .line 702
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->isRightIdle:Z

    .line 703
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 706
    :cond_1
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->findCenterView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;

    .line 707
    if-eqz v0, :cond_2

    .line 708
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTextColor:I

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setTextColor(I)V

    .line 721
    :cond_2
    :goto_0
    return-void

    .line 710
    :cond_3
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->isRightIdle:Z

    if-ne v3, v0, :cond_5

    if-nez p2, :cond_5

    .line 713
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->isRightIdle:Z

    .line 714
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    .line 715
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mIdleScrollListener:Lcom/htc/lib1/cc/widget/ad;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mIdleScrollListener:Lcom/htc/lib1/cc/widget/ad;

    invoke-interface {v1, p0, v0}, Lcom/htc/lib1/cc/widget/ad;->onDataSet(Lcom/htc/lib1/cc/widget/HtcNumberPicker;I)V

    .line 716
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewFadingTextColorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 717
    :cond_5
    if-nez p2, :cond_2

    .line 718
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->isRightIdle:Z

    goto :goto_0
.end method

.method public setCenter(I)V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/lib1/cc/widget/MyTableView;->setCenterView(II)V

    .line 651
    :cond_0
    return-void
.end method

.method public setCenterView(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 617
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    if-nez v0, :cond_0

    .line 633
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mReadyToSet:Z

    if-eqz v0, :cond_2

    .line 619
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mIsNeverSlidedBeforeSet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mIsOnInitState:Z

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPos:I

    .line 620
    :cond_1
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPos:I

    .line 621
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;->getStart()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCurrent:I

    .line 623
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCurrent:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->setCenter(I)V

    .line 625
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/MyTableView;->setVisibility(I)V

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mIsNeverSlidedBeforeSet:Z

    .line 627
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mIsOnInitState:Z

    goto :goto_0

    .line 629
    :cond_2
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mPos:I

    .line 630
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/MyTableView;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setCountDownMode(Z)V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/MyTableView;->setCountDownMode(Z)V

    .line 510
    return-void
.end method

.method setKeyOfPicker(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 367
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mKeyOfPicker:Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/MyTableView;->setKeyOfMyTableView(Ljava/lang/String;)V

    .line 369
    :cond_0
    return-void
.end method

.method public setMultiStopDistance(I)Z
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/MyTableView;->setMultiStopDistance(I)Z

    move-result v0

    return v0
.end method

.method public setMultiStopDistance([I)Z
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/MyTableView;->setMultiStopDistance([I)Z

    move-result v0

    return v0
.end method

.method public setOnScrollIdleStateListener(Lcom/htc/lib1/cc/widget/ad;)V
    .locals 0

    .prologue
    .line 404
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mIdleScrollListener:Lcom/htc/lib1/cc/widget/ad;

    .line 405
    :cond_0
    return-void
.end method

.method public setRange(II)V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    .line 529
    :cond_0
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mStart:I

    .line 530
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mEnd:I

    .line 531
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;-><init>(Lcom/htc/lib1/cc/widget/HtcNumberPicker;II)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    .line 532
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/MyTableView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mReadyToSet:Z

    .line 535
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    .line 545
    :cond_0
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mStart:I

    .line 546
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mEnd:I

    .line 547
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;-><init>(Lcom/htc/lib1/cc/widget/HtcNumberPicker;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    .line 548
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/lib1/cc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/MyTableView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 550
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mReadyToSet:Z

    .line 551
    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/MyTableView;->setRepeatEnable(Z)V

    .line 917
    :cond_0
    return-void
.end method

.method public setShowNumberDigits(I)V
    .locals 0

    .prologue
    .line 558
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mDigits:I

    .line 559
    return-void
.end method

.method public setTableEnabled(Z)V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/MyTableView;->setTableEnabled(Z)V

    .line 659
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 444
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTextColor:I

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mChangeTextColor:Z

    .line 446
    return-void
.end method

.method public setTextStyle(I)V
    .locals 1

    .prologue
    .line 453
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTextStyle:I

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mChangeTextStyle:Z

    .line 455
    return-void
.end method

.method public usingTwoLayerFocus(ZLandroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 331
    instance-of v0, p2, Lcom/htc/lib1/cc/widget/HtcDatePicker;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/htc/lib1/cc/widget/HtcTimePicker;

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mUsingTwoLayerFocus:Z

    .line 333
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mMyParent:Landroid/view/ViewGroup;

    .line 335
    :cond_1
    return-void
.end method
