.class public Lcom/htc/lib1/cc/widget/HtcProgressBar;
.super Landroid/widget/ProgressBar;
.source "HtcProgressBar.java"


# instance fields
.field actionUp:Z

.field mBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mProgressHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/htc/lib1/cc/b;->htcProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 170
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcProgressBar;->actionUp:Z

    .line 75
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->setIndeterminate(Z)V

    .line 77
    const/4 v2, 0x2

    new-array v2, v2, [I

    const v3, 0x10100b2

    aput v3, v2, v1

    sget v3, Lcom/htc/lib1/cc/b;->seek_bar_display_mode:I

    aput v3, v2, v0

    .line 82
    sget v3, Lcom/htc/lib1/cc/k;->HTCProgressBarStyle:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 83
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 84
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 85
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/htc/lib1/cc/d;->htc_progressbar_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcProgressBar;->mProgressHeight:I

    .line 89
    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 91
    if-ne v0, v4, :cond_1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 92
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getProgress()I

    move-result v0

    .line 100
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->setProgress(I)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->setProgress(I)V

    .line 103
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 104
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->setSecondaryProgress(I)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->setSecondaryProgress(I)V

    .line 109
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 91
    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 180
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcProgressBar;->actionUp:Z

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const-string v1, "Progeress Bar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcProgressBar;->actionUp:Z

    .line 183
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 193
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 203
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getMax()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getMax()I

    move-result v1

    div-int/2addr v0, v1

    .line 205
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 124
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 130
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcProgressBar;->mProgressHeight:I

    .line 131
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getHeight()I

    move-result v2

    .line 132
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 133
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 134
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 135
    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 136
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getPaddingTop()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 137
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 138
    const/high16 v1, 0x1020000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 140
    :cond_2
    const v1, 0x102000f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 142
    :cond_3
    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 153
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 154
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 167
    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 159
    goto :goto_0

    .line 162
    :pswitch_1
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcProgressBar;->actionUp:Z

    .line 163
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getMax()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->getMax()I

    move-result v2

    div-int/2addr v0, v2

    .line 164
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcProgressBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 165
    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
