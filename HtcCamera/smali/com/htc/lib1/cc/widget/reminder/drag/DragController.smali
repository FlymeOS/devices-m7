.class public Lcom/htc/lib1/cc/widget/reminder/drag/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# instance fields
.field private mDragState:I

.field private mDragging:Z

.field private mTouchFilter:Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/drag/DragController;->mTouchFilter:Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/drag/DragController;->mTouchFilter:Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/reminder/drag/TouchFilter;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 547
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isClicking()Z
    .locals 2

    .prologue
    .line 666
    iget v0, p0, Lcom/htc/lib1/cc/widget/reminder/drag/DragController;->mDragState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/reminder/drag/DragController;->mDragging:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/drag/DragController;->isClicking()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
