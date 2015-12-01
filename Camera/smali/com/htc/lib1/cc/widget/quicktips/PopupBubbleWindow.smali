.class public Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;
.super Ljava/lang/Object;
.source "PopupBubbleWindow.java"


# static fields
.field protected static M1:I

.field protected static M2:I

.field protected static M3:I

.field protected static M4:I

.field protected static M5:I

.field protected static mIncreasedTouchSize:I


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

.field protected mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBubbleBodyOffset:I

.field protected mBubbleHeadOffset:I

.field protected mBubbleLandBodyOffset:I

.field protected mBubbleLandHeadOffset:I

.field protected mCategoryColor:I

.field protected mClearIconWidth:I

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCustomizeTriangleOffset:I

.field private mCustomizedContentWidth:I

.field private mDrawingLocation:[I

.field protected mExpandDirection:I

.field private mExpandDirectionUndefined:Z

.field private mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

.field private mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusable:Z

.field private mGap:I

.field private mGravity:I

.field private mHeight:I

.field private mHeightMode:I

.field private mHtcFooterBarLandWidth:I

.field private mIgnoreCheekPress:Z

.field protected mImageSrc:Landroid/graphics/drawable/Drawable;

.field private mInputMethodMode:I

.field protected mIsCloseVisible:Z

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mMaxContentWidth:I

.field private mMaxWidth:I

.field private mMinContentWidth:I

.field private mMinFooterContentWidth:I

.field private mMinWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field protected mOnUserDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOutsideTouchable:Z

.field protected mParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupHeight:I

.field mPopupPadding:Landroid/graphics/Rect;

.field protected mPopupShadowBottom:I

.field protected mPopupShadowLeft:I

.field protected mPopupShadowRight:I

.field protected mPopupShadowTop:I

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

.field private mTriangledOffset:I

.field private mUsePortraitLimitOnly:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;

.field protected mXoff:I

.field protected mYoff:I

.field private final minWindowHeight:I

.field private triangleLayout:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIncreasedTouchSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 445
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 463
    sget v0, Lcom/htc/lib1/cc/b;->popupBubbleWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 464
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 488
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-boolean v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirectionUndefined:Z

    .line 196
    iput v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mInputMethodMode:I

    .line 197
    iput v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mSoftInputMode:I

    .line 198
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTouchable:Z

    .line 199
    iput-boolean v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 200
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mClippingEnabled:Z

    .line 201
    iput v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mSplitTouchEnabled:I

    .line 204
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAllowScrollingAnchorParent:Z

    .line 220
    iput v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    .line 221
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    .line 222
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenLocation:[I

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 236
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowLayoutType:I

    .line 241
    iput-boolean v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIgnoreCheekPress:Z

    .line 243
    iput v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnimationStyle:I

    .line 248
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    .line 249
    iput v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMaxWidth:I

    .line 250
    iput v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinWidth:I

    .line 251
    iput v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMaxContentWidth:I

    .line 252
    iput v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinContentWidth:I

    .line 253
    iput v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinFooterContentWidth:I

    .line 266
    iput v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mCustomizedContentWidth:I

    .line 267
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mUsePortraitLimitOnly:Z

    .line 270
    iput v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mXoff:I

    .line 272
    iput v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mYoff:I

    .line 273
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGravity:I

    .line 287
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIsCloseVisible:Z

    .line 379
    new-instance v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$1;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$1;-><init>(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 393
    new-instance v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;-><init>(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1466
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->minWindowHeight:I

    .line 2280
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->isViewRemove:Z

    .line 2282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 515
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 516
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 517
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 520
    new-array v0, v3, [I

    sget v3, Lcom/htc/lib1/cc/b;->category_color:I

    aput v3, v0, v5

    .line 523
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 524
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/htc/lib1/cc/c;->overlay_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mCategoryColor:I

    .line 525
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 527
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->PopupBubbleWindow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 528
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 529
    sget v4, Lcom/htc/lib1/cc/k;->HtcAnimation_PopuBubblepWindow:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnimationStyle:I

    .line 530
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 532
    sget v0, Lcom/htc/lib1/cc/e;->tips_panel_shadow:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 533
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->initTriangle(Landroid/content/res/Resources;)V

    .line 536
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->margin_l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M1:I

    .line 537
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M2:I

    .line 538
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->margin_s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M3:I

    .line 539
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->margin_xs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M4:I

    .line 540
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M5:I

    .line 541
    sget v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M2:I

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIncreasedTouchSize:I

    .line 543
    iput v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangledOffset:I

    .line 544
    sget v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M2:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleHeadOffset:I

    .line 545
    sget v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M4:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    .line 546
    sget v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M2:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandHeadOffset:I

    .line 547
    sget v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M4:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    .line 548
    sget v0, Lcom/htc/lib1/cc/d;->htc_footer_width:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHtcFooterBarLandWidth:I

    .line 549
    sget v0, Lcom/htc/lib1/cc/d;->triangle_edge_limit:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangleEdgeLimit:I

    .line 554
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 556
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 558
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    .line 559
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    .line 560
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowRight:I

    .line 561
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    .line 566
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->initLimit()V

    .line 569
    return-void

    .line 563
    :cond_1
    iput v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    iput v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    iput v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    iput v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)[I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGravity:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;Landroid/view/View;ZIIZII)V
    .locals 0

    .prologue
    .line 117
    invoke-direct/range {p0 .. p7}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->update(Landroid/view/View;ZIIZII)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected static applyColorMultiply(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 612
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 613
    return-object p0
.end method

.method private computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 1824
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    .line 1825
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float v5, v3, v4

    .line 1826
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    .line 1827
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v10

    mul-float/2addr v6, v9

    add-float/2addr v4, v6

    .line 1828
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v6, v6

    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v7, v7

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    .line 1829
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 1831
    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    move v4, v0

    .line 1832
    :goto_0
    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move v3, v0

    .line 1833
    :goto_1
    cmpg-float v2, v5, v6

    if-gez v2, :cond_2

    move v2, v0

    .line 1834
    :goto_2
    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    .line 1836
    :goto_3
    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnimationStyle:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_c

    .line 1837
    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    packed-switch v5, :pswitch_data_0

    .line 1870
    :goto_4
    return v1

    :cond_0
    move v4, v1

    .line 1831
    goto :goto_0

    :cond_1
    move v3, v1

    .line 1832
    goto :goto_1

    :cond_2
    move v2, v1

    .line 1833
    goto :goto_2

    :cond_3
    move v0, v1

    .line 1834
    goto :goto_3

    .line 1839
    :pswitch_0
    if-eqz v4, :cond_4

    .line 1840
    sget v1, Lcom/htc/lib1/cc/k;->DropDownUpBottomEast:I

    goto :goto_4

    .line 1841
    :cond_4
    if-eqz v3, :cond_5

    .line 1842
    sget v1, Lcom/htc/lib1/cc/k;->DropDownUpBottomWest:I

    goto :goto_4

    .line 1844
    :cond_5
    sget v1, Lcom/htc/lib1/cc/k;->DropDownUpBottomCenter:I

    goto :goto_4

    .line 1846
    :pswitch_1
    if-eqz v4, :cond_6

    .line 1847
    sget v1, Lcom/htc/lib1/cc/k;->DropDownDownTopEast:I

    goto :goto_4

    .line 1848
    :cond_6
    if-eqz v3, :cond_7

    .line 1849
    sget v1, Lcom/htc/lib1/cc/k;->DropDownDownTopWest:I

    goto :goto_4

    .line 1851
    :cond_7
    sget v1, Lcom/htc/lib1/cc/k;->DropDownDownTopCenter:I

    goto :goto_4

    .line 1853
    :pswitch_2
    if-eqz v2, :cond_8

    .line 1854
    sget v1, Lcom/htc/lib1/cc/k;->DropDownDownTopEast:I

    goto :goto_4

    .line 1855
    :cond_8
    if-eqz v0, :cond_9

    .line 1856
    sget v1, Lcom/htc/lib1/cc/k;->DropDownUpBottomEast:I

    goto :goto_4

    .line 1858
    :cond_9
    sget v1, Lcom/htc/lib1/cc/k;->DropDownLeft:I

    goto :goto_4

    .line 1860
    :pswitch_3
    if-eqz v2, :cond_a

    .line 1861
    sget v1, Lcom/htc/lib1/cc/k;->DropDownDownTopWest:I

    goto :goto_4

    .line 1862
    :cond_a
    if-eqz v0, :cond_b

    .line 1863
    sget v1, Lcom/htc/lib1/cc/k;->DropDownUpBottomWest:I

    goto :goto_4

    .line 1865
    :cond_b
    sget v1, Lcom/htc/lib1/cc/k;->DropDownRight:I

    goto :goto_4

    .line 1870
    :cond_c
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnimationStyle:I

    goto :goto_4

    .line 1837
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

    .line 1756
    const v0, -0x868219

    and-int/2addr v0, p1

    .line 1762
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIgnoreCheekPress:Z

    if-eqz v1, :cond_0

    .line 1763
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1765
    :cond_0
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mFocusable:Z

    if-nez v1, :cond_7

    .line 1766
    or-int/lit8 v0, v0, 0x8

    .line 1767
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1768
    or-int/2addr v0, v3

    .line 1773
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTouchable:Z

    if-nez v1, :cond_2

    .line 1774
    or-int/lit8 v0, v0, 0x10

    .line 1776
    :cond_2
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOutsideTouchable:Z

    if-eqz v1, :cond_3

    .line 1777
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 1779
    :cond_3
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mClippingEnabled:Z

    if-nez v1, :cond_4

    .line 1780
    or-int/lit16 v0, v0, 0x200

    .line 1782
    :cond_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->isSplitTouchEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1783
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1785
    :cond_5
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mLayoutInScreen:Z

    if-eqz v1, :cond_6

    .line 1786
    or-int/lit16 v0, v0, 0x100

    .line 1788
    :cond_6
    return v0

    .line 1770
    :cond_7
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1771
    or-int/2addr v0, v3

    goto :goto_0
.end method

.method private computeTriangleFlags(I)I
    .locals 3

    .prologue
    .line 1792
    const v0, -0x868219

    and-int/2addr v0, p1

    .line 1798
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIgnoreCheekPress:Z

    if-eqz v1, :cond_0

    .line 1799
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1802
    :cond_0
    or-int/lit8 v0, v0, 0x8

    .line 1803
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1804
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 1807
    :cond_1
    or-int/lit8 v0, v0, 0x10

    .line 1810
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mClippingEnabled:Z

    if-nez v1, :cond_2

    .line 1811
    or-int/lit16 v0, v0, 0x200

    .line 1813
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->isSplitTouchEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1814
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1816
    :cond_3
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mLayoutInScreen:Z

    if-eqz v1, :cond_4

    .line 1817
    or-int/lit16 v0, v0, 0x100

    .line 1819
    :cond_4
    return v0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    .line 1700
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1705
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1706
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWidth:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1707
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHeight:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1708
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1709
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1713
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1714
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1715
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1716
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1717
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

    .line 1719
    return-object v0

    .line 1711
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private createTriangleLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    .line 1725
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1730
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1731
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1734
    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1735
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1742
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 1743
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1747
    :goto_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->computeTriangleFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1748
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1749
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1750
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1752
    return-object v0

    .line 1737
    :cond_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 1738
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1739
    :cond_3
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1740
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 1745
    :cond_4
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_1
.end method

.method private dismissWithoutAnimation()V
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2275
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->endDismissAnimation()V

    .line 2277
    :cond_0
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 601
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 602
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 603
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 605
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 606
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 607
    return-object v0

    .line 601
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private endDismissAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2287
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2289
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->isViewRemove:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2298
    iput-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 2299
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIsShowing:Z

    .line 2300
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 2301
    const-string v0, "PopupBubbleWindow"

    const-string v1, "call onDismissListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 2305
    :cond_1
    :goto_0
    return-void

    .line 2290
    :catch_0
    move-exception v0

    .line 2291
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2298
    iput-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 2299
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIsShowing:Z

    .line 2300
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 2301
    const-string v0, "PopupBubbleWindow"

    const-string v1, "call onDismissListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    .line 2298
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 2299
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIsShowing:Z

    .line 2300
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v1, :cond_2

    .line 2301
    const-string v1, "PopupBubbleWindow"

    const-string v2, "call onDismissListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    throw v0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v2, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 1895
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1896
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1897
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenLocation:[I

    aget v0, v0, v1

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v3, v3, v1

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    .line 1899
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->getStatusBarHeight(Landroid/view/View;)F

    move-result v0

    float-to-int v3, v0

    .line 1900
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1901
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 1904
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirectionUndefined:Z

    if-eqz v0, :cond_2

    .line 1905
    :cond_1
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenLocation:[I

    aget v5, v5, v1

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    sub-int/2addr v0, p4

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenLocation:[I

    aget v5, v5, v1

    sub-int/2addr v5, p4

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    if-ge v0, v5, :cond_9

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    .line 1908
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_a

    .line 1909
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirectionUndefined:Z

    .line 1915
    :cond_2
    :goto_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v2, :cond_c

    .line 1917
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    add-int/2addr v0, p3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1918
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    add-int/2addr v0, p4

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleHeadOffset:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v5, v6

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupHeight:I

    sub-int/2addr v0, v5

    :goto_2
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1930
    :goto_3
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mClipToScreen:Z

    if-eqz v0, :cond_8

    .line 1931
    iget v0, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v5

    .line 1933
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 1937
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v5, v6

    .line 1938
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v6, v7

    .line 1940
    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-eq v6, v1, :cond_4

    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-ne v6, v2, :cond_11

    .line 1943
    :cond_4
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v8, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_5

    .line 1944
    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    sub-int/2addr v6, v7

    add-int/2addr v6, p3

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1947
    :cond_5
    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-ne v6, v1, :cond_e

    .line 1948
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v8, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v3

    iget v8, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_6

    .line 1949
    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v6, v7

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1957
    :cond_6
    :goto_4
    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    sub-int/2addr v6, v7

    sub-int v6, v0, v6

    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v8, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowRight:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupWidth:I

    if-ge v6, v7, :cond_f

    .line 1958
    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    sub-int/2addr v5, v6

    add-int/2addr v5, p3

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1959
    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    sub-int/2addr v5, v6

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowRight:I

    sub-int/2addr v5, v6

    sub-int/2addr v0, v5

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1960
    invoke-virtual {p0, p2}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->resetHeight(Landroid/view/WindowManager$LayoutParams;)V

    .line 1967
    :cond_7
    :goto_5
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleHeadOffset:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v5, v6

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v0, v5

    sub-int/2addr v0, v3

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupHeight:I

    if-ge v0, v5, :cond_10

    .line 1969
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    add-int/2addr v0, v2

    iget v2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleHeadOffset:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v2, v4

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    sub-int/2addr v2, v4

    sub-int/2addr v0, v2

    sub-int/2addr v0, p4

    sub-int/2addr v0, v3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1971
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    add-int/2addr v0, p4

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleHeadOffset:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2016
    :cond_8
    :goto_6
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v1, 0x11000000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2018
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2019
    return-void

    :cond_9
    move v0, v2

    .line 1905
    goto/16 :goto_0

    .line 1911
    :cond_a
    iput-boolean v8, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirectionUndefined:Z

    goto/16 :goto_1

    .line 1918
    :cond_b
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    add-int/2addr v0, p4

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleHeadOffset:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    goto/16 :goto_2

    .line 1923
    :cond_c
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v9, :cond_d

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v0, v5

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandHeadOffset:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v0, p3

    :goto_7
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1927
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    add-int/2addr v0, p4

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    .line 1923
    :cond_d
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v8

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandHeadOffset:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowRight:I

    sub-int/2addr v5, v6

    sub-int/2addr v0, v5

    add-int/2addr v0, p3

    goto :goto_7

    .line 1952
    :cond_e
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleHeadOffset:I

    iget v8, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v3

    if-ge v6, v7, :cond_6

    .line 1953
    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleHeadOffset:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_4

    .line 1961
    :cond_f
    iget v6, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowRight:I

    sub-int/2addr v6, v7

    sub-int v6, v0, v6

    if-le v5, v6, :cond_7

    .line 1962
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, v5, v0

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowRight:I

    sub-int/2addr v5, v7

    add-int/2addr v0, v5

    sub-int/2addr v0, p3

    sub-int v0, v6, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_5

    .line 1972
    :cond_10
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v2, :cond_8

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupHeight:I

    add-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_8

    .line 1976
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_6

    .line 1981
    :cond_11
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_12

    .line 1982
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v3

    add-int/2addr v0, p4

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1984
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v2, v5

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_12

    .line 1985
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1990
    :cond_12
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    sub-int/2addr v2, v5

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_14

    .line 1991
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v8

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandHeadOffset:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1992
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1993
    invoke-virtual {p0, p2}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->resetHeight(Landroid/view/WindowManager$LayoutParams;)V

    .line 2002
    :cond_13
    :goto_8
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v2, v5

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_8

    .line 2003
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    iget v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v2, v5

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 2004
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v0, p4

    sub-int v0, v1, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2006
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    .line 2007
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v3

    add-int/2addr v0, p4

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2009
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGap:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_6

    .line 1996
    :cond_14
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v9, :cond_13

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowRight:I

    sub-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_13

    .line 1997
    iget v0, v4, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandBodyOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandHeadOffset:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v1, v1, v8

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1998
    invoke-virtual {p0, p2}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->resetHeight(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_8
.end method

.method private findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2030
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2031
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2032
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2033
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2036
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2037
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2038
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2040
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 2042
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v4, :cond_5

    .line 2044
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mCustomizeTriangleOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2046
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v3

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangledOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleHeadOffset:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/2addr v0, p4

    :goto_0
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2070
    :goto_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-ne v0, v4, :cond_8

    .line 2071
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangleEdgeLimit:I

    add-int/2addr v0, v1

    .line 2072
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangleEdgeLimit:I

    sub-int/2addr v1, v2

    .line 2073
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v2, v0, :cond_7

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2082
    :cond_3
    :goto_2
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v1, 0x11000000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2083
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2084
    return-void

    .line 2046
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleHeadOffset:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    goto :goto_0

    .line 2056
    :cond_5
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v2

    add-int/2addr v0, p3

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandHeadOffset:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowRight:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangledOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowRight:I

    sub-int/2addr v0, v1

    :goto_3
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2065
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p4

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mCustomizeTriangleOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_1

    .line 2056
    :cond_6
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleLandHeadOffset:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangledOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    add-int/2addr v0, v1

    goto :goto_3

    .line 2074
    :cond_7
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v0, v1, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_2

    .line 2076
    :cond_8
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangleEdgeLimit:I

    add-int/2addr v0, v1

    .line 2077
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangleEdgeLimit:I

    sub-int/2addr v1, v2

    .line 2078
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v2, v0, :cond_9

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    .line 2079
    :cond_9
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int v0, v1, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2
.end method

.method private fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2100
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2101
    invoke-virtual {v3, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 2109
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    packed-switch v1, :pswitch_data_0

    move v1, v0

    move v2, v0

    .line 2149
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;

    .line 2151
    if-eqz v0, :cond_0

    .line 2153
    # invokes: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->updateEnvironment()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->access$400(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;)V

    .line 2155
    # invokes: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->updateIndicatorOffset(II)V
    invoke-static {v0, v2, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->access$500(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;II)V

    .line 2158
    :cond_0
    return-object v3

    .line 2111
    :pswitch_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v1, v0, v1

    .line 2112
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v2

    .line 2114
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2115
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v2, v4

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    move v2, v1

    move v1, v0

    .line 2116
    goto :goto_0

    .line 2119
    :pswitch_1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v1, v0, v1

    .line 2120
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v2

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v2

    .line 2122
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    move v2, v1

    move v1, v0

    .line 2124
    goto :goto_0

    .line 2127
    :pswitch_2
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v1, v0, v1

    .line 2129
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangledOffset:I

    add-int/2addr v0, v2

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2130
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v2

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2133
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v0, v2

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2134
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v2

    move v2, v1

    move v1, v0

    .line 2135
    goto :goto_0

    .line 2138
    :pswitch_3
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v1, v0, v1

    .line 2140
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangledOffset:I

    add-int/2addr v0, v2

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2143
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowBottom:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowTop:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v0, v2

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2144
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_0

    .line 2109
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
    .line 1679
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1681
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 1682
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1683
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->isViewRemove:Z

    .line 1684
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->setTouchDelegate()V

    .line 1685
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x2

    .line 1633
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_1

    .line 1634
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1639
    :cond_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 1640
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1643
    if-eqz v2, :cond_3

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_3

    .line 1650
    :goto_0
    new-instance v2, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;-><init>(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;Landroid/content/Context;)V

    .line 1652
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1655
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1656
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v0, v3}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1658
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    .line 1662
    :goto_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupWidth:I

    .line 1663
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupHeight:I

    .line 1664
    return-void

    .line 1660
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private registerForGlobalChanged(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2705
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->unregisterForGlobalChanged()V

    .line 2706
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mParent:Ljava/lang/ref/WeakReference;

    .line 2707
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2708
    if-eqz v0, :cond_0

    .line 2709
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2711
    :cond_0
    return-void
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 2680
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 2682
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2683
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2684
    if-eqz v0, :cond_0

    .line 2685
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2688
    :cond_0
    iput p2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchorXoff:I

    .line 2689
    iput p3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchorYoff:I

    .line 2690
    return-void
.end method

.method private rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 593
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 594
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 595
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 596
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 597
    return-object v1
.end method

.method private unregisterForGlobalChanged()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2692
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mParent:Ljava/lang/ref/WeakReference;

    .line 2694
    if-eqz v0, :cond_1

    .line 2695
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2697
    :goto_0
    if-eqz v0, :cond_0

    .line 2698
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2699
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2701
    :cond_0
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mParent:Ljava/lang/ref/WeakReference;

    .line 2702
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private unregisterForScrollChanged()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2667
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2669
    if-eqz v0, :cond_1

    .line 2670
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2672
    :goto_0
    if-eqz v0, :cond_0

    .line 2673
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2674
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2676
    :cond_0
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2677
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 12

    .prologue
    .line 2563
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2652
    :cond_0
    :goto_0
    return-void

    .line 2568
    :cond_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 2569
    if-eqz p2, :cond_e

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchorXoff:I

    if-ne v1, p3, :cond_2

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v1, v0, :cond_e

    :cond_2
    const/4 v1, 0x1

    .line 2571
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    if-eqz v1, :cond_f

    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIsDropdown:Z

    if-nez v2, :cond_f

    .line 2573
    :cond_3
    move/from16 v0, p4

    invoke-direct {p0, p1, p3, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 2581
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2583
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2584
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2586
    if-eqz p5, :cond_5

    .line 2587
    const/4 v1, -0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_10

    .line 2588
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 2592
    :goto_3
    const/4 v1, -0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_11

    .line 2593
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 2597
    :goto_4
    move/from16 v0, p6

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2598
    move/from16 v0, p7

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2599
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v1, v3, :cond_5

    .line 2600
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->resetHeight(Landroid/view/WindowManager$LayoutParams;)V

    .line 2604
    :cond_5
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2605
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2607
    const/4 v1, 0x0

    .line 2609
    iget v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchorXoff:I

    iget v8, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v2, v7, v8}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 2611
    iget-object v7, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;

    .line 2612
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2613
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2614
    iget v10, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    if-eqz v10, :cond_6

    iget v10, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    iget v10, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_12

    .line 2617
    :cond_6
    iget-object v10, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2618
    iget-object v10, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2625
    :cond_7
    :goto_5
    iget v10, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchorXoff:I

    iget v11, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v7, v10, v11}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 2627
    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v10, v5, :cond_8

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v5, v6, :cond_8

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v3, v5, :cond_8

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, v3, :cond_8

    iget v3, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v3, v8, :cond_8

    iget v3, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v3, v9, :cond_9

    .line 2628
    :cond_8
    const/4 v1, 0x1

    .line 2631
    :cond_9
    invoke-direct {p0, v2, v7}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    .line 2632
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v3, v4, :cond_a

    .line 2633
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2634
    const/4 v1, 0x1

    .line 2637
    :cond_a
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->computeFlags(I)I

    move-result v3

    .line 2638
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v4, :cond_b

    .line 2639
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2640
    const/4 v1, 0x1

    .line 2642
    :cond_b
    if-eqz v1, :cond_0

    .line 2643
    if-eqz v2, :cond_c

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v1, :cond_c

    .line 2644
    const/16 v1, 0x64

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2646
    :cond_c
    if-eqz v2, :cond_d

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_d

    .line 2647
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    invoke-direct {p0, v2, v7}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2649
    :cond_d
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->setTouchDelegate()V

    goto/16 :goto_0

    .line 2569
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2574
    :cond_f
    if-eqz v1, :cond_4

    .line 2577
    iput p3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchorXoff:I

    .line 2578
    move/from16 v0, p4

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mAnchorYoff:I

    goto/16 :goto_2

    .line 2590
    :cond_10
    move/from16 v0, p6

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupWidth:I

    goto/16 :goto_3

    .line 2595
    :cond_11
    move/from16 v0, p7

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupHeight:I

    goto/16 :goto_4

    .line 2620
    :cond_12
    iget-object v10, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_13

    .line 2621
    iget-object v10, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2622
    :cond_13
    iget-object v10, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_7

    .line 2623
    iget-object v10, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_5
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 2265
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2266
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 2267
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->unregisterForGlobalChanged()V

    .line 2268
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->releaseTouchDelegate()V

    .line 2269
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dismissWithoutAnimation()V

    .line 2271
    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHeight:I

    return v0
.end method

.method protected getStatusBarHeight(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 759
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 760
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 761
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 762
    :goto_0
    int-to-float v0, v0

    return v0

    .line 761
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1350
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWidth:I

    return v0
.end method

.method protected initLimit()V
    .locals 8

    .prologue
    const-wide v4, 0x3fe6666666666666L    # 0.7

    const-wide v6, 0x3fe3333333333333L    # 0.6

    .line 295
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 297
    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenWidth:I

    if-eq v0, v2, :cond_0

    .line 300
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenWidth:I

    .line 301
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenHeight:I

    .line 307
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenWidth:I

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M2:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMaxWidth:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMaxContentWidth:I

    .line 309
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenWidth:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenHeight:I

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    .line 311
    :goto_1
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mUsePortraitLimitOnly:Z

    if-eqz v2, :cond_3

    .line 312
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v4

    sget v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M2:I

    int-to-double v4, v0

    sub-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinWidth:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinContentWidth:I

    .line 313
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v6

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M2:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHtcFooterBarLandWidth:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinFooterContentWidth:I

    .line 323
    :goto_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 325
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinContentWidth:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinWidth:I

    .line 326
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMaxContentWidth:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMaxWidth:I

    goto :goto_0

    .line 309
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 314
    :cond_3
    if-eqz v0, :cond_4

    .line 315
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenWidth:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M2:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinWidth:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinContentWidth:I

    .line 316
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenHeight:I

    int-to-double v0, v0

    mul-double/2addr v0, v6

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M2:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHtcFooterBarLandWidth:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinFooterContentWidth:I

    goto :goto_2

    .line 318
    :cond_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mScreenWidth:I

    int-to-double v0, v0

    mul-double/2addr v0, v6

    sget v2, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->M2:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHtcFooterBarLandWidth:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinWidth:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinContentWidth:I

    .line 319
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinContentWidth:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mMinFooterContentWidth:I

    goto :goto_2
.end method

.method protected initTriangle(Landroid/content/res/Resources;)V
    .locals 4

    .prologue
    .line 573
    sget v0, Lcom/htc/lib1/cc/e;->common_popupmenu_arrow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    .line 574
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mCategoryColor:I

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->applyColorMultiply(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    .line 575
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 576
    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 577
    sget v1, Lcom/htc/lib1/cc/e;->tips_arrow_shadow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 578
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 579
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 583
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 584
    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mTriangle:Landroid/graphics/drawable/Drawable;

    .line 585
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 586
    const/high16 v1, 0x43340000    # 180.0f

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBelowTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 587
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandRightTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 588
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandLeftTriangledDrawable:Landroid/graphics/drawable/Drawable;

    .line 589
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 590
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1384
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 1

    .prologue
    .line 1188
    const/4 v0, 0x0

    return v0
.end method

.method protected releaseTouchDelegate()V
    .locals 0

    .prologue
    .line 2721
    return-void
.end method

.method protected resetHeight(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .prologue
    .line 2026
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1

    .prologue
    .line 1161
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mClipToScreen:Z

    .line 1162
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->setClippingEnabled(Z)V

    .line 1163
    return-void

    .line 1162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    .prologue
    .line 1149
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mClippingEnabled:Z

    .line 1150
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    .line 904
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 906
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setExpandDirection(I)V
    .locals 0

    .prologue
    .line 1591
    iput p1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    .line 1592
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    .prologue
    .line 965
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mFocusable:Z

    .line 966
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 1336
    iput p1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHeight:I

    .line 1337
    return-void
.end method

.method public setOnUserDismissListener(Lcom/htc/lib1/cc/widget/quicktips/a;)V
    .locals 0

    .prologue
    .line 2324
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOnUserDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2325
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0

    .prologue
    .line 1110
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mOutsideTouchable:Z

    .line 1111
    return-void
.end method

.method protected setTouchDelegate()V
    .locals 0

    .prologue
    .line 2716
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 1372
    iput p1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWidth:I

    .line 1373
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1483
    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1484
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 1510
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1568
    :cond_0
    :goto_0
    return-void

    .line 1513
    :cond_1
    iput p2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mXoff:I

    .line 1514
    iput p3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mYoff:I

    .line 1516
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1518
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1519
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1522
    :cond_2
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWidthMode:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHeightMode:I

    if-ne v1, v3, :cond_4

    .line 1524
    :cond_3
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 1527
    :cond_4
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWidthMode:I

    if-ne v1, v3, :cond_5

    .line 1528
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWidth:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mLastWidth:I

    .line 1531
    :cond_5
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHeightMode:I

    if-ne v1, v3, :cond_6

    .line 1532
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHeight:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mLastHeight:I

    .line 1536
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 1537
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->registerForGlobalChanged(Landroid/view/View;)V

    .line 1538
    iput-boolean v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIsShowing:Z

    .line 1539
    iput-boolean v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIsDropdown:Z

    .line 1541
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1544
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWidthMode:I

    if-ne v1, v4, :cond_7

    .line 1545
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWidthMode:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1546
    :cond_7
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHeightMode:I

    if-ne v1, v4, :cond_8

    .line 1547
    iget v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHeightMode:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1549
    :cond_8
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1551
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1553
    if-eqz v0, :cond_9

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v1, :cond_9

    .line 1554
    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1557
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->createTriangleLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1560
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 1562
    if-eqz v0, :cond_0

    .line 1563
    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->computeAnimationResource(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1565
    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->fixDrawingPosition(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1566
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 4

    .prologue
    .line 1408
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    .line 1409
    iput p3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mXoff:I

    .line 1410
    iput p4, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mYoff:I

    .line 1411
    iput p2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGravity:I

    .line 1413
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->unregisterForScrollChanged()V

    .line 1418
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->registerForGlobalChanged(Landroid/view/View;)V

    .line 1419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIsShowing:Z

    .line 1420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mIsDropdown:Z

    .line 1422
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1426
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1427
    if-nez p2, :cond_2

    .line 1428
    const/16 p2, 0x33

    .line 1430
    :cond_2
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1431
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1432
    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1433
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHeightMode:I

    if-gez v0, :cond_3

    .line 1434
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mHeightMode:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mLastHeight:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1435
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWidthMode:I

    if-gez v0, :cond_4

    .line 1436
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mWidthMode:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mLastWidth:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1438
    :cond_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mXoff:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 1439
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1440
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 1441
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    .line 1442
    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mXoff:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupShadowLeft:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mBubbleBodyOffset:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1443
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->resetHeight(Landroid/view/WindowManager$LayoutParams;)V

    .line 1446
    :cond_5
    if-eqz v1, :cond_6

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-nez v0, :cond_6

    .line 1447
    const/16 v0, 0x64

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1449
    :cond_6
    if-eqz v1, :cond_7

    .line 1450
    sget v0, Lcom/htc/lib1/cc/k;->DropDownCenter:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1453
    :cond_7
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;

    .line 1455
    if-eqz v0, :cond_8

    .line 1457
    # invokes: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->updateEnvironmentNoArrow()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;->access$300(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$PopupBubbleViewContainer;)V

    .line 1460
    :cond_8
    if-eqz v1, :cond_0

    .line 1461
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0
.end method
