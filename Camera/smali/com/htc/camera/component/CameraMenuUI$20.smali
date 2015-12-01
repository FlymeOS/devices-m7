.class Lcom/htc/camera/component/CameraMenuUI$20;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 980
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x2716

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 983
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1014
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4300(Lcom/htc/camera/component/CameraMenuUI;)Landroid/view/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_GestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4300(Lcom/htc/camera/component/CameraMenuUI;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    move v1, v2

    .line 1017
    :goto_1
    return v1

    .line 986
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsAnimating:Z
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$1900(Lcom/htc/camera/component/CameraMenuUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 991
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0, v3, v4}, Lcom/htc/camera/component/CameraMenuUI;->hasMessages(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 993
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0, v4}, Lcom/htc/camera/component/CameraMenuUI;->removeMessages(I)V

    .line 994
    iget-object v3, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$200(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v4

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsCaptureModeChanged:Z
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4200(Lcom/htc/camera/component/CameraMenuUI;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    # invokes: Lcom/htc/camera/component/CameraMenuUI;->setCaptureMode(IZZ)Z
    invoke-static {v3, v4, v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$500(Lcom/htc/camera/component/CameraMenuUI;IZZ)Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 996
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$200(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->pointToViewPosition(IIZ)I
    invoke-static {v0, v3, v4, v2}, Lcom/htc/camera/component/CameraMenuUI;->access$300(Lcom/htc/camera/component/CameraMenuUI;IIZ)I

    move-result v3

    .line 999
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$200(Lcom/htc/camera/component/CameraMenuUI;)I

    move-result v0

    if-ne v3, v0, :cond_5

    .line 1000
    iget-object v4, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->m_IsCaptureModeChanged:Z
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$4200(Lcom/htc/camera/component/CameraMenuUI;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    # invokes: Lcom/htc/camera/component/CameraMenuUI;->setCaptureMode(IZZ)Z
    invoke-static {v4, v3, v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$500(Lcom/htc/camera/component/CameraMenuUI;IZZ)Z

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_3

    .line 1002
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$20;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    const/4 v1, -0x1

    # setter for: Lcom/htc/camera/component/CameraMenuUI;->mTapPosition:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/CameraMenuUI;->access$202(Lcom/htc/camera/component/CameraMenuUI;I)I

    goto :goto_0

    .line 983
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
