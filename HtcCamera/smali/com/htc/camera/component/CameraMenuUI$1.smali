.class Lcom/htc/camera/component/CameraMenuUI$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraMenuUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$000(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$MenuState;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/component/CameraMenuUI$MenuState;->OPEN:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    if-eq v1, v2, :cond_1

    .line 185
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$100(Lcom/htc/camera/component/CameraMenuUI;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 188
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->pointToViewPosition(IIZ)I
    invoke-static {v2, v3, v4, v0}, Lcom/htc/camera/component/CameraMenuUI;->access$300(Lcom/htc/camera/component/CameraMenuUI;IIZ)I

    move-result v2

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I
    invoke-static {v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->access$202(Lcom/htc/camera/component/CameraMenuUI;I)I

    .line 189
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$200(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 192
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPagerAdapter:Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$400(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/component/CameraMenuUI$CameraMenuPageAdaper;->getCount()I

    move-result v1

    if-le v1, v5, :cond_2

    .line 193
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v2, 0x2716

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/camera/component/CameraMenuUI;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 196
    :goto_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I
    invoke-static {v2}, Lcom/htc/camera/component/CameraMenuUI;->access$200(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v2

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->setCaptureMode(IZZ)Z
    invoke-static {v1, v2, v5, v0}, Lcom/htc/camera/component/CameraMenuUI;->access$500(Lcom/htc/camera/component/CameraMenuUI;IZZ)Z

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 202
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->pointToViewPosition(IIZ)I
    invoke-static {v0, v1, v2, v4}, Lcom/htc/camera/component/CameraMenuUI;->access$300(Lcom/htc/camera/component/CameraMenuUI;IIZ)I

    move-result v0

    .line 203
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$000(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$MenuState;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/component/CameraMenuUI$MenuState;->OPEN:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    if-ne v1, v2, :cond_0

    .line 210
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/16 v2, 0x2716

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(I)V

    .line 211
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/4 v2, 0x1

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->setCaptureMode(IZZ)Z
    invoke-static {v1, v0, v2, v4}, Lcom/htc/camera/component/CameraMenuUI;->access$500(Lcom/htc/camera/component/CameraMenuUI;IZZ)Z

    .line 213
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CameraMenuViewPager:Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;
    invoke-static {v2}, Lcom/htc/camera/component/CameraMenuUI;->access$600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lib1/cc/view/viewpager/HtcViewPager;->getCurrentItem()I

    move-result v2

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->getViewPage(I)Landroid/view/ViewGroup;
    invoke-static {v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->access$700(Lcom/htc/camera/component/CameraMenuUI;I)Landroid/view/ViewGroup;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    rem-int/lit8 v3, v0, 0x6

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_CurrentLongPressedView:Landroid/view/View;
    invoke-static {v2, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$802(Lcom/htc/camera/component/CameraMenuUI;Landroid/view/View;)Landroid/view/View;

    .line 215
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v2}, Lcom/htc/camera/component/CameraMenuUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->m_LockRotation:Lcom/htc/camera/rotate/UIRotation;
    invoke-static {v1, v2}, Lcom/htc/camera/component/CameraMenuUI;->access$902(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/rotate/UIRotation;

    .line 217
    new-instance v1, Lcom/htc/camera/component/CameraMenuUI$1$1;

    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CurrentLongPressedView:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/camera/component/CameraMenuUI;->access$800(Lcom/htc/camera/component/CameraMenuUI;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/camera/component/CameraMenuUI$1$1;-><init>(Lcom/htc/camera/component/CameraMenuUI$1;Landroid/view/View;)V

    .line 233
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mDropPosition:I
    invoke-static {v3, v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1102(Lcom/htc/camera/component/CameraMenuUI;I)I

    move-result v0

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mDragPosition:I
    invoke-static {v2, v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1002(Lcom/htc/camera/component/CameraMenuUI;I)I

    .line 234
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_CurrentLongPressedView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$800(Lcom/htc/camera/component/CameraMenuUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5, v1, v5, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 240
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->DRAGGING:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$002(Lcom/htc/camera/component/CameraMenuUI;Lcom/htc/camera/component/CameraMenuUI$MenuState;)Lcom/htc/camera/component/CameraMenuUI$MenuState;

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .prologue
    const/16 v8, 0x2716

    .line 246
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$200(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$100(Lcom/htc/camera/component/CameraMenuUI;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 249
    iget-object v2, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/htc/camera/component/CameraMenuUI;->access$100(Lcom/htc/camera/component/CameraMenuUI;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 250
    sget-object v4, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v4, v4, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    sget-object v5, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v5, v5, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v4, v6

    .line 251
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-gez v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_2

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0, v1, v8}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 264
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->pointToViewPosition(IIZ)I
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/component/CameraMenuUI;->access$300(Lcom/htc/camera/component/CameraMenuUI;IIZ)I

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$200(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0, v1, v8}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 259
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$1;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/4 v1, -0x1

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$202(Lcom/htc/camera/component/CameraMenuUI;I)I

    goto :goto_0
.end method
