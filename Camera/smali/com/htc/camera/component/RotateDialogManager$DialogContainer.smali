.class final Lcom/htc/camera/component/RotateDialogManager$DialogContainer;
.super Landroid/widget/RelativeLayout;
.source "RotateDialogManager.java"


# instance fields
.field private m_Rotation:Lcom/htc/camera/rotate/UIRotation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 84
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    .line 89
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 102
    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    .line 103
    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p3

    .line 104
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-double v0, v0

    sget v2, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-double v2, v2

    const-wide v4, 0x3fcae147ae147ae1L    # 0.21

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int v0, v0

    .line 118
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 119
    invoke-super {p0, v1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 122
    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v2}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->setMeasuredDimension(II)V

    .line 129
    :goto_1
    return-void

    .line 115
    :cond_0
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-virtual {p0}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 127
    invoke-virtual {p0, v0, v0}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public setRotation(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    if-eq v0, p1, :cond_0

    .line 135
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    .line 136
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    iget v1, p1, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 137
    invoke-virtual {p0}, Lcom/htc/camera/component/RotateDialogManager$DialogContainer;->requestLayout()V

    .line 139
    :cond_0
    return-void
.end method
