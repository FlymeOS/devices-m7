.class Lcom/htc/camera/component/PanoramaUI2$3;
.super Ljava/lang/Object;
.source "PanoramaUI2.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PanoramaUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaUI2$3;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 652
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 653
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 654
    cmpg-float v4, v2, v5

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    cmpg-float v2, v3, v5

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$3;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # setter for: Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureButtonPressedBeforeCapture:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/PanoramaUI2;->access$302(Lcom/htc/camera/component/PanoramaUI2;Z)Z

    move v0, v1

    .line 672
    :cond_1
    :goto_0
    return v0

    .line 659
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 662
    :pswitch_0
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2$3;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # getter for: Lcom/htc/camera/component/PanoramaUI2;->m_IsCapturing:Z
    invoke-static {v1}, Lcom/htc/camera/component/PanoramaUI2;->access$400(Lcom/htc/camera/component/PanoramaUI2;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2$3;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    invoke-virtual {v1}, Lcom/htc/camera/component/PanoramaUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const-string v2, "Press panorama capture button"

    invoke-virtual {v1, v2}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2$3;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # setter for: Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureButtonPressedBeforeCapture:Z
    invoke-static {v1, v0}, Lcom/htc/camera/component/PanoramaUI2;->access$302(Lcom/htc/camera/component/PanoramaUI2;Z)Z

    goto :goto_0

    .line 666
    :pswitch_1
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaUI2$3;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # getter for: Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureButtonPressedBeforeCapture:Z
    invoke-static {v2}, Lcom/htc/camera/component/PanoramaUI2;->access$300(Lcom/htc/camera/component/PanoramaUI2;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 667
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaUI2$3;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    # setter for: Lcom/htc/camera/component/PanoramaUI2;->m_IsCaptureButtonPressedBeforeCapture:Z
    invoke-static {v2, v1}, Lcom/htc/camera/component/PanoramaUI2;->access$302(Lcom/htc/camera/component/PanoramaUI2;Z)Z

    goto :goto_0

    .line 669
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaUI2$3;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    invoke-virtual {v1}, Lcom/htc/camera/component/PanoramaUI2;->stopCapture()Z

    goto :goto_0

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
