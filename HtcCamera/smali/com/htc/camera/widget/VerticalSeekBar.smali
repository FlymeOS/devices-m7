.class public Lcom/htc/camera/widget/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar.java"


# instance fields
.field private currentHeight:I

.field private currentWidth:I

.field private lastProgress:I

.field private oldHeight:I

.field private oldWidth:I

.field private onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 39
    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 33
    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/widget/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 46
    iput p1, p0, Lcom/htc/camera/widget/VerticalSeekBar;->currentWidth:I

    .line 47
    iput p2, p0, Lcom/htc/camera/widget/VerticalSeekBar;->currentHeight:I

    .line 48
    iput p3, p0, Lcom/htc/camera/widget/VerticalSeekBar;->oldWidth:I

    .line 49
    iput p4, p0, Lcom/htc/camera/widget/VerticalSeekBar;->oldHeight:I

    .line 50
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v0, v2

    .line 114
    goto :goto_0

    .line 76
    :pswitch_0
    iget-object v1, p0, Lcom/htc/camera/widget/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 77
    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    .line 79
    if-gez v1, :cond_6

    .line 80
    :goto_2
    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getMax()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getMax()I

    move-result v0

    .line 81
    :cond_1
    iget v1, p0, Lcom/htc/camera/widget/VerticalSeekBar;->lastProgress:I

    if-eq v0, v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/htc/camera/widget/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v1, p0, v0, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 84
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/VerticalSeekBar;->setProgress(I)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/htc/camera/widget/VerticalSeekBar;->setPressed(Z)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/htc/camera/widget/VerticalSeekBar;->setSelected(Z)V

    goto :goto_1

    .line 89
    :pswitch_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 90
    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    .line 92
    if-gez v1, :cond_3

    move v1, v0

    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getMax()I

    move-result v3

    if-le v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getMax()I

    move-result v1

    .line 94
    :cond_4
    iget v3, p0, Lcom/htc/camera/widget/VerticalSeekBar;->lastProgress:I

    if-eq v1, v3, :cond_5

    .line 95
    iget-object v3, p0, Lcom/htc/camera/widget/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3, p0, v1, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 97
    :cond_5
    invoke-virtual {p0, v1}, Lcom/htc/camera/widget/VerticalSeekBar;->setProgress(I)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/camera/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v1, v3, v0, v0}, Lcom/htc/camera/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/htc/camera/widget/VerticalSeekBar;->setPressed(Z)V

    .line 101
    invoke-virtual {p0, v2}, Lcom/htc/camera/widget/VerticalSeekBar;->setSelected(Z)V

    goto :goto_1

    .line 104
    :pswitch_2
    iget-object v1, p0, Lcom/htc/camera/widget/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/VerticalSeekBar;->setPressed(Z)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/VerticalSeekBar;->setSelected(Z)V

    goto/16 :goto_1

    .line 109
    :pswitch_3
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 110
    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/VerticalSeekBar;->setPressed(Z)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/VerticalSeekBar;->setSelected(Z)V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/camera/widget/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 64
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    .prologue
    .line 55
    iput p1, p0, Lcom/htc/camera/widget/VerticalSeekBar;->lastProgress:I

    .line 56
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 57
    iget v0, p0, Lcom/htc/camera/widget/VerticalSeekBar;->currentWidth:I

    iget v1, p0, Lcom/htc/camera/widget/VerticalSeekBar;->currentHeight:I

    iget v2, p0, Lcom/htc/camera/widget/VerticalSeekBar;->oldWidth:I

    iget v3, p0, Lcom/htc/camera/widget/VerticalSeekBar;->oldHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 58
    return-void
.end method
