.class Lcom/htc/camera/dualcamera/DualCameraUI$4;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final MAX_MOVEMENT:D

.field private final SCALE_CENTER:I

.field private final SCALE_LEFT_BOTTOM:I

.field private final SCALE_LEFT_TOP:I

.field private final SCALE_RIGHT_BOTTOM:I

.field private final SCALE_RIGHT_TOP:I

.field private m_CurrentPoint:Landroid/graphics/PointF;

.field private final m_DownPosition:Landroid/graphics/PointF;

.field private m_InitBound:Landroid/graphics/RectF;

.field private m_InitDistance:D

.field private m_InitPoint:Landroid/graphics/PointF;

.field private m_InitPoint2:Landroid/graphics/PointF;

.field private m_IsOneLeftBottomTouched:Z

.field private m_IsOneLeftTopTouched:Z

.field private m_IsOneRightBottomTouched:Z

.field private m_IsOneRightTopTouched:Z

.field private m_IsOneTouched:Z

.field private m_IsTwoTouched:Z

.field private m_IsWaitingForSingleTap:Z

.field private m_LastPoint:Landroid/graphics/PointF;

.field private m_LastTouchDownTime:J

.field private m_SingleTapMotionEvent:Landroid/view/MotionEvent;

.field private final m_SingleTapRunnable:Ljava/lang/Runnable;

.field private m_TouchDownOnSlidingUI:Z

.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->SCALE_LEFT_TOP:I

    .line 231
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->SCALE_RIGHT_TOP:I

    .line 232
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->SCALE_RIGHT_BOTTOM:I

    .line 233
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->SCALE_LEFT_BOTTOM:I

    .line 234
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->SCALE_CENTER:I

    .line 236
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_DownPosition:Landroid/graphics/PointF;

    .line 248
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    .line 250
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    .line 251
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint2:Landroid/graphics/PointF;

    .line 253
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_LastPoint:Landroid/graphics/PointF;

    .line 254
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->MAX_MOVEMENT:D

    .line 258
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;-><init>(Lcom/htc/camera/dualcamera/DualCameraUI$4;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/dualcamera/DualCameraUI$4;)Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/camera/dualcamera/DualCameraUI$4;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapMotionEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/camera/dualcamera/DualCameraUI$4;Z)Z
    .locals 0

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsWaitingForSingleTap:Z

    return p1
.end method

.method private cancelSingleTap()V
    .locals 2

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsWaitingForSingleTap:Z

    if-eqz v0, :cond_0

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsWaitingForSingleTap:Z

    .line 650
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 651
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapMotionEvent:Landroid/view/MotionEvent;

    .line 657
    :cond_0
    return-void
.end method

