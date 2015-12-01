.class public Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
.super Ljava/lang/Object;
.source "PopupBubbleWindow.java"


# static fields
.field private static IS_TABLET:Z


# instance fields
.field private dropdownLayout:Landroid/view/WindowManager$LayoutParams;

.field private isViewRemove:Z

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

.field private mBubbleHerizontalOffset:I

.field private mBubbleLandHerizontalOffset:I

.field private mBubbleLandVerticalOffset:I

.field private mBubblePortraitBottomOffset:I

.field private mBubbleVerticalOffset:I

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCustomizeTriangleOffset:I

.field private mCustomizedContentWidth:I

.field private mDrawingLocation:[I

.field private mExpandDirection:I

.field private mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

.field private mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mHtcFooterBarLandWidth:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mListView:Lcom/htc/lib1/cc/widget/HtcListView;

.field private mMarginM2:I

.field private mMarginM3:I

.field private mMaxContentWidth:I

.field private mMaxWidth:I

.field private mMinContentWidth:I

.field private mMinFooterContentWidth:I

.field private mMinWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field mPopupPadding:Landroid/graphics/Rect;

.field private mPopupView:Landroid/view/View;

.field private mPopupWidth:I

.field private mScreenHeight:I

.field private mScreenLocation:[I

.field private mScreenWidth:I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mTriangle:Landroid/graphics/drawable/Drawable;

.field private mTriangleEdgeLimit:I

.field private mUsePortraitLimitOnly:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private final minWindowHeight:I

.field private status_bar_height:I

.field private triangleLayout:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->IS_TABLET:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;II)V

    .line 494
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 365
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 384
    sget v0, Lcom/htc/lib1/cc/b;->popupBubbleWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 385
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 410
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v2, -0x2

    const/4 v3, 0x1

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    .line 177
    iput v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mInputMethodMode:I

    .line 178
    iput v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mSoftInputMode:I

    .line 179
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTouchable:Z

    .line 180
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 181
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    .line 182
    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mSplitTouchEnabled:I

    .line 185
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 201
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    .line 202
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenLocation:[I

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 215
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    .line 218
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    .line 220
    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnimationStyle:I

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    .line 226
    iput v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxWidth:I

    .line 227
    iput v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinWidth:I

    .line 228
    iput v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxContentWidth:I

    .line 229
    iput v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinContentWidth:I

    .line 230
    iput v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinFooterContentWidth:I

    .line 234
    iput v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mCustomizedContentWidth:I

    .line 235
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mUsePortraitLimitOnly:Z

    .line 330
    new-instance v0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;-><init>(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1270
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->minWindowHeight:I

    .line 2155
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isViewRemove:Z

    .line 2157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 436
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 437
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 439
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->PopupBubbleWindow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 441
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 442
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    .line 443
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 444
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 447
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 448
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 449
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 452
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 453
    sget v3, Lcom/htc/lib1/cc/k;->HtcAnimation_PopuBubblepWindow:I

    if-ne v0, v3, :cond_2

    move v0, v1

    :cond_2
    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnimationStyle:I

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 459
    sget v1, Lcom/htc/lib1/cc/d;->bubble_vertical_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    .line 460
    sget v1, Lcom/htc/lib1/cc/d;->bubble_herizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    .line 462
    sget v1, Lcom/htc/lib1/cc/d;->bubble_land_vertical_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    .line 463
    sget v1, Lcom/htc/lib1/cc/d;->bubble_land_herizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandHerizontalOffset:I

    .line 465
    sget v1, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMarginM2:I

    .line 466
    sget v1, Lcom/htc/lib1/cc/d;->margin_s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMarginM3:I

    .line 467
    sget v1, Lcom/htc/lib1/cc/d;->htc_footer_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHtcFooterBarLandWidth:I

    .line 469
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMarginM2:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    .line 471
    sget v1, Lcom/htc/lib1/cc/d;->triangle_edge_limit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    .line 473
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->initLimit()V

    .line 475
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 478
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;-><init>(Landroid/view/View;IIZ)V

    .line 555
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x2

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    .line 177
    iput v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mInputMethodMode:I

    .line 178
    iput v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mSoftInputMode:I

    .line 179
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTouchable:Z

    .line 180
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 181
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    .line 182
    iput v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mSplitTouchEnabled:I

    .line 185
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 201
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    .line 202
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenLocation:[I

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 215
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    .line 218
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    .line 220
    iput v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnimationStyle:I

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    .line 226
    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxWidth:I

    .line 227
    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinWidth:I

    .line 228
    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxContentWidth:I

    .line 229
    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinContentWidth:I

    .line 230
    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinFooterContentWidth:I

    .line 234
    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mCustomizedContentWidth:I

    .line 235
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mUsePortraitLimitOnly:Z

    .line 330
    new-instance v0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;-><init>(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1270
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->minWindowHeight:I

    .line 2155
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isViewRemove:Z

    .line 2157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 578
    if-eqz p1, :cond_0

    .line 579
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 580
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 583
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 584
    invoke-virtual {p0, p2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setWidth(I)V

    .line 585
    invoke-virtual {p0, p3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setHeight(I)V

    .line 586
    invoke-virtual {p0, p4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setFocusable(Z)V

    .line 588
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMarginM2:I

    .line 589
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->margin_s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMarginM3:I

    .line 590
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->htc_footer_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHtcFooterBarLandWidth:I

    .line 591
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->initLimit()V

    .line 593
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 1611
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    .line 1612
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float v5, v3, v4

    .line 1613
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    .line 1614
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v10

    mul-float/2addr v6, v9

    add-float/2addr v4, v6

    .line 1615
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v6, v6

    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v7, v7

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 1616
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 1618
    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    move v4, v0

    .line 1619
    :goto_0
    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move v3, v0

    .line 1620
    :goto_1
    cmpg-float v2, v5, v6

    if-gez v2, :cond_2

    move v2, v0

    .line 1621
    :goto_2
    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    .line 1623
    :goto_3
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnimationStyle:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_c

    .line 1624
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    packed-switch v5, :pswitch_data_0

    .line 1657
    :goto_4
    return v1

    :cond_0
    move v4, v1

    .line 1618
    goto :goto_0

    :cond_1
    move v3, v1

    .line 1619
    goto :goto_1

    :cond_2
    move v2, v1

    .line 1620
    goto :goto_2

    :cond_3
    move v0, v1

    .line 1621
    goto :goto_3

    .line 1626
    :pswitch_0
    if-eqz v4, :cond_4

    .line 1627
    sget v1, Lcom/htc/lib1/cc/k;->DropDownUpBottomEast:I

    goto :goto_4

    .line 1628
    :cond_4
    if-eqz v3, :cond_5

    .line 1629
    sget v1, Lcom/htc/lib1/cc/k;->DropDownUpBottomWest:I

    goto :goto_4

    .line 1631
    :cond_5
    sget v1, Lcom/htc/lib1/cc/k;->DropDownUpBottomCenter:I

    goto :goto_4

    .line 1633
    :pswitch_1
    if-eqz v4, :cond_6

    .line 1634
    sget v1, Lcom/htc/lib1/cc/k;->DropDownDownTopEast:I

    goto :goto_4

    .line 1635
    :cond_6
    if-eqz v3, :cond_7

    .line 1636
    sget v1, Lcom/htc/lib1/cc/k;->DropDownDownTopWest:I

    goto :goto_4

    .line 1638
    :cond_7
    sget v1, Lcom/htc/lib1/cc/k;->DropDownDownTopCenter:I

    goto :goto_4

    .line 1640
    :pswitch_2
    if-eqz v2, :cond_8

    .line 1641
    sget v1, Lcom/htc/lib1/cc/k;->DropDownDownTopEast:I

    goto :goto_4

    .line 1642
    :cond_8
    if-eqz v0, :cond_9

    .line 1643
    sget v1, Lcom/htc/lib1/cc/k;->DropDownUpBottomEast:I

    goto :goto_4

    .line 1645
    :cond_9
    sget v1, Lcom/htc/lib1/cc/k;->DropDownLeft:I

    goto :goto_4

    .line 1647
    :pswitch_3
    if-eqz v2, :cond_a

    .line 1648
    sget v1, Lcom/htc/lib1/cc/k;->DropDownDownTopWest:I

    goto :goto_4

    .line 1649
    :cond_a
    if-eqz v0, :cond_b

    .line 1650
    sget v1, Lcom/htc/lib1/cc/k;->DropDownUpBottomWest:I

    goto :goto_4

    .line 1652
    :cond_b
    sget v1, Lcom/htc/lib1/cc/k;->DropDownRight:I

    goto :goto_4

    .line 1657
    :cond_c
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnimationStyle:I

    goto :goto_4

    .line 1624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private computeFlags(I)I
    .locals 4

    .prologue
    const/high16 v3, 0x20000

    .line 1551
    const v0, -0x868219

    and-int/2addr v0, p1

    .line 1553
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    if-eqz v1, :cond_0

    .line 1554
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1556
    :cond_0
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mFocusable:Z

    if-nez v1, :cond_7

    .line 1557
    or-int/lit8 v0, v0, 0x8

    .line 1558
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1559
    or-int/2addr v0, v3

    .line 1564
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTouchable:Z

    if-nez v1, :cond_2

    .line 1565
    or-int/lit8 v0, v0, 0x10

    .line 1567
    :cond_2
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    if-eqz v1, :cond_3

    .line 1568
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 1570
    :cond_3
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    if-nez v1, :cond_4

    .line 1571
    or-int/lit16 v0, v0, 0x200

    .line 1573
    :cond_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isSplitTouchEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1574
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1576
    :cond_5
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    if-eqz v1, :cond_6

    .line 1577
    or-int/lit16 v0, v0, 0x100

    .line 1579
    :cond_6
    return v0

    .line 1561
    :cond_7
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1562
    or-int/2addr v0, v3

    goto :goto_0
.end method

.method private computeTriangleFlags(I)I
    .locals 3

    .prologue
    .line 1583
    const v0, -0x868219

    and-int/2addr v0, p1

    .line 1585
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mIgnoreCheekPress:Z

    if-eqz v1, :cond_0

    .line 1586
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1589
    :cond_0
    or-int/lit8 v0, v0, 0x8

    .line 1590
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1591
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 1594
    :cond_1
    or-int/lit8 v0, v0, 0x10

    .line 1597
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    if-nez v1, :cond_2

    .line 1598
    or-int/lit16 v0, v0, 0x200

    .line 1600
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isSplitTouchEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1601
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1603
    :cond_3
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLayoutInScreen:Z

    if-eqz v1, :cond_4

    .line 1604
    or-int/lit16 v0, v0, 0x100

    .line 1606
    :cond_4
    return v0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    .line 1497
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1502
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1503
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWidth:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1504
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHeight:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1505
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1506
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1510
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1511
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1512
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1513
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1516
    return-object v0

    .line 1508
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private createTriangleLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    .line 1522
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1527
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1528
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1529
    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1530
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1537
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 1538
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1542
    :goto_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->computeTriangleFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1543
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1544
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1545
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1547
    return-object v0

    .line 1532
    :cond_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 1533
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1534
    :cond_3
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1535
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 1540
    :cond_4
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_1
.end method

.method private endDismissAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2162
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2164
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isViewRemove:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2173
    iput-object v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 2174
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 2175
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 2176
    const-string v0, "PopupBubbleWindow"

    const-string v1, "call onDismissListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 2180
    :cond_1
    :goto_0
    return-void

    .line 2165
    :catch_0
    move-exception v0

    .line 2166
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2173
    iput-object v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 2174
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 2175
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 2176
    const-string v0, "PopupBubbleWindow"

    const-string v1, "call onDismissListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    .line 2173
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 2174
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 2175
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v1, :cond_2

    .line 2176
    const-string v1, "PopupBubbleWindow"

    const-string v2, "call onDismissListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    throw v0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 1

    .prologue
    .line 1679
    sget-boolean v0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 1680
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->findDropDownPositionForTablet(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1684
    :goto_0
    return-void

    .line 1682
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->findDropDownPositionForPhone(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    goto :goto_0
.end method

.method private findDropDownPositionForPhone(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 1818
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1819
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1822
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1823
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1824
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    .line 1826
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1827
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 1830
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 1832
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-nez v0, :cond_1

    .line 1833
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenLocation:[I

    aget v4, v4, v1

    sub-int/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p4

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenLocation:[I

    aget v4, v4, v1

    sub-int/2addr v4, p4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_8

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    .line 1836
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v2, :cond_a

    .line 1837
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int/2addr v0, p3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1838
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    add-int/2addr v0, p4

    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupHeight:I

    sub-int/2addr v0, v4

    :goto_1
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1844
    :goto_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mClipToScreen:Z

    if-eqz v0, :cond_7

    .line 1845
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    .line 1846
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 1848
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v4, v5

    .line 1849
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v5, v6

    .line 1851
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-eq v5, v1, :cond_3

    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v5, v2, :cond_f

    .line 1853
    :cond_3
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    if-ge v5, v6, :cond_4

    .line 1854
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1857
    :cond_4
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v5, v1, :cond_c

    .line 1858
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_5

    .line 1859
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    add-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1867
    :cond_5
    :goto_3
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iget v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupWidth:I

    if-ge v5, v6, :cond_d

    .line 1868
    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v4, p3

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1869
    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1875
    :cond_6
    :goto_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupHeight:I

    if-ge v0, v4, :cond_e

    .line 1876
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    iget v2, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, p4

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1877
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    add-int/2addr v0, p4

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1922
    :cond_7
    :goto_5
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v1, 0x11000000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1924
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 1925
    return-void

    :cond_8
    move v0, v2

    .line 1833
    goto/16 :goto_0

    .line 1838
    :cond_9
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    add-int/2addr v0, p4

    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    goto/16 :goto_1

    .line 1840
    :cond_a
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v8, :cond_b

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandHerizontalOffset:I

    add-int/2addr v0, v4

    add-int/2addr v0, p3

    :goto_6
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1841
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int/2addr v0, p4

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    .line 1840
    :cond_b
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v7

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandHerizontalOffset:I

    sub-int/2addr v0, v4

    add-int/2addr v0, p3

    goto :goto_6

    .line 1862
    :cond_c
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_5

    .line 1863
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    add-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 1870
    :cond_d
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int v5, v0, v5

    if-le v4, v5, :cond_6

    .line 1871
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v4, v0

    iget v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v0, v4

    sub-int/2addr v0, p3

    sub-int v0, v5, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_4

    .line 1878
    :cond_e
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v2, :cond_7

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_7

    .line 1884
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_5

    .line 1890
    :cond_f
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_10

    .line 1891
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1893
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_10

    .line 1894
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1898
    :cond_10
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_11

    .line 1899
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 1900
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v0, p4

    sub-int v0, v1, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1902
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_11

    .line 1903
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1905
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1910
    :cond_11
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_12

    .line 1911
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v7

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandHerizontalOffset:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1912
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_5

    .line 1915
    :cond_12
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v8, :cond_7

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v1

    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_7

    .line 1916
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_5
.end method

.method private findDropDownPositionForTablet(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1687
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1688
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1691
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1692
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1693
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    .line 1695
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1696
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 1699
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-nez v0, :cond_1

    .line 1700
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenLocation:[I

    aget v5, v5, v1

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    sub-int/2addr v0, p4

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenLocation:[I

    aget v5, v5, v1

    sub-int/2addr v5, p4

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    if-ge v0, v5, :cond_9

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    .line 1703
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v2, :cond_f

    .line 1706
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    .line 1707
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v5, v5, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    sub-int/2addr v5, v6

    .line 1708
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v5

    iget v7, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 1710
    if-lez v0, :cond_b

    .line 1712
    iget v0, v4, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v0, v6

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v6

    if-ge v0, v5, :cond_a

    .line 1713
    iget v0, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v0, v5

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v5

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    move v0, v1

    .line 1734
    :goto_1
    if-nez v0, :cond_3

    .line 1735
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int/2addr v0, p3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1737
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    add-int/2addr v0, p4

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupHeight:I

    sub-int/2addr v0, v3

    :goto_2
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1743
    :goto_3
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mClipToScreen:Z

    if-eqz v0, :cond_8

    .line 1744
    iget v0, v4, Landroid/graphics/Rect;->right:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    .line 1745
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    .line 1747
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v3, v5

    .line 1748
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v5, v6

    .line 1750
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-eq v5, v1, :cond_4

    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v5, v2, :cond_13

    .line 1752
    :cond_4
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    if-ge v5, v6, :cond_5

    .line 1753
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1756
    :cond_5
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_6

    .line 1757
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    add-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1760
    :cond_6
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iget v6, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupWidth:I

    if-ge v5, v6, :cond_11

    .line 1761
    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v3, p3

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1762
    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1767
    :cond_7
    :goto_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupHeight:I

    if-ge v0, v3, :cond_12

    .line 1768
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    iget v2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sub-int/2addr v0, p4

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1769
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    add-int/2addr v0, p4

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1812
    :cond_8
    :goto_5
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v1, 0x11000000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1814
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 1815
    return-void

    :cond_9
    move v0, v2

    .line 1700
    goto/16 :goto_0

    :cond_a
    move v0, v3

    .line 1716
    goto/16 :goto_1

    .line 1720
    :cond_b
    if-gez v0, :cond_d

    .line 1722
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v0, v5

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v5

    if-le v0, v6, :cond_c

    .line 1723
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v0, v5

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    move v0, v1

    .line 1724
    goto/16 :goto_1

    :cond_c
    move v0, v3

    .line 1726
    goto/16 :goto_1

    :cond_d
    move v0, v3

    .line 1731
    goto/16 :goto_1

    .line 1737
    :cond_e
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    add-int/2addr v0, p4

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    goto/16 :goto_2

    .line 1739
    :cond_f
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v8, :cond_10

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    add-int/2addr v0, v3

    add-int/2addr v0, p3

    :goto_6
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1740
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int/2addr v0, p4

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 1739
    :cond_10
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v3

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v0, v3

    add-int/2addr v0, p3

    goto :goto_6

    .line 1763
    :cond_11
    iget v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int v5, v0, v5

    if-le v3, v5, :cond_7

    .line 1764
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v3, v0

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v0, v3

    sub-int/2addr v0, p3

    sub-int v0, v5, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_4

    .line 1771
    :cond_12
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v2, :cond_8

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v0, v2

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_8

    .line 1773
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenLocation:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_5

    .line 1779
    :cond_13
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_14

    .line 1780
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1782
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_14

    .line 1783
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1787
    :cond_14
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_15

    .line 1788
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 1789
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v0, p4

    sub-int v0, v1, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1791
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_15

    .line 1792
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1794
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandVerticalOffset:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1799
    :cond_15
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_16

    .line 1800
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v1, v2

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1801
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_5

    .line 1804
    :cond_16
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v8, :cond_8

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_8

    .line 1805
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleHerizontalOffset:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1806
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, p3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_5
.end method

.method private findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1928
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1929
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1930
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1931
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1935
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1936
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1938
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 1940
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v4, :cond_5

    .line 1941
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mCustomizeTriangleOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1942
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v2

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p4

    :goto_0
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1950
    :goto_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v4, :cond_8

    .line 1951
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    add-int/2addr v0, v1

    .line 1952
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    sub-int/2addr v1, v2

    .line 1953
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v2, v0, :cond_7

    .line 1954
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1966
    :cond_3
    :goto_2
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v1, 0x11000000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1967
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 1968
    return-void

    .line 1942
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleVerticalOffset:I

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    goto :goto_0

    .line 1945
    :cond_5
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v3

    add-int/2addr v0, p3

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandHerizontalOffset:I

    sub-int/2addr v0, v1

    :goto_3
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1947
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p4

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mCustomizeTriangleOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 1945
    :cond_6
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubbleLandHerizontalOffset:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    goto :goto_3

    .line 1955
    :cond_7
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_3

    .line 1956
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v0, v1, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    .line 1958
    :cond_8
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    add-int/2addr v0, v1

    .line 1959
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTriangleEdgeLimit:I

    sub-int/2addr v1, v2

    .line 1960
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v2, v0, :cond_9

    .line 1961
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    .line 1962
    :cond_9
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_3

    .line 1963
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int v0, v1, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2
.end method

.method private fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1981
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1982
    invoke-virtual {v3, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1990
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    packed-switch v1, :pswitch_data_0

    move v1, v0

    move v2, v0

    .line 2020
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;

    .line 2022
    if-eqz v0, :cond_0

    .line 2024
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->updateEnvironment()V

    .line 2026
    invoke-virtual {v0, v2, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->updateIndicatorOffset(II)V

    .line 2028
    :cond_0
    return-object v3

    .line 1992
    :pswitch_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v2

    .line 1994
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1995
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    move v2, v1

    move v1, v0

    .line 1996
    goto :goto_0

    .line 1999
    :pswitch_1
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v1, v2

    .line 2001
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2002
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v4

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v2, v4

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v4, v5

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    move v2, v1

    move v1, v0

    .line 2003
    goto :goto_0

    .line 2006
    :pswitch_2
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, v2

    .line 2008
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2009
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    move v2, v0

    .line 2010
    goto :goto_0

    .line 2013
    :pswitch_3
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, v2

    .line 2015
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2016
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    move v2, v0

    goto :goto_0

    .line 1990
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;

    .line 1477
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1481
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isViewRemove:Z

    .line 1482
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 1436
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_1

    .line 1437
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    :cond_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 1441
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1443
    if-eqz v2, :cond_3

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_3

    .line 1449
    :goto_0
    new-instance v2, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;-><init>(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;Landroid/content/Context;)V

    .line 1450
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1452
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1453
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v0, v3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1455
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 1459
    :goto_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupWidth:I

    .line 1460
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupHeight:I

    .line 1461
    return-void

    .line 1457
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 2504
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 2506
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2507
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2508
    if-eqz v0, :cond_0

    .line 2509
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2512
    :cond_0
    iput p2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorXoff:I

    .line 2513
    iput p3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorYoff:I

    .line 2514
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2491
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2493
    if-eqz v0, :cond_1

    .line 2494
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2496
    :goto_0
    if-eqz v0, :cond_0

    .line 2497
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2498
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2500
    :cond_0
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2501
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 12

    .prologue
    .line 2411
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2482
    :cond_0
    :goto_0
    return-void

    .line 2414
    :cond_1
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->checkWidthLimit(I)I

    move-result v1

    .line 2416
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2417
    if-eqz p2, :cond_b

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorXoff:I

    if-ne v2, p3, :cond_2

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v2, v0, :cond_b

    :cond_2
    const/4 v2, 0x1

    .line 2418
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3

    if-eqz v2, :cond_c

    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mIsDropdown:Z

    if-nez v3, :cond_c

    .line 2419
    :cond_3
    move/from16 v0, p4

    invoke-direct {p0, p1, p3, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 2427
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2429
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2430
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2432
    if-eqz p5, :cond_5

    .line 2433
    const/4 v5, -0x1

    if-ne v1, v5, :cond_d

    .line 2434
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupWidth:I

    .line 2438
    :goto_3
    const/4 v5, -0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_e

    .line 2439
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 2443
    :goto_4
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2444
    move/from16 v0, p7

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2447
    :cond_5
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2448
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2450
    const/4 v1, 0x0

    .line 2452
    iget v7, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorXoff:I

    iget v8, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v2, v7, v8}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 2454
    iget-object v7, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2455
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2456
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2457
    iget v10, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorXoff:I

    iget v11, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v7, v10, v11}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 2459
    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v10, v5, :cond_6

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v5, v6, :cond_6

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v3, v5, :cond_6

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, v3, :cond_6

    iget v3, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v3, v8, :cond_6

    iget v3, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v3, v9, :cond_7

    .line 2460
    :cond_6
    const/4 v1, 0x1

    .line 2463
    :cond_7
    invoke-direct {p0, v2, v7}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    .line 2464
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v3, v4, :cond_8

    .line 2465
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2466
    const/4 v1, 0x1

    .line 2469
    :cond_8
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v3

    .line 2470
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v4, :cond_9

    .line 2471
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2472
    const/4 v1, 0x1

    .line 2474
    :cond_9
    if-eqz v1, :cond_0

    .line 2475
    if-eqz v2, :cond_a

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v1, :cond_a

    .line 2476
    const/16 v1, 0x64

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2478
    :cond_a
    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 2479
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-direct {p0, v2, v7}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2417
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2420
    :cond_c
    if-eqz v2, :cond_4

    .line 2423
    iput p3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorXoff:I

    .line 2424
    move/from16 v0, p4

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorYoff:I

    goto/16 :goto_2

    .line 2436
    :cond_d
    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupWidth:I

    goto/16 :goto_3

    .line 2441
    :cond_e
    move/from16 v0, p7

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupHeight:I

    goto/16 :goto_4
.end method


# virtual methods
.method protected checkContentWidthLimit(I)I
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->initLimit()V

    .line 317
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mCustomizedContentWidth:I

    if-lez v0, :cond_0

    .line 318
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mCustomizedContentWidth:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinContentWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 319
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxContentWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 324
    :goto_0
    return v0

    .line 321
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinContentWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 322
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxContentWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method protected checkWidthLimit(I)I
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->initLimit()V

    .line 303
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mCustomizedContentWidth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 305
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mCustomizedContentWidth:I

    add-int p1, v0, v1

    .line 308
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 309
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 310
    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 2131
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2132
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 2135
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$PopupBubbleViewContainer;

    .line 2137
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2138
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2139
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dismissWithoutAnimation()V

    .line 2141
    :cond_0
    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 1

    .prologue
    .line 2149
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2150
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->endDismissAnimation()V

    .line 2152
    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1145
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 813
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2083
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2084
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2086
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mDrawingLocation:[I

    .line 2087
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2089
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    if-nez v0, :cond_3

    .line 2090
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2091
    if-eqz p3, :cond_1

    .line 2092
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2093
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBubblePortraitBottomOffset:I

    sub-int/2addr v0, v3

    .line 2095
    :cond_1
    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    sub-int/2addr v0, p2

    .line 2096
    aget v2, v2, v5

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    add-int/2addr v1, p2

    .line 2099
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2100
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 2101
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2102
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 2117
    :cond_2
    :goto_0
    return v0

    .line 2106
    :cond_3
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2107
    if-eqz p3, :cond_4

    .line 2108
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2109
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2111
    :cond_4
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->status_bar_height:I

    .line 2112
    sub-int/2addr v0, v1

    .line 2113
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 2114
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2115
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1182
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWidth:I

    return v0
.end method

.method protected initLimit()V
    .locals 8

    .prologue
    const-wide v4, 0x3fe6666666666666L    # 0.7

    const-wide v6, 0x3fe3333333333333L    # 0.6

    .line 239
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 241
    if-nez v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenWidth:I

    if-eq v0, v2, :cond_0

    .line 245
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenWidth:I

    .line 246
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenHeight:I

    .line 252
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenWidth:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMarginM2:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxWidth:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxContentWidth:I

    .line 254
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenWidth:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenHeight:I

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    .line 256
    :goto_1
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mUsePortraitLimitOnly:Z

    if-eqz v2, :cond_3

    .line 257
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v4

    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMarginM2:I

    int-to-double v4, v0

    sub-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinWidth:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinContentWidth:I

    .line 258
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v6

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMarginM2:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHtcFooterBarLandWidth:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinFooterContentWidth:I

    .line 268
    :goto_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 270
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 271
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxContentWidth:I

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxContentWidth:I

    .line 272
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinContentWidth:I

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinContentWidth:I

    .line 273
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinFooterContentWidth:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinFooterContentWidth:I

    .line 275
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinContentWidth:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinWidth:I

    .line 276
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxContentWidth:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMaxWidth:I

    goto/16 :goto_0

    .line 254
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 259
    :cond_3
    if-eqz v0, :cond_4

    .line 260
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenWidth:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMarginM2:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinWidth:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinContentWidth:I

    .line 261
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenHeight:I

    int-to-double v0, v0

    mul-double/2addr v0, v6

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMarginM2:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHtcFooterBarLandWidth:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinFooterContentWidth:I

    goto :goto_2

    .line 263
    :cond_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mScreenWidth:I

    int-to-double v0, v0

    mul-double/2addr v0, v6

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMarginM2:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHtcFooterBarLandWidth:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinWidth:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinContentWidth:I

    .line 264
    iget v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinContentWidth:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mMinFooterContentWidth:I

    goto :goto_2
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1212
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 1

    .prologue
    .line 1031
    const/4 v0, 0x0

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0

    .prologue
    .line 1013
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 1014
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1

    .prologue
    .line 1002
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mClipToScreen:Z

    .line 1003
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setClippingEnabled(Z)V

    .line 1004
    return-void

    .line 1003
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    .prologue
    .line 991
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mClippingEnabled:Z

    .line 992
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    .line 740
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method protected setCustomizedContentWidth(I)V
    .locals 0

    .prologue
    .line 296
    iput p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mCustomizedContentWidth:I

    .line 297
    return-void
.end method

.method public setExpandDirection(I)V
    .locals 0

    .prologue
    .line 1391
    iput p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mExpandDirection:I

    .line 1392
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    .prologue
    .line 799
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mFocusable:Z

    .line 800
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 1164
    iput p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHeight:I

    .line 1165
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    .prologue
    .line 834
    iput p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mInputMethodMode:I

    .line 835
    return-void
.end method

.method setListViewHook(Lcom/htc/lib1/cc/widget/HtcListView;)V
    .locals 0

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mListView:Lcom/htc/lib1/cc/widget/HtcListView;

    .line 1376
    return-void
.end method

.method public setOnDismissListener(Lcom/htc/lib1/cc/widget/as;)V
    .locals 0

    .prologue
    .line 2189
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2190
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0

    .prologue
    .line 947
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 948
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 760
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .prologue
    .line 907
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mTouchable:Z

    .line 908
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 1201
    iput p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWidth:I

    .line 1202
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0

    .prologue
    .line 1126
    iput p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWidthMode:I

    .line 1127
    iput p2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHeightMode:I

    .line 1128
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 1309
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1315
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1316
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1319
    :cond_2
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWidthMode:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHeightMode:I

    if-ne v1, v3, :cond_4

    .line 1320
    :cond_3
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 1323
    :cond_4
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWidthMode:I

    if-ne v1, v3, :cond_5

    .line 1324
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWidth:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLastWidth:I

    .line 1327
    :cond_5
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHeightMode:I

    if-ne v1, v3, :cond_6

    .line 1328
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHeight:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLastHeight:I

    .line 1331
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 1333
    iput-boolean v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mIsShowing:Z

    .line 1334
    iput-boolean v5, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mIsDropdown:Z

    .line 1336
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1338
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWidthMode:I

    if-ne v1, v4, :cond_7

    .line 1339
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWidthMode:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1340
    :cond_7
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHeightMode:I

    if-ne v1, v4, :cond_8

    .line 1341
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHeightMode:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1343
    :cond_8
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1345
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1347
    if-eqz v0, :cond_9

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v1, :cond_9

    .line 1348
    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1351
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->createTriangleLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1353
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1355
    if-eqz v0, :cond_0

    .line 1356
    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1358
    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1359
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public update(II)V
    .locals 6

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->update(IIIIZ)V

    .line 2253
    return-void
.end method

.method public update(IIII)V
    .locals 6

    .prologue
    .line 2274
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->update(IIIIZ)V

    .line 2275
    return-void
.end method

.method public update(IIIIZ)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    .line 2297
    if-eq p3, v4, :cond_0

    .line 2298
    invoke-virtual {p0, p3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->checkWidthLimit(I)I

    move-result p3

    .line 2299
    iput p3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLastWidth:I

    .line 2300
    invoke-virtual {p0, p3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setWidth(I)V

    .line 2303
    :cond_0
    if-eq p4, v4, :cond_1

    .line 2304
    iput p4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLastHeight:I

    .line 2305
    invoke-virtual {p0, p4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setHeight(I)V

    .line 2308
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 2354
    :cond_2
    :goto_0
    return-void

    .line 2312
    :cond_3
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2316
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWidthMode:I

    if-gez v1, :cond_a

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWidthMode:I

    .line 2317
    :goto_1
    if-eq p3, v4, :cond_4

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v3, v1, :cond_4

    .line 2318
    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLastWidth:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    move p5, v0

    .line 2321
    :cond_4
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHeightMode:I

    if-gez v1, :cond_b

    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mHeightMode:I

    .line 2322
    :goto_2
    if-eq p4, v4, :cond_5

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v3, v1, :cond_5

    .line 2323
    iput v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLastHeight:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    move p5, v0

    .line 2326
    :cond_5
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v1, p1, :cond_6

    .line 2327
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v0

    .line 2331
    :cond_6
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v1, p2, :cond_7

    .line 2332
    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v0

    .line 2336
    :cond_7
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v2, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 2337
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v3, :cond_8

    .line 2338
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v0

    .line 2342
    :cond_8
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->computeFlags(I)I

    move-result v1

    .line 2343
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v3, :cond_c

    .line 2344
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2347
    :goto_3
    if-eqz v0, :cond_2

    .line 2348
    if-eqz v2, :cond_9

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v0, :cond_9

    .line 2349
    const/16 v0, 0x64

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2351
    :cond_9
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    .line 2352
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v2, v3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2316
    :cond_a
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLastWidth:I

    goto :goto_1

    .line 2321
    :cond_b
    iget v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mLastHeight:I

    goto :goto_2

    :cond_c
    move v0, p5

    goto :goto_3
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 2407
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->update(Landroid/view/View;ZIIZII)V

    .line 2408
    return-void
.end method
