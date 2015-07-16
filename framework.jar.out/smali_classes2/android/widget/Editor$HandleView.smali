.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

.field private mConfirmMove:Z

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mHorizontalGravity:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mMinSize:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousLine:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x5

    const/4 v6, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 3434
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 3435
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3422
    iput v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3424
    iput v2, p0, Landroid/widget/Editor$HandleView;->mPreviousLine:I

    .line 3428
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 3470
    new-array v1, v3, [J

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 3471
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 3472
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3473
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3436
    new-instance v1, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, #android:attr@textSelectHandleWindowStyle#t

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 3438
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 3439
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3440
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 3441
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3443
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 3444
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 3445
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:dimen@text_handle_min_size#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 3448
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 3450
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v0

    .line 3451
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 3452
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 3453
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 3481
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3482
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 3483
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 3484
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3485
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 10

    .prologue
    .line 3488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3489
    .local v4, "now":J
    const/4 v0, 0x0

    .line 3490
    .local v0, "i":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 3491
    .local v2, "index":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3492
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 3493
    add-int/lit8 v0, v0, 0x1

    .line 3494
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    .line 3497
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 3499
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3501
    :cond_1
    return-void
.end method

.method private getHorizontalOffset()I
    .locals 4

    .prologue
    .line 3691
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v2

    .line 3692
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 3694
    .local v0, "drawWidth":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    .line 3700
    :pswitch_0
    sub-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 3706
    .local v1, "left":I
    :goto_0
    return v1

    .line 3696
    .end local v1    # "left":I
    :pswitch_1
    const/4 v1, 0x0

    .line 3697
    .restart local v1    # "left":I
    goto :goto_0

    .line 3703
    .end local v1    # "left":I
    :pswitch_2
    sub-int v1, v2, v0

    .restart local v1    # "left":I
    goto :goto_0

    .line 3694
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getPreferredHeight()I
    .locals 2

    .prologue
    .line 3517
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 3513
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 3584
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 3585
    const/4 v0, 0x1

    .line 3592
    :goto_0
    return v0

    .line 3588
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3589
    const/4 v0, 0x0

    goto :goto_0

    .line 3592
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    # invokes: Landroid/widget/Editor;->isPositionVisible(FF)Z
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;FF)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 3476
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 3477
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 3478
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 3533
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 3538
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3539
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3544
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 3545
    return-void

    .line 3540
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasHtcTextSelectionManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3541
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    invoke-virtual {v0}, Lcom/htc/textselection/TextSelectionManager;->dismissMagnifier()V

    goto :goto_0
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected getCursorOffset()I
    .locals 1

    .prologue
    .line 3710
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 3548
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 3550
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 3551
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 3570
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3571
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3573
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 3574
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    .line 3576
    :cond_1
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 3852
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 3579
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3504
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 3860
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 3861
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 3683
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 3684
    .local v0, "drawWidth":I
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    .line 3686
    .local v1, "left":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int v4, v1, v0

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3687
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3688
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 3856
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 3857
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 3509
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 3510
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3715
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3848
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 3717
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 3718
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 3719
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 3721
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v15

    .line 3722
    .local v15, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v15}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 3723
    invoke-virtual {v15}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 3724
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->hideOptionWrapper()V

    .line 3726
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->hasHtcTextSelectionManager()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/widget/Editor$InsertionHandleView;

    if-nez v2, :cond_1

    .line 3727
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/textselection/TextSelectionManager;->findScrollableView(Landroid/widget/TextView;)V

    .line 3728
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/Editor$HandleView;->mConfirmMove:Z

    .line 3730
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x0

    # setter for: Landroid/widget/Editor;->mEasyUpHardDownTriggered:Z
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$3002(Landroid/widget/Editor;Z)Z

    goto :goto_0

    .line 3736
    .end local v15    # "positionListener":Landroid/widget/Editor$PositionListener;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->hideOptionWrapper()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    .line 3737
    .local v17, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    .line 3740
    .local v18, "rawY":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v3, v3

    sub-float v16, v2, v3

    .line 3741
    .local v16, "previousVerticalOffset":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    sub-float v2, v18, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v3, v3

    sub-float v11, v2, v3

    .line 3743
    .local v11, "currentVerticalOffset":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v2, v16, v2

    if-gez v2, :cond_2

    .line 3744
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 3745
    .local v14, "newVerticalOffset":F
    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 3750
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v2, v2

    add-float/2addr v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 3754
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3755
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 3747
    .end local v14    # "newVerticalOffset":F
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 3748
    .restart local v14    # "newVerticalOffset":F
    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v14

    goto :goto_2

    .line 3758
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v2, v17, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v3, v3

    add-float v12, v2, v3

    .line 3759
    .local v12, "newPosX":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v2, v18, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v13, v2, v3

    .line 3762
    .local v13, "newPosY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->hasHtcTextSelectionManager()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3763
    const/16 v19, 0x0

    .line 3764
    .local v19, "showMagnifier":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->canSelectText()Z
    invoke-static {v2}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3766
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v19

    .line 3767
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/htc/textselection/TextSelectionManager;->checkAutoScroll(FF)V

    .line 3768
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/TextSelectionManager;->isAutoScrolling()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3769
    const/16 v19, 0x0

    .line 3771
    :cond_4
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 3774
    .local v8, "before":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    .line 3777
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    :goto_4
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 3779
    .local v10, "currLine":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mLastLine:I
    invoke-static {v2}, Landroid/widget/Editor;->access$3200(Landroid/widget/Editor;)I

    move-result v2

    if-eq v2, v10, :cond_5

    .line 3780
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v3, 0x1

    # setter for: Landroid/widget/Editor;->mEasyUpHardDownTriggered:Z
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$3002(Landroid/widget/Editor;Z)Z

    .line 3783
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # setter for: Landroid/widget/Editor;->mLastLine:I
    invoke-static {v2, v10}, Landroid/widget/Editor;->access$3202(Landroid/widget/Editor;I)I

    .line 3784
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    :goto_5
    if-eq v8, v2, :cond_e

    const/4 v9, 0x1

    .line 3785
    .local v9, "changed":Z
    :goto_6
    if-nez v9, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    .line 3786
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/Editor$HandleView;->mConfirmMove:Z

    .line 3789
    :cond_7
    if-eqz v9, :cond_8

    .line 3790
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Landroid/widget/Editor;->mAnchorLastMovedMilli:J
    invoke-static {v2, v4, v5}, Landroid/widget/Editor;->access$3302(Landroid/widget/Editor;J)J

    .line 3791
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # setter for: Landroid/widget/Editor;->mAnchorLastMovedIndex:I
    invoke-static {v2, v8}, Landroid/widget/Editor;->access$3402(Landroid/widget/Editor;I)I

    .line 3794
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/Editor$HandleView;->mConfirmMove:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_9

    .line 3795
    const/16 v19, 0x0

    .line 3799
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mFlags:I
    invoke-static {v2}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a

    .line 3800
    const/16 v19, 0x0

    .line 3802
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->hasMagnifier()Z
    invoke-static {v2}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3803
    if-eqz v19, :cond_10

    .line 3804
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    float-to-int v4, v12

    float-to-int v5, v13

    move-object/from16 v0, p0

    instance-of v6, v0, Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    :goto_7
    sget-object v7, Lcom/htc/textselection/Magnifier$TouchingMode;->TOUCHING_LOWER_ANCHOR:Lcom/htc/textselection/Magnifier$TouchingMode;

    invoke-virtual/range {v2 .. v7}, Lcom/htc/textselection/TextSelectionManager;->showMagnifier(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V

    goto/16 :goto_0

    .line 3771
    .end local v8    # "before":I
    .end local v9    # "changed":Z
    .end local v10    # "currLine":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    goto/16 :goto_3

    .line 3777
    .restart local v8    # "before":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    goto/16 :goto_4

    .line 3784
    .restart local v10    # "currLine":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    goto/16 :goto_5

    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 3804
    .restart local v9    # "changed":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    goto :goto_7

    .line 3808
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/TextSelectionManager;->dismissMagnifier()V

    goto/16 :goto_0

    .line 3812
    .end local v8    # "before":I
    .end local v9    # "changed":Z
    .end local v10    # "currLine":I
    .end local v19    # "showMagnifier":Z
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    .line 3824
    .end local v11    # "currentVerticalOffset":F
    .end local v12    # "newPosX":F
    .end local v13    # "newPosY":F
    .end local v14    # "newVerticalOffset":F
    .end local v16    # "previousVerticalOffset":F
    .end local v17    # "rawX":F
    .end local v18    # "rawY":F
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 3827
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->hasHtcTextSelectionManager()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3828
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->hasMagnifier()Z
    invoke-static {v2}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3829
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/TextSelectionManager;->dismissMagnifier()V

    .line 3830
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    invoke-virtual {v2}, Lcom/htc/textselection/TextSelectionManager;->stopAutoScroll()V

    .line 3832
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/widget/Editor$InsertionHandleView;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mAnchorLastMovedMilli:J
    invoke-static {v4}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)J

    move-result-wide v4

    sub-long v20, v2, v4

    .line 3835
    .local v20, "t":J
    const-wide/16 v2, 0x3c

    cmp-long v2, v20, v2

    if-gez v2, :cond_13

    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_13

    .line 3836
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mAnchorLastMovedIndex:I
    invoke-static {v3}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .line 3837
    :cond_13
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/widget/Editor$InsertionHandleView;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x64

    cmp-long v2, v20, v2

    if-gez v2, :cond_0

    .line 3838
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v2, :cond_14

    .line 3839
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/textselection/TextSelectionManager;->flyToEnd(Landroid/widget/TextView;)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->showOptionWrapper()V

    goto/16 :goto_0

    .line 3841
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/textselection/TextSelectionManager;->flyToStart(Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 3715
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 8
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3603
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 3604
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 3606
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 3640
    :cond_0
    :goto_0
    return-void

    .line 3610
    :cond_1
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v7, :cond_4

    move v3, v5

    .line 3616
    .local v3, "offsetChanged":Z
    :goto_1
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 3617
    .local v1, "line":I
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPreviousLine:I

    if-eq v1, v7, :cond_5

    move v2, v5

    .line 3618
    .local v2, "lineChanged":Z
    :goto_2
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousLine:I

    .line 3619
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v7}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v6}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$PositionListener;->isPositionChanged()Z

    move-result v4

    .line 3622
    .local v4, "positionChanged":Z
    :goto_3
    if-nez v3, :cond_2

    if-nez p2, :cond_2

    if-nez v2, :cond_2

    if-eqz v4, :cond_0

    :cond_2
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$HandleView;->injectPositionAtCursorOffset(I)Z

    move-result v6

    if-eqz v6, :cond_flyme_0

    return-void

    :cond_flyme_0

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    :cond_3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 3631
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 3634
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 3635
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 3637
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3638
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    goto :goto_0

    .end local v1    # "line":I
    .end local v2    # "lineChanged":Z
    .end local v3    # "offsetChanged":Z
    .end local v4    # "positionChanged":Z
    :cond_4
    move v3, v6

    .line 3610
    goto :goto_1

    .restart local v1    # "line":I
    .restart local v3    # "offsetChanged":Z
    :cond_5
    move v2, v6

    .line 3617
    goto :goto_2

    .restart local v2    # "lineChanged":Z
    :cond_6
    move v4, v6

    .line 3619
    goto :goto_3