.method private distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 661
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private handleOnePointerTouch(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 316
    if-nez v6, :cond_2

    .line 318
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1200(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 320
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 322
    iget v8, v0, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    div-int/lit8 v8, v8, 0xa

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_0

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_5

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1300(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleOnePointerTouch() - Touch on sliding UI"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_TouchDownOnSlidingUI:Z

    .line 326
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1400(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 572
    :cond_1
    :goto_0
    return v2

    .line 330
    :cond_2
    if-eq v6, v1, :cond_3

    const/4 v0, 0x3

    if-ne v6, v0, :cond_4

    .line 332
    :cond_3
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_TouchDownOnSlidingUI:Z

    if-eqz v0, :cond_5

    .line 334
    iput-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_TouchDownOnSlidingUI:Z

    .line 335
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1400(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 338
    :cond_4
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_TouchDownOnSlidingUI:Z

    if-eqz v0, :cond_5

    .line 339
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1400(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 343
    :cond_5
    const/4 v0, 0x2

    if-ne v6, v0, :cond_a

    move v0, v1

    .line 345
    :goto_1
    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v7, v7, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v8, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v7, v8}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 347
    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v7}, Lcom/htc/camera/dualcamera/DualCameraUI;->getHandler()Landroid/os/Handler;

    .line 348
    if-eqz v0, :cond_b

    .line 350
    iget-boolean v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsWaitingForSingleTap:Z

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_DownPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_DownPosition:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Landroid/graphics/PointF;->length(FF)F

    move-result v6

    sget-object v7, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v7, v7, Lcom/htc/camera/ScreenResolution;->actualDiagonalLength:F

    div-float/2addr v6, v7

    const v7, 0x3cf5c28f    # 0.03f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    .line 352
    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1500(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "handleOnePointerTouch() - Move too far away, this is not a single tap"

    invoke-static {v6, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->cancelSingleTap()V

    .line 403
    :cond_6
    :goto_2
    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneTouched:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneLeftTopTouched:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneRightTopTouched:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneRightBottomTouched:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneLeftBottomTouched:Z

    if-eqz v0, :cond_1e

    .line 406
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 409
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_LastPoint:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v6}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v6

    .line 410
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_8

    .line 412
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_LastPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    div-float/2addr v6, v5

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_LastPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v8

    div-float/2addr v7, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 416
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v8, v0, v6

    .line 417
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v9, v0, v6

    .line 418
    new-instance v10, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitBound:Landroid/graphics/RectF;

    invoke-direct {v10, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 420
    const-wide/16 v6, 0x0

    .line 421
    const/4 v0, 0x4

    .line 422
    iget-boolean v11, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneTouched:Z

    if-eqz v11, :cond_f

    .line 425
    invoke-virtual {v10, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    move v2, v0

    .line 501
    :goto_3
    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-eqz v0, :cond_9

    .line 503
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v8, v0

    add-double/2addr v8, v6

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_MaxPreviewSize:Lcom/htc/camera/imaging/Size;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1700(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v11, v0

    cmpl-double v0, v8, v11

    if-lez v0, :cond_1a

    .line 505
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_MaxPreviewSize:Lcom/htc/camera/imaging/Size;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1700(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    invoke-direct {p0, v10, v0, v2}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->scaleTo(Landroid/graphics/RectF;Lcom/htc/camera/imaging/Size;I)V

    .line 524
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->checkOutOfPreviewSurface(Landroid/graphics/RectF;)V
    invoke-static {v0, v10}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1900(Lcom/htc/camera/dualcamera/DualCameraUI;Landroid/graphics/RectF;)V

    .line 527
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->updatePreviewBound(Landroid/graphics/RectF;)V
    invoke-static {v0, v10}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2000(Lcom/htc/camera/dualcamera/DualCameraUI;Landroid/graphics/RectF;)V

    .line 529
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_LastPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    move v2, v1

    .line 532
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 343
    goto/16 :goto_1

    .line 356
    :cond_b
    if-nez v6, :cond_d

    .line 358
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->cancelSingleTap()V

    .line 359
    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;
    invoke-static {v6}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1200(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 378
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsWaitingForSingleTap:Z

    .line 379
    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_DownPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 380
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_LastTouchDownTime:J

    goto/16 :goto_2

    .line 383
    :cond_c
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_LastTouchDownTime:J

    goto/16 :goto_2

    .line 385
    :cond_d
    if-ne v6, v1, :cond_e

    .line 387
    iget-boolean v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsWaitingForSingleTap:Z

    if-eqz v6, :cond_6

    .line 389
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->cancelSingleTap()V

    .line 390
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1600(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleOnePointerTouch() - Single tap"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 392
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 393
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 394
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 395
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 399
    :cond_e
    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 400
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_LastTouchDownTime:J

    goto/16 :goto_2

    .line 427
    :cond_f
    iget-boolean v8, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneLeftTopTouched:Z

    if-eqz v8, :cond_12

    .line 430
    const/4 v0, 0x0

    .line 431
    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_11

    move v0, v3

    .line 439
    :cond_10
    :goto_5
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    add-float/2addr v3, v6

    div-float/2addr v3, v5

    .line 440
    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    .line 443
    float-to-double v7, v0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, v9}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v11

    mul-double v6, v7, v11

    .line 444
    goto/16 :goto_3

    .line 433
    :cond_11
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    cmpg-float v3, v3, v6

    if-gez v3, :cond_10

    move v0, v4

    .line 434
    goto :goto_5

    .line 445
    :cond_12
    iget-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneRightTopTouched:Z

    if-eqz v2, :cond_15

    .line 448
    const/4 v0, 0x0

    .line 449
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    cmpl-float v2, v2, v6

    if-lez v2, :cond_14

    move v3, v4

    .line 457
    :cond_13
    :goto_6
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v6

    add-float/2addr v0, v2

    div-float/2addr v0, v5

    .line 458
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    sub-float/2addr v2, v6

    div-float/2addr v2, v5

    .line 461
    float-to-double v6, v3

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v3, v8}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v2

    mul-double/2addr v2, v6

    move-wide v6, v2

    move v2, v1

    .line 462
    goto/16 :goto_3

    .line 451
    :cond_14
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_13

    move v3, v0

    goto :goto_6

    .line 463
    :cond_15
    iget-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneRightBottomTouched:Z

    if-eqz v2, :cond_18

    .line 466
    const/4 v0, 0x0

    .line 467
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    cmpl-float v2, v2, v6

    if-lez v2, :cond_17

    move v3, v4

    .line 472
    :cond_16
    :goto_7
    const/4 v2, 0x2

    .line 475
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    add-float/2addr v0, v6

    div-float/2addr v0, v5

    .line 476
    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    .line 479
    float-to-double v7, v3

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v0, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v3, v9}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v11

    mul-double v6, v7, v11

    .line 480
    goto/16 :goto_3

    .line 469
    :cond_17
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_16

    move v3, v0

    goto :goto_7

    .line 481
    :cond_18
    iget-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneLeftBottomTouched:Z

    if-eqz v2, :cond_26

    .line 484
    const/4 v0, 0x0

    .line 485
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    cmpl-float v2, v2, v6

    if-lez v2, :cond_19

    .line 490
    :goto_8
    const/4 v2, 0x3

    .line 493
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v6

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    add-float/2addr v0, v6

    div-float/2addr v0, v5

    .line 494
    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    .line 497
    float-to-double v7, v3

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v0, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v3, v9}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v11

    mul-double v6, v7, v11

    goto/16 :goto_3

    .line 487
    :cond_19
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_CurrentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_25

    move v3, v4

    .line 488
    goto :goto_8

    .line 507
    :cond_1a
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v8, v0

    add-double/2addr v8, v6

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_MinPreviewSize:Lcom/htc/camera/imaging/Size;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1800(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v11, v0

    cmpg-double v0, v8, v11

    if-gez v0, :cond_1b

    .line 509
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_MinPreviewSize:Lcom/htc/camera/imaging/Size;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1800(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    invoke-direct {p0, v10, v0, v2}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->scaleTo(Landroid/graphics/RectF;Lcom/htc/camera/imaging/Size;I)V

    goto/16 :goto_4

    .line 513
    :cond_1b
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v8, v0

    div-double/2addr v6, v8

    double-to-float v0, v6

    add-float/2addr v0, v4

    .line 514
    cmpl-float v3, v0, v5

    if-lez v3, :cond_1c

    move v0, v5

    .line 516
    :cond_1c
    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1d

    .line 517
    const/high16 v0, 0x3f000000    # 0.5f

    .line 519
    :cond_1d
    invoke-direct {p0, v10, v0, v2}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->scale(Landroid/graphics/RectF;FI)V

    goto/16 :goto_4

    .line 533
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_24

    .line 535
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1200(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 537
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 538
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_LastPoint:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 539
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBound:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2100(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitBound:Landroid/graphics/RectF;

    .line 541
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2200(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 542
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneLeftTopTouched:Z

    .line 553
    :goto_9
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->showPreviewResizeUI(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2300(Lcom/htc/camera/dualcamera/DualCameraUI;Z)V

    move v2, v1

    .line 555
    goto/16 :goto_0

    .line 543
    :cond_1f
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2200(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 544
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneRightTopTouched:Z

    goto :goto_9

    .line 545
    :cond_20
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2200(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 546
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneRightBottomTouched:Z

    goto :goto_9

    .line 547
    :cond_21
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewResizedTouchBounds:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2200(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 548
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneLeftBottomTouched:Z

    goto :goto_9

    .line 550
    :cond_22
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneTouched:Z

    goto :goto_9

    .line 560
    :cond_23
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->showPreviewResizeUI(Z)V
    invoke-static {v0, v2}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2300(Lcom/htc/camera/dualcamera/DualCameraUI;Z)V

    goto/16 :goto_0

    .line 563
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 565
    iput-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneLeftTopTouched:Z

    .line 566
    iput-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneRightTopTouched:Z

    .line 567
    iput-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneRightBottomTouched:Z

    .line 568
    iput-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneLeftBottomTouched:Z

    .line 569
    iput-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneTouched:Z

    goto/16 :goto_0

    :cond_25
    move v3, v0

    goto/16 :goto_8

    :cond_26
    move v2, v0

    goto/16 :goto_3
.end method

.method private handleTwoPointerTouch(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 578
    .line 581
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->cancelSingleTap()V

    .line 584
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_LastTouchDownTime:J

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsTwoTouched:Z

    if-eqz v3, :cond_5

    .line 588
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 589
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 590
    invoke-direct {p0, v3, v0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v3

    .line 591
    iget-wide v5, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitDistance:D

    sub-double/2addr v3, v5

    .line 593
    new-instance v5, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitBound:Landroid/graphics/RectF;

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 596
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v6, v0

    add-double/2addr v6, v3

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_MaxPreviewSize:Lcom/htc/camera/imaging/Size;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1700(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v8, v0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_MaxPreviewSize:Lcom/htc/camera/imaging/Size;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1700(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->scaleTo(Landroid/graphics/RectF;Lcom/htc/camera/imaging/Size;)V

    .line 616
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->checkOutOfPreviewSurface(Landroid/graphics/RectF;)V
    invoke-static {v0, v5}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1900(Lcom/htc/camera/dualcamera/DualCameraUI;Landroid/graphics/RectF;)V

    .line 619
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->updatePreviewBound(Landroid/graphics/RectF;)V
    invoke-static {v0, v5}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2000(Lcom/htc/camera/dualcamera/DualCameraUI;Landroid/graphics/RectF;)V

    move v0, v1

    .line 642
    :cond_0
    :goto_1
    return v0

    .line 600
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v6, v0

    add-double/2addr v6, v3

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_MinPreviewSize:Lcom/htc/camera/imaging/Size;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1800(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v8, v0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_MinPreviewSize:Lcom/htc/camera/imaging/Size;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1800(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->scaleTo(Landroid/graphics/RectF;Lcom/htc/camera/imaging/Size;)V

    goto :goto_0

    .line 606
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v3, v6

    double-to-float v3, v3

    add-float/2addr v0, v3

    .line 607
    cmpl-float v3, v0, v2

    if-lez v3, :cond_3

    move v0, v2

    .line 609
    :cond_3
    float-to-double v2, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v6

    if-gez v2, :cond_4

    .line 610
    const/high16 v0, 0x3f000000    # 0.5f

    .line 612
    :cond_4
    invoke-direct {p0, v5, v0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->scale(Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 623
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 625
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewTouchBound:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1200(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    .line 628
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint2:Landroid/graphics/PointF;

    .line 629
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitPoint2:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitDistance:D

    .line 630
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBound:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2100(Lcom/htc/camera/dualcamera/DualCameraUI;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_InitBound:Landroid/graphics/RectF;

    .line 632
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsTwoTouched:Z

    move v0, v1

    .line 634
    goto/16 :goto_1

    .line 637
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 639
    iput-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsTwoTouched:Z

    goto/16 :goto_1
.end method

.method private scale(Landroid/graphics/RectF;F)V
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->scale(Landroid/graphics/RectF;FI)V

    .line 667
    return-void
.end method

.method private scale(Landroid/graphics/RectF;FI)V
    .locals 5

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 671
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v1, v2, p2

    mul-float/2addr v0, v1

    .line 672
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    .line 674
    packed-switch p3, :pswitch_data_0

    .line 692
    :goto_0
    return-void

    .line 677
    :pswitch_0
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 680
    :pswitch_1
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, v3, v0

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 683
    :pswitch_2
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, v4, v0

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v4, v1

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 686
    :pswitch_3
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v4, v1

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 689
    :pswitch_4
    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_0

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private scaleTo(Landroid/graphics/RectF;Lcom/htc/camera/imaging/Size;)V
    .locals 1

    .prologue
    .line 696
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->scaleTo(Landroid/graphics/RectF;Lcom/htc/camera/imaging/Size;I)V

    .line 697
    return-void
.end method

.method private scaleTo(Landroid/graphics/RectF;Lcom/htc/camera/imaging/Size;I)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 701
    packed-switch p3, :pswitch_data_0

    .line 725
    :goto_0
    return-void

    .line 704
    :pswitch_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p2, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 707
    :pswitch_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p2, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 710
    :pswitch_2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p2, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 713
    :pswitch_3
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p2, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 716
    :pswitch_4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 717
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p2, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p2, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 719
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p2, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 720
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p2, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 722
    div-float/2addr v1, v6

    div-float/2addr v0, v6

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 701
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 281
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v1

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    if-ne v0, v2, :cond_0

    .line 290
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 292
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1000(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch(): Action Mask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Point count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-direct {p0, p2}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->handleOnePointerTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 304
    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 298
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$1100(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch(): Action Mask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Point count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsOneTouched:Z

    .line 301
    invoke-direct {p0, p2}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->handleTwoPointerTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method
