.class Lcom/htc/camera/HTCCamera$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "HTCCamera.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method private constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$ScaleListener;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/HTCCamera$1;)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/htc/camera/HTCCamera$ScaleListener;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 599
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$ScaleListener;->this$0:Lcom/htc/camera/HTCCamera;

    # setter for: Lcom/htc/camera/HTCCamera;->mIsPinchZoomed:Z
    invoke-static {v0, v3}, Lcom/htc/camera/HTCCamera;->access$602(Lcom/htc/camera/HTCCamera;Z)Z

    .line 601
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$ScaleListener;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mInitSpan:F
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$700(Lcom/htc/camera/HTCCamera;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 603
    const-string v0, "HTCCamera"

    const-string v1, "onScale() - initialize value of span & zoom"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$ScaleListener;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    # setter for: Lcom/htc/camera/HTCCamera;->mInitSpan:F
    invoke-static {v0, v1}, Lcom/htc/camera/HTCCamera;->access$702(Lcom/htc/camera/HTCCamera;F)F

    .line 605
    iget-object v1, p0, Lcom/htc/camera/HTCCamera$ScaleListener;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera$ScaleListener;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/htc/camera/HTCCamera;->mBaseZoom:I
    invoke-static {v1, v0}, Lcom/htc/camera/HTCCamera;->access$802(Lcom/htc/camera/HTCCamera;I)I

    .line 608
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$ScaleListener;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mInitSpan:F
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$700(Lcom/htc/camera/HTCCamera;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 610
    iget-object v1, p0, Lcom/htc/camera/HTCCamera$ScaleListener;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v2, p0, Lcom/htc/camera/HTCCamera$ScaleListener;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mBaseZoom:I
    invoke-static {v2}, Lcom/htc/camera/HTCCamera;->access$800(Lcom/htc/camera/HTCCamera;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->changeZoom(I)V

    .line 612
    return v3
.end method