.end method

.method public show()V
    .locals 2

    .prologue
    .line 3521
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3530
    :goto_0
    return-void

    .line 3523
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 3526
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 3527
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3529
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 3554
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 3555
    new-instance v0, Landroid/widget/Editor$ActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 3557
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 3558
    new-instance v0, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 3566
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3567
    return-void

    .line 3564
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 3456
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 3457
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 3458
    .local v0, "isRtlCharAtOffset":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    .line 3459
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 3460
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 3461
    return-void

    .line 3458
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 3644
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 3645
    if-nez p3, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v2, :cond_5

    .line 3646
    :cond_0
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 3648
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    .line 3649
    :cond_1
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 3650
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 3651
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 3652
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 3655
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 3658
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3659
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v0, p1, v2

    .line 3660
    .local v0, "positionX":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v1, p2, v2

    .line 3661
    .local v1, "positionY":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->sendShowMessage()V

    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_4
    :goto_0
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    :cond_5
    return-void

    .restart local v0    # "positionX":I
    .restart local v1    # "positionY":I
    :cond_6
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->sendShowMessage()V

    goto :goto_0

    .line 3668
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3670
    instance-of v2, p0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_8

    .line 3671
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hide()V

    goto :goto_0

    .line 3673
    :cond_8
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->sendHideMessage()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method

.method private hideOptionWrapper()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->hide()Z

    :cond_0
    return-void
.end method

.method private injectPositionAtCursorOffset(I)Z
    .locals 4
    .param p1, "offset"    # I

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->isOffsetOutOfVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-wide v2, v2, Landroid/widget/Editor;->mLastScrollTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/Editor;->mLastScrollTime:J

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEmptyMessage(I)V
    .locals 1
    .param p1, "option"    # I

    .prologue
    const/16 v0, 0x2712

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->show()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->hide()Z

    goto :goto_0
.end method

.method private sendHideMessage()V
    .locals 1

    .prologue
    const/16 v0, 0x2711

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->sendEmptyMessage(I)V

    return-void
.end method

.method private sendShowMessage()V
    .locals 1

    .prologue
    const/16 v0, 0x2712

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->sendEmptyMessage(I)V

    return-void
.end method

.method private showOptionWrapper()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->show()Z

    :cond_0
    return-void
.end method
