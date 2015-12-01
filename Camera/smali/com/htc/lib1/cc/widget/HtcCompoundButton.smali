.class public Lcom/htc/lib1/cc/widget/HtcCompoundButton;
.super Landroid/view/View;
.source "HtcCompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static BTN_STATES_PRESSOFF:I

.field private static BTN_STATES_PRESSON:I

.field private static BTN_STATES_RESTOFF:I

.field private static BTN_STATES_RESTON:I

.field protected static DRAWABLE_COUNTS:I

.field protected static STATES_COUNT:I

.field private static states:[Landroid/graphics/Bitmap;


# instance fields
.field protected isTriggerByPerformClick:Z

.field protected mBackgroundMode:I

.field protected mBackgroundPress:Landroid/graphics/drawable/Drawable;

.field protected mBackgroundRest:Landroid/graphics/drawable/Drawable;

.field private mBroadcasting:Z

.field protected mCategoryColor:I

.field private mCenterX:I

.field private mCenterY:I

.field private mChecked:Z

.field protected mContentPress:Landroid/graphics/drawable/Drawable;

.field private mContentPressAlpha:I

.field protected mContentRest:Landroid/graphics/drawable/Drawable;

.field private mCurrentState:I

.field protected mDrawOnce:Z

.field private mFocusIndicator:Landroid/graphics/drawable/Drawable;

.field private mGainFocus:Z

.field protected mHasOnState:Z

.field protected mInnerBackground:Landroid/graphics/drawable/Drawable;

.field protected mIsAnimating:Z

.field protected mIsContentMultiplyRequired:Z

.field protected mIsPartialModeEnabled:Z

.field protected mIsPartialSelect:Z

.field private mLastState:I

.field protected mMultiplyColor:I

.field private mOnCheckedChangeListener:Lcom/htc/lib1/cc/widget/u;

.field private mOnCheckedChangeWidgetListener:Lcom/htc/lib1/cc/widget/u;

.field protected mPartialSelection:Landroid/graphics/drawable/Drawable;

.field protected mSkipFirstUpDraw:Z

.field protected mTheSameWithPressOn:Z

.field private mTriggeredByKeyEvent:Z

.field protected mUnCheckUpAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x5

    sput v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->DRAWABLE_COUNTS:I

    .line 246
    const/4 v0, 0x4

    sput v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->STATES_COUNT:I

    .line 248
    const/4 v0, 0x0

    sput v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTOFF:I

    .line 249
    const/4 v0, 0x1

    sput v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTON:I

    .line 250
    const/4 v0, 0x2

    sput v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_PRESSOFF:I

    .line 251
    const/4 v0, 0x3

    sput v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_PRESSON:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mMultiplyColor:I

    .line 67
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCategoryColor:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 79
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mTheSameWithPressOn:Z

    .line 83
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsPartialSelect:Z

    .line 87
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsPartialModeEnabled:Z

    .line 91
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 94
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCenterX:I

    .line 95
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCenterY:I

    .line 96
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mChecked:Z

    .line 106
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mSkipFirstUpDraw:Z

    .line 110
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mUnCheckUpAnimating:Z

    .line 114
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isTriggerByPerformClick:Z

    .line 256
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    .line 258
    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTOFF:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTOFF:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mLastState:I

    .line 183
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundMode:I

    .line 184
    iput-boolean p3, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 185
    iput-boolean p4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 188
    invoke-static {p1, v2}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getOverlayColor(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mMultiplyColor:I

    .line 189
    invoke-static {p1, v2}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getCategoryColor(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCategoryColor:I

    .line 190
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setAccessibilityImportant()V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mMultiplyColor:I

    .line 67
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCategoryColor:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 79
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mTheSameWithPressOn:Z

    .line 83
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsPartialSelect:Z

    .line 87
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsPartialModeEnabled:Z

    .line 91
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 94
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCenterX:I

    .line 95
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCenterY:I

    .line 96
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mChecked:Z

    .line 106
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mSkipFirstUpDraw:Z

    .line 110
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mUnCheckUpAnimating:Z

    .line 114
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isTriggerByPerformClick:Z

    .line 256
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    .line 258
    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTOFF:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTOFF:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mLastState:I

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    return-void
.end method

.method private cancelEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 872
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 874
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mHasOnState:Z

    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setPressAlphaAnimation(I)V

    .line 876
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setOnAlphaAnimation(I)V

    .line 877
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->invalidate()V

    .line 883
    :goto_0
    return-void

    .line 879
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setPressAlphaAnimation(I)V

    .line 880
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setOnAlphaAnimation(I)V

    .line 881
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->invalidate()V

    goto :goto_0
.end method

.method private cancelPropertyMove()V
    .locals 1

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 921
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->cancelEvent()V

    .line 924
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 925
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onCheckDownAnimationCancel()V

    .line 929
    :cond_1
    :goto_0
    return-void

    .line 927
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onUnCheckDownAnimationCancel()V

    goto :goto_0
.end method

.method public static getDefaultSize(II)I
    .locals 2

    .prologue
    .line 828
    .line 829
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 830
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 832
    sparse-switch v1, :sswitch_data_0

    .line 843
    :goto_0
    :sswitch_0
    return p0

    .line 837
    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 840
    goto :goto_0

    .line 832
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleTouchEventWithoutAnimation(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 932
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 934
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 937
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->removePropertyUp()V

    goto :goto_0

    .line 939
    :cond_1
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    if-eqz v0, :cond_0

    .line 940
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    sget v1, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_PRESSON:I

    if-ne v0, v1, :cond_3

    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTON:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    .line 942
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->invalidate()V

    goto :goto_0

    .line 941
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    sget v1, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_PRESSOFF:I

    if-ne v0, v1, :cond_2

    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTOFF:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    goto :goto_1

    .line 947
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->removePropertyDown()V

    goto :goto_0

    .line 950
    :cond_4
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    if-eqz v0, :cond_0

    .line 951
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    sget v1, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTOFF:I

    if-ne v0, v1, :cond_6

    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_PRESSON:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    .line 953
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->invalidate()V

    goto :goto_0

    .line 952
    :cond_6
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    sget v1, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTON:I

    if-ne v0, v1, :cond_5

    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_PRESSOFF:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    goto :goto_2

    .line 958
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->cancelPropertyMove()V

    goto/16 :goto_0

    .line 961
    :cond_7
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    sget v1, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_PRESSON:I

    if-ne v0, v1, :cond_9

    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTOFF:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    .line 963
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->invalidate()V

    goto/16 :goto_0

    .line 962
    :cond_9
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    sget v1, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_PRESSOFF:I

    if-ne v0, v1, :cond_8

    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTON:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    goto :goto_3

    .line 967
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 969
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 972
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 973
    rsub-int/lit8 v3, v2, 0x0

    if-lt v0, v3, :cond_a

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    if-ge v0, v3, :cond_a

    rsub-int/lit8 v0, v2, 0x0

    if-lt v1, v0, :cond_a

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    .line 975
    :cond_a
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->cancelPropertyMove()V

    goto/16 :goto_0

    .line 977
    :cond_b
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    sget v1, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_PRESSON:I

    if-ne v0, v1, :cond_d

    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTOFF:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    .line 979
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->invalidate()V

    goto/16 :goto_0

    .line 978
    :cond_d
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    sget v1, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_PRESSOFF:I

    if-ne v0, v1, :cond_c

    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTON:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    goto :goto_4

    .line 932
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setChecked(Z)V

    .line 196
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    if-eqz p2, :cond_1

    .line 199
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->HtcAnimationButtonMode:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundMode:I

    .line 201
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->HtcCompoundButtonMode:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 205
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 206
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->View:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 209
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setFocusable(Z)V

    .line 210
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setClickable(Z)V

    .line 211
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    :goto_0
    invoke-static {p1, p2}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getOverlayColor(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mMultiplyColor:I

    .line 222
    invoke-static {p1, p2}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getCategoryColor(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCategoryColor:I

    .line 223
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setAccessibilityImportant()V

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_focused:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    .line 226
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 228
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 230
    :cond_0
    return-void

    .line 213
    :cond_1
    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundMode:I

    .line 214
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 215
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 216
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setFocusable(Z)V

    .line 217
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setClickable(Z)V

    goto :goto_0
.end method

.method private removePropertyDown()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 886
    .line 887
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mHasOnState:Z

    if-nez v0, :cond_2

    .line 888
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onCheckUpAnimationEnd()V

    .line 889
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onCheckDownAnimationStart()V

    .line 890
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setPressAlphaAnimation(I)V

    .line 891
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setOnAlphaAnimation(I)V

    .line 892
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onCheckDownAnimationEnd()V

    .line 893
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->invalidate()V

    .line 902
    :goto_0
    return-void

    .line 895
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onUnCheckUpAnimationEnd()V

    .line 896
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onUnCheckDownAnimationStart()V

    .line 897
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setPressAlphaAnimation(I)V

    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setOnAlphaAnimation(I)V

    .line 899
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onUnCheckDownAnimationEnd()V

    .line 900
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->invalidate()V

    goto :goto_0
.end method

.method private removePropertyUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 905
    .line 906
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mHasOnState:Z

    if-nez v0, :cond_2

    .line 907
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onCheckDownAnimationEnd()V

    .line 908
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onCheckUpAnimationStart()V

    .line 909
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setPressAlphaAnimation(I)V

    .line 910
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onCheckUpAnimationEnd()V

    .line 917
    :goto_0
    return-void

    .line 912
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onUnCheckDownAnimationEnd()V

    .line 913
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onUnCheckUpAnimationStart()V

    .line 914
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setPressAlphaAnimation(I)V

    .line 915
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onUnCheckUpAnimationEnd()V

    goto :goto_0
.end method

.method private setAccessibilityImportant()V
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setImportantForAccessibility(I)V

    .line 236
    :cond_0
    return-void
.end method

.method private setBounds()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1211
    const/4 v2, 0x0

    .line 1212
    const/4 v0, 0x5

    new-array v3, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v0

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v0

    .line 1214
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getMeasuredWidth()I

    move-result v4

    .line 1215
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getMeasuredHeight()I

    move-result v5

    .line 1217
    if-nez v3, :cond_1

    .line 1237
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1219
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_5

    .line 1220
    aget-object v6, v3, v0

    if-eqz v6, :cond_4

    aget-object v0, v3, v0

    .line 1222
    :goto_1
    if-eqz v0, :cond_0

    .line 1224
    if-nez v4, :cond_2

    if-eqz v5, :cond_0

    .line 1226
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1227
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1229
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCenterX:I

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    .line 1230
    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCenterY:I

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    .line 1231
    add-int/2addr v2, v4

    .line 1232
    add-int/2addr v0, v5

    .line 1234
    :goto_2
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 1235
    aget-object v6, v3, v1

    if-eqz v6, :cond_3

    aget-object v6, v3, v1

    invoke-virtual {v6, v4, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1234
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1219
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 675
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 677
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawStatesBitmap(Landroid/graphics/Canvas;)V

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawRestOff(Landroid/graphics/Canvas;)V

    .line 688
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mGainFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 690
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 683
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawPressOn(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 684
    :cond_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawRestOn(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 685
    :cond_5
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawPressOff(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected drawFgOn(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 773
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 775
    :cond_0
    return-void
.end method

.method protected drawFgRest(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 784
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 786
    :cond_0
    return-void
.end method

.method protected drawInner(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 764
    :cond_0
    return-void
.end method

.method protected drawOuter(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 748
    :cond_0
    return-void
.end method

.method protected drawPressOff(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mTheSameWithPressOn:Z

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawPressOn(Landroid/graphics/Canvas;)V

    .line 740
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawOuter(Landroid/graphics/Canvas;)V

    .line 737
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawPressed(Landroid/graphics/Canvas;)V

    .line 738
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawInner(Landroid/graphics/Canvas;)V

    .line 739
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawFgRest(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawPressOn(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 710
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawOuter(Landroid/graphics/Canvas;)V

    .line 711
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawPressed(Landroid/graphics/Canvas;)V

    .line 712
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawInner(Landroid/graphics/Canvas;)V

    .line 713
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawFgOn(Landroid/graphics/Canvas;)V

    .line 714
    return-void
.end method

.method protected drawPressed(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 756
    :cond_0
    return-void
.end method

.method protected drawRestOff(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawOuter(Landroid/graphics/Canvas;)V

    .line 701
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawInner(Landroid/graphics/Canvas;)V

    .line 702
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawFgRest(Landroid/graphics/Canvas;)V

    .line 703
    return-void
.end method

.method protected drawRestOn(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 721
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawOuter(Landroid/graphics/Canvas;)V

    .line 722
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawInner(Landroid/graphics/Canvas;)V

    .line 723
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->drawFgOn(Landroid/graphics/Canvas;)V

    .line 724
    return-void
.end method

.method protected drawStatesBitmap(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 657
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getStatesBitmap()[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_0

    .line 659
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 661
    :cond_0
    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 862
    invoke-super {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 864
    if-nez v0, :cond_0

    .line 865
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 868
    :cond_0
    return-object v0
.end method

.method protected getStatesBitmap()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->states:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 808
    :goto_0
    return v0

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 808
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 797
    :goto_0
    return v0

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mChecked:Z

    return v0
.end method

.method onCheckDownAnimationCancel()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method onCheckDownAnimationEnd()V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method onCheckDownAnimationStart()V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 449
    return-void
.end method

.method onCheckUpAnimationEnd()V
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 462
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->invalidate()V

    .line 463
    return-void
.end method

.method onCheckUpAnimationStart()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1068
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->cancelEvent()V

    .line 1069
    :cond_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mGainFocus:Z

    .line 1070
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1071
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundMode:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1072
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mGainFocus:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_5

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setAlpha(F)V

    .line 1074
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1075
    return-void

    .line 1071
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1072
    :cond_5
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 635
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 636
    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 637
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 638
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 646
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 647
    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 648
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 649
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 650
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->setEnableAnimation(Z)V

    .line 995
    sparse-switch p1, :sswitch_data_0

    .line 1010
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 998
    :sswitch_0
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->removePropertyDown()V

    goto :goto_0

    .line 1003
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->removePropertyDown()V

    goto :goto_0

    .line 995
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1020
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->setEnableAnimation(Z)V

    .line 1021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mTriggeredByKeyEvent:Z

    .line 1023
    sparse-switch p1, :sswitch_data_0

    .line 1040
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1026
    :sswitch_0
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->removePropertyUp()V

    goto :goto_0

    .line 1031
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->removePropertyUp()V

    goto :goto_0

    .line 1023
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setMeasuredDimension(II)V

    .line 819
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1140
    check-cast p1, Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;

    .line 1141
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1142
    iget-boolean v0, p1, Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setChecked(Z)V

    .line 1143
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->requestLayout()V

    .line 1144
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1128
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1129
    new-instance v1, Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;

    invoke-direct {v1, v0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1130
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/htc/lib1/cc/widget/HtcCompoundButton$SavedState;->checked:Z

    .line 1131
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 518
    const/4 v2, 0x0

    .line 519
    const/4 v0, 0x6

    new-array v3, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v0

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    aput-object v4, v3, v0

    move v0, v1

    .line 521
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 522
    aget-object v4, v3, v0

    if-eqz v4, :cond_0

    aget-object v0, v3, v0

    .line 524
    :goto_1
    if-nez v0, :cond_1

    .line 553
    :goto_2
    return-void

    .line 521
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    :cond_1
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    .line 527
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingLeft()I

    move-result v2

    .line 528
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingTop()I

    move-result v4

    .line 529
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingBottom()I

    move-result v5

    .line 530
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getPaddingRight()I

    move-result v6

    .line 532
    sub-int v7, p1, v2

    sub-int v6, v7, v6

    .line 533
    sub-int v7, p2, v4

    sub-int v5, v7, v5

    .line 535
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 536
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 539
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCenterX:I

    .line 540
    div-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v4

    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCenterY:I

    .line 543
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCenterX:I

    div-int/lit8 v4, v7, 0x2

    sub-int/2addr v2, v4

    .line 544
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCenterY:I

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    .line 545
    add-int v5, v2, v7

    .line 546
    add-int/2addr v0, v4

    .line 548
    :goto_3
    array-length v6, v3

    if-ge v1, v6, :cond_3

    .line 549
    aget-object v6, v3, v1

    if-eqz v6, :cond_2

    aget-object v6, v3, v1

    invoke-virtual {v6, v2, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 548
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 552
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1050
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->setEnableAnimation(Z)V

    .line 1051
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->handleTouchEventWithoutAnimation(Landroid/view/MotionEvent;)V

    .line 1057
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1054
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->handleTouchEventWithoutAnimation(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method onUnCheckDownAnimationCancel()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method onUnCheckDownAnimationEnd()V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method onUnCheckDownAnimationStart()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 472
    return-void
.end method

.method onUnCheckUpAnimationEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 484
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    .line 485
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isTriggerByPerformClick:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mSkipFirstUpDraw:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mTriggeredByKeyEvent:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mUnCheckUpAnimating:Z

    .line 487
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->invalidate()V

    .line 488
    return-void

    .line 486
    :cond_1
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mTriggeredByKeyEvent:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mTriggeredByKeyEvent:Z

    goto :goto_0
.end method

.method onUnCheckUpAnimationStart()V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 1062
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->cancelEvent()V

    .line 1063
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 1064
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 1189
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isTriggerByPerformClick:Z

    .line 1191
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mHasOnState:Z

    if-nez v0, :cond_3

    .line 1193
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onCheckUpAnimationEnd()V

    .line 1201
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    if-eqz v0, :cond_2

    .line 1202
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTOFF:I

    :goto_1
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    .line 1203
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->invalidate()V

    .line 1206
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->toggle()V

    .line 1207
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0

    .line 1196
    :cond_3
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->onUnCheckUpAnimationEnd()V

    goto :goto_0

    .line 1202
    :cond_4
    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTON:I

    goto :goto_1
.end method

.method public setButtonDrawableResources(IIIII)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1313
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1314
    if-lez p1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1315
    :goto_0
    if-lez p2, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1316
    :goto_1
    if-lez p3, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1317
    :goto_2
    if-lez p5, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1318
    :goto_3
    if-lez p4, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_0
    move-object v0, p0

    .line 1319
    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setButtonDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1320
    return-void

    :cond_1
    move-object v1, v4

    .line 1314
    goto :goto_0

    :cond_2
    move-object v2, v4

    .line 1315
    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 1316
    goto :goto_2

    :cond_4
    move-object v5, v4

    .line 1317
    goto :goto_3
.end method

.method public setButtonDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    .line 1248
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setButtonDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    .line 1249
    return-void
.end method

.method public setButtonDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    .line 1262
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1264
    :cond_0
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    .line 1265
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1266
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1267
    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1270
    :cond_1
    iput-object p3, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    .line 1271
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mInnerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1273
    :cond_2
    iput-object p5, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    .line 1274
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1275
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1276
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_3

    if-eqz p6, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1279
    :cond_3
    iput-object p4, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    .line 1280
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1282
    :cond_4
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setBounds()V

    .line 1283
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->requestLayout()V

    .line 1284
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 570
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_2

    .line 571
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mChecked:Z

    .line 572
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsPartialModeEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mChecked:Z

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mIsPartialSelect:Z

    .line 573
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 574
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mDrawOnce:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTON:I

    :goto_1
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mCurrentState:I

    .line 575
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->invalidate()V

    .line 578
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBroadcasting:Z

    if-eqz v0, :cond_5

    .line 592
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 572
    goto :goto_0

    .line 574
    :cond_4
    sget v0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->BTN_STATES_RESTOFF:I

    goto :goto_1

    .line 580
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBroadcasting:Z

    .line 582
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mOnCheckedChangeListener:Lcom/htc/lib1/cc/widget/u;

    if-eqz v0, :cond_6

    .line 583
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mOnCheckedChangeListener:Lcom/htc/lib1/cc/widget/u;

    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v2}, Lcom/htc/lib1/cc/widget/u;->a(Lcom/htc/lib1/cc/widget/HtcCompoundButton;Z)V

    .line 586
    :cond_6
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/htc/lib1/cc/widget/u;

    if-eqz v0, :cond_7

    .line 587
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/htc/lib1/cc/widget/u;

    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v2}, Lcom/htc/lib1/cc/widget/u;->a(Lcom/htc/lib1/cc/widget/HtcCompoundButton;Z)V

    .line 590
    :cond_7
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBroadcasting:Z

    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1151
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1153
    :cond_0
    if-eqz p1, :cond_1

    .line 1154
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1155
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setAlpha(F)V

    .line 1162
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1157
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1158
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundMode:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    const v0, 0x3ecccccd    # 0.4f

    .line 1159
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setAlpha(F)V

    goto :goto_1

    .line 1158
    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_2
.end method

.method setOnAlphaAnimation(I)V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 498
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mContentPressAlpha:I

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 501
    :cond_1
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/htc/lib1/cc/widget/u;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mOnCheckedChangeListener:Lcom/htc/lib1/cc/widget/u;

    .line 602
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/htc/lib1/cc/widget/u;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/htc/lib1/cc/widget/u;

    .line 613
    return-void
.end method

.method setPressAlphaAnimation(I)V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->mBackgroundPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 505
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 1169
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcCompoundButton;->setChecked(Z)V

    .line 1170
    return-void

    .line 1169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
