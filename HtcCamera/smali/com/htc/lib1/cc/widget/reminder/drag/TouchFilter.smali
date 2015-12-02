.class public Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;
.super Ljava/lang/Object;
.source "TouchFilter.java"


# instance fields
.field private mAction:I

.field private mPressed:Z

.field private mTouchListener:Lcom/htc/lib1/cc/widget/reminder/drag/d;

.field private mX:I

.field private mY:I

.field private m_pointId:I


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/16 v3, -0x3e8

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 39
    if-nez v1, :cond_1

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mAction:I

    .line 41
    iput v3, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mX:I

    .line 42
    iput v3, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mY:I

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->m_pointId:I

    .line 44
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mPressed:Z

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->sendTouchEventToListener(ILandroid/view/MotionEvent;)Z

    move-result v0

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mPressed:Z

    if-eqz v3, :cond_0

    .line 48
    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    if-ne v1, v4, :cond_3

    .line 50
    :cond_2
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mPressed:Z

    .line 51
    invoke-virtual {p0, v1, p1}, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->sendTouchEventToListener(ILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 53
    :cond_3
    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 55
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 56
    iget v2, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->m_pointId:I

    if-ne v1, v2, :cond_0

    .line 57
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mPressed:Z

    .line 58
    invoke-virtual {p0, v4, p1}, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->sendTouchEventToListener(ILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 64
    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 65
    invoke-virtual {p0, v1, p1}, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->sendTouchEventToListener(ILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendTouchEventToListener(ILandroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mTouchListener:Lcom/htc/lib1/cc/widget/reminder/drag/d;

    .line 73
    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    iget v2, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->m_pointId:I

    if-ltz v2, :cond_0

    .line 80
    iget v2, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->m_pointId:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 82
    if-ltz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 84
    :cond_2
    const-string v2, "TouchFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTouchEventToListener not found pointId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->m_pointId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 88
    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_0

    .line 90
    :cond_3
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 92
    iget v5, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->m_pointId:I

    invoke-interface {v1, v2, v5, v3, v4}, Lcom/htc/lib1/cc/widget/reminder/drag/d;->a(Landroid/view/MotionEvent;III)Z

    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    .line 97
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 98
    iget v4, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mAction:I

    if-ne v4, p1, :cond_5

    iget v4, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mX:I

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v5, :cond_5

    iget v4, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mY:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v5, :cond_0

    .line 101
    :cond_5
    iput v3, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mX:I

    .line 102
    iput v2, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mY:I

    .line 103
    iput p1, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->mAction:I

    .line 105
    if-eq p1, v5, :cond_6

    if-ne p1, v6, :cond_7

    .line 107
    :cond_6
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    .line 108
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 110
    :cond_7
    iget v0, p0, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->m_pointId:I

    invoke-interface {v1, p2, v0, v3, v2}, Lcom/htc/lib1/cc/widget/reminder/drag/d;->a(Landroid/view/MotionEvent;III)Z

    move-result v0

    goto/16 :goto_0
.end method
