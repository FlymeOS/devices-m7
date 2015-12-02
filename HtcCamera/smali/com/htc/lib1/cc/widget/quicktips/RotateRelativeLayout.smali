.class public Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RotateRelativeLayout.java"


# static fields
.field public static SCREEN_MODE_ILANDSCAPE:I

.field public static SCREEN_MODE_IPORTRAIT:I

.field public static SCREEN_MODE_LANDSCAPE:I

.field public static SCREEN_MODE_PORTRAIT:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private current_orientation_mode:I

.field private invMatrix:Landroid/graphics/Matrix;

.field private mIsArrowStyle:Z

.field private mIsInverse:Z

.field private newRectF:Landroid/graphics/RectF;

.field private rotMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    .line 42
    const/4 v0, 0x1

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_LANDSCAPE:I

    .line 44
    const/4 v0, 0x2

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_IPORTRAIT:I

    .line 46
    const/4 v0, 0x3

    sput v0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_ILANDSCAPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const-string v0, "RotateRelativeLayout"

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->TAG:Ljava/lang/String;

    .line 212
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->mIsInverse:Z

    .line 213
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->mIsArrowStyle:Z

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    .line 54
    sget v0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-string v0, "RotateRelativeLayout"

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->TAG:Ljava/lang/String;

    .line 212
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->mIsInverse:Z

    .line 213
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->mIsArrowStyle:Z

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    .line 63
    sget v0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    .line 64
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 156
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 158
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v2

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v3

    .line 166
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 167
    aget v1, v0, v2

    aget v0, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 169
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_IPORTRAIT:I

    if-ne v0, v1, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 182
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 178
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_LANDSCAPE:I

    if-ne v0, v1, :cond_2

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 180
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_ILANDSCAPE:I

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    int-to-float v0, v0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 189
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 190
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 191
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 192
    invoke-virtual {p0, p2}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_IPORTRAIT:I

    if-ne v0, v1, :cond_1

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p5

    move v5, p4

    .line 85
    invoke-super/range {v0 .. v5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    if-ne v0, v1, :cond_0

    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotateMeasureMent()V

    .line 108
    return-void

    .line 98
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_IPORTRAIT:I

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->mIsInverse:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->mIsArrowStyle:Z

    if-eqz v0, :cond_2

    .line 100
    :cond_1
    invoke-super {p0, p2, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method protected rotateMeasureMent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_IPORTRAIT:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    if-eq v0, v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->setMeasuredDimension(II)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 123
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    .line 146
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 148
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 126
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 130
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 134
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 138
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setRotation(I)V
    .locals 1

    .prologue
    .line 200
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    sub-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->mIsInverse:Z

    .line 207
    iput p1, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->current_orientation_mode:I

    .line 208
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->requestLayout()V

    .line 209
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->invalidate()V

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setRotation(IZ)V
    .locals 0

    .prologue
    .line 216
    iput-boolean p2, p0, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->mIsArrowStyle:Z

    .line 217
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/quicktips/RotateRelativeLayout;->setRotation(I)V

    .line 218
    return-void
.end method
