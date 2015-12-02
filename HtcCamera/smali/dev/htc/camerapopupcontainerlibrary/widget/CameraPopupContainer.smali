.class public Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;
.super Landroid/widget/FrameLayout;
.source "CameraPopupContainer.java"


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I


# instance fields
.field private mIsOpen:Z

.field private mLastAnchor:Landroid/view/View;

.field private mMinDontPaddindCopyLeft:I

.field private mMinDontPaddingCopyRight:I

.field private mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

.field private mOnDismissListener:Ldev/htc/camerapopupcontainerlibrary/widget/a;

.field private mOnOpenListener:Ldev/htc/camerapopupcontainerlibrary/widget/b;

.field private mOnOutsideTouchListener:Ldev/htc/camerapopupcontainerlibrary/widget/c;

.field private mPopupDontWindowCopyDrawable:Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchReceiver:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput v4, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddindCopyLeft:I

    .line 64
    iput v4, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddingCopyRight:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mLastAnchor:Landroid/view/View;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mTempRect:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    invoke-direct {v0, p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;-><init>(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;)V

    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 122
    const v1, 0x7f090068

    .line 123
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 125
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 126
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 127
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    new-instance v0, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4}, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mPopupDontWindowCopyDrawable:Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "PopupWindowDrawable"

    iget-object v5, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mPopupDontWindowCopyDrawable:Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;

    invoke-static {v0, v4, v3, v5}, Ldev/htc/camerapopupcontainerlibrary/a/a;->a(Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mPopupDontWindowCopyDrawable:Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;

    invoke-virtual {v0, v1}, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->setShift(I)V

    .line 132
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mPopupDontWindowCopyDrawable:Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;

    invoke-virtual {v0, v2}, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->setMargin(I)V

    .line 133
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mPopupDontWindowCopyDrawable:Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;

    invoke-virtual {p0, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 136
    iget-object v1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mPopupDontWindowCopyDrawable:Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;

    invoke-virtual {v1, v0}, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->getMinScreenMargin(Landroid/graphics/Rect;)V

    .line 138
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddindCopyLeft:I

    .line 139
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddingCopyRight:I

    .line 141
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mTouchReceiver:Landroid/view/View;

    .line 142
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mTouchReceiver:Landroid/view/View;

    new-instance v1, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$1;

    invoke-direct {v1, p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$1;-><init>(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    return-void

    .line 114
    nop

    :array_0
    .array-data 4
        0x10100d5
        0x10100f6
        0x1010140
        0x1010199
    .end array-data
.end method

.method static synthetic access$000(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mIsOpen:Z

    return v0
.end method

.method static synthetic access$100(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;)Ldev/htc/camerapopupcontainerlibrary/widget/c;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mOnOutsideTouchListener:Ldev/htc/camerapopupcontainerlibrary/widget/c;

    return-object v0
.end method

.method private findDropDownPosition(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 346
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mAnchorLocation:[I
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$700(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)[I

    move-result-object v0

    aget v0, v0, v2

    iget-object v3, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mContainerLocation:[I
    invoke-static {v3}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$800(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)[I

    move-result-object v3

    aget v3, v3, v2

    sub-int v3, v0, v3

    .line 350
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v3, v0

    .line 351
    if-ltz v0, :cond_3

    move v3, v0

    .line 353
    :goto_0
    if-gez v0, :cond_4

    move v0, v1

    .line 354
    :goto_1
    iget-object v4, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->bAbove:Z
    invoke-static {v4}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$900(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)Z

    move-result v4

    if-ne v0, v4, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v1, v2

    .line 355
    :cond_1
    iget-object v2, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # setter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->bAbove:Z
    invoke-static {v2, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$902(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;Z)Z

    .line 356
    if-eqz v1, :cond_2

    .line 357
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->refreshDrawableState()V

    .line 359
    :cond_2
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # setter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->y:I
    invoke-static {v0, v3}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$402(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;I)I

    .line 360
    return-void

    .line 351
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_4
    move v0, v2

    .line 353
    goto :goto_1
.end method

.method private getLastAnchor()Landroid/view/View;
    .locals 1

    .prologue
    .line 291
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mLastAnchor:Landroid/view/View;

    monitor-exit p0

    return-object v0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPosition(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getMeasuredWidth()I

    move-result v3

    .line 393
    shr-int/lit8 v0, v3, 0x1

    .line 394
    invoke-direct {p0, p1, p2}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->findDropDownPosition(Landroid/view/View;Z)V

    .line 395
    iget-object v2, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    iget-object v4, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mAnchorLocation:[I
    invoke-static {v4}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$700(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)[I

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mContainerLocation:[I
    invoke-static {v5}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$800(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)[I

    move-result-object v5

    aget v5, v5, v1

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    # setter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->x:I
    invoke-static {v2, v4}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$202(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;I)I

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    .line 398
    iget-object v4, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mAnchorLocation:[I
    invoke-static {v4}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$700(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)[I

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mContainerLocation:[I
    invoke-static {v5}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$800(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)[I

    move-result-object v5

    aget v5, v5, v1

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v4

    .line 400
    sub-int v4, v2, v0

    .line 404
    iget v2, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddindCopyLeft:I

    .line 405
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v5, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddingCopyRight:I

    add-int/2addr v3, v5

    sub-int v3, v0, v3

    .line 407
    if-le v2, v4, :cond_0

    .line 409
    sub-int v0, v2, v4

    move v1, v2

    .line 418
    :goto_0
    iget-object v2, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # setter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->x:I
    invoke-static {v2, v1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$202(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;I)I

    .line 419
    iget-object v1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # setter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->anchorOffset:I
    invoke-static {v1, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$602(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;I)I

    .line 420
    return-void

    .line 410
    :cond_0
    if-le v4, v3, :cond_1

    .line 412
    sub-int v0, v3, v4

    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v4

    .line 415
    goto :goto_0
.end method

.method private prepareData(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 368
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 369
    if-nez v0, :cond_0

    move v0, v1

    .line 381
    :goto_0
    return v0

    .line 371
    :cond_0
    iget-object v3, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mContainerLocation:[I
    invoke-static {v3}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$800(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)[I

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 374
    if-nez p1, :cond_1

    .line 375
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mAnchorLocation:[I
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$700(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)[I

    move-result-object v0

    aput v1, v0, v1

    .line 376
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mAnchorLocation:[I
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$700(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)[I

    move-result-object v0

    aput v1, v0, v2

    :goto_1
    move v0, v2

    .line 381
    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mAnchorLocation:[I
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$700(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_1
.end method

.method private setArchorOff(I)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mPopupDontWindowCopyDrawable:Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mPopupDontWindowCopyDrawable:Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;

    invoke-virtual {v0, p1}, Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;->setOffset(I)V

    .line 282
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mPopupDontWindowCopyDrawable:Ldev/htc/camerapopupcontainerlibrary/graphic/PopupWindowDrawable;

    invoke-virtual {p0, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :cond_0
    return-void
.end method

.method private setLastAnchor(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iput-object p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mLastAnchor:Landroid/view/View;

    .line 302
    monitor-exit p0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showAsDropDown(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 234
    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # setter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->xoff:I
    invoke-static {v0, p3}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$302(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;I)I

    .line 239
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # setter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->yoff:I
    invoke-static {v0, p4}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$502(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;I)I

    .line 241
    invoke-direct {p0, p2}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setLastAnchor(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mTouchReceiver:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-direct {p0, p2, v4}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->updatePopupPosition(Landroid/view/View;Z)V

    .line 246
    invoke-direct {p0, p2}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->showbyMoveInfo(Landroid/view/View;)V

    .line 248
    iput-boolean v4, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mIsOpen:Z

    .line 251
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mOnOpenListener:Ldev/htc/camerapopupcontainerlibrary/widget/b;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mOnOpenListener:Ldev/htc/camerapopupcontainerlibrary/widget/b;

    invoke-interface {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/b;->onOpen()V

    goto :goto_0
.end method

.method private showbyMoveInfo(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->x:I
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$200(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)I

    move-result v0

    iget-object v1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->xoff:I
    invoke-static {v1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$300(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setTranslationX(F)V

    .line 222
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->y:I
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$400(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)I

    move-result v0

    iget-object v1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->yoff:I
    invoke-static {v1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$500(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setTranslationY(F)V

    .line 223
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->anchorOffset:I
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$600(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setArchorOff(I)V

    goto :goto_0
.end method

.method private updatePopupPosition(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    .line 430
    invoke-direct {p0, p1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->prepareData(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-direct {p0, p1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setLastAnchor(Landroid/view/View;)V

    .line 435
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    .line 436
    :goto_1
    iget v2, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddindCopyLeft:I

    iget v3, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddingCopyRight:I

    add-int/2addr v2, v3

    if-le v0, v2, :cond_1

    .line 437
    iget v2, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddindCopyLeft:I

    iget v3, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddingCopyRight:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 438
    :cond_1
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 439
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 440
    :goto_2
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 441
    invoke-virtual {p0, v2, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->measure(II)V

    .line 443
    invoke-direct {p0, p1, p2}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getPosition(Landroid/view/View;Z)V

    .line 445
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->x:I
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$200(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setTranslationX(F)V

    .line 446
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->anchorOffset:I
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$600(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setArchorOff(I)V

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    goto :goto_1

    .line 439
    :cond_3
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    goto :goto_2
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mOnDismissListener:Ldev/htc/camerapopupcontainerlibrary/widget/a;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mOnDismissListener:Ldev/htc/camerapopupcontainerlibrary/widget/a;

    invoke-interface {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/a;->onDismiss()V

    .line 265
    :cond_0
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mTouchReceiver:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setLastAnchor(Landroid/view/View;)V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mIsOpen:Z

    .line 273
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 515
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 516
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_0

    .line 518
    iget-object v1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 519
    :cond_0
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setPadding(IIII)V

    .line 520
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .prologue
    .line 495
    const-string v0, "HtcPopupContainter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDrawableState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMoveInfo:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->bAbove:Z
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->access$900(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 499
    sget-object v1, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 502
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 452
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 454
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 455
    :goto_0
    if-lez v0, :cond_0

    iget v1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddindCopyLeft:I

    iget v2, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddingCopyRight:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    .line 466
    :cond_0
    :goto_1
    return-void

    .line 454
    :cond_1
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 458
    :cond_2
    iget v1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddindCopyLeft:I

    iget v2, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddingCopyRight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 459
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getMeasuredWidth()I

    move-result v1

    .line 460
    if-le v1, v0, :cond_3

    .line 463
    :goto_2
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->setMeasuredDimension(II)V

    .line 465
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 480
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 482
    invoke-direct {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->getLastAnchor()Landroid/view/View;

    move-result-object v0

    .line 484
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->updatePopupPosition(Landroid/view/View;Z)V

    .line 485
    invoke-direct {p0, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->showbyMoveInfo(Landroid/view/View;)V

    .line 486
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 187
    invoke-virtual {p0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->removeAllViews()V

    .line 188
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-void
.end method

.method public setMinPaddingLeft(I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddindCopyLeft:I

    .line 173
    return-void
.end method

.method public setMinPaddingRight(I)V
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mMinDontPaddingCopyRight:I

    .line 180
    return-void
.end method

.method public setOnDismissListener(Ldev/htc/camerapopupcontainerlibrary/widget/a;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mOnDismissListener:Ldev/htc/camerapopupcontainerlibrary/widget/a;

    .line 48
    return-void
.end method

.method public setOnOpenListener(Ldev/htc/camerapopupcontainerlibrary/widget/b;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mOnOpenListener:Ldev/htc/camerapopupcontainerlibrary/widget/b;

    .line 52
    return-void
.end method

.method public setOnOutsideTouchListener(Ldev/htc/camerapopupcontainerlibrary/widget/c;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mOnOutsideTouchListener:Ldev/htc/camerapopupcontainerlibrary/widget/c;

    .line 56
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, p1, v0, v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->showAsDropDown(Landroid/view/View;II)V

    .line 211
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 202
    invoke-direct {p0, v0, p1, p2, p3}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->showAsDropDown(Landroid/view/ViewGroup;Landroid/view/View;II)V

    goto :goto_0
.end method
