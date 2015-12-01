.class Lcom/htc/camera/component/CaptureBar$3;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 710
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 714
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 715
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 716
    iget-object v6, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I
    invoke-static {v6}, Lcom/htc/camera/component/CaptureBar;->access$600(Lcom/htc/camera/component/CaptureBar;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    move v0, v1

    .line 795
    :goto_0
    return v0

    .line 718
    :cond_0
    if-ltz v4, :cond_1

    if-gt v4, v0, :cond_1

    if-ltz v5, :cond_1

    if-le v5, v3, :cond_4

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureBar;->isPhotoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v0, v0, Lcom/htc/camera/component/CaptureBar;->isVideoCaptureButtonPressed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->resetCaptureButtons(Z)V
    invoke-static {v0, v2}, Lcom/htc/camera/component/CaptureBar;->access$700(Lcom/htc/camera/component/CaptureBar;Z)V

    .line 723
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$800(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/property/Property;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    :cond_3
    move v0, v1

    .line 725
    goto :goto_0

    .line 729
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    move v0, v2

    .line 795
    goto :goto_0

    .line 734
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$100(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 736
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_1

    .line 739
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    check-cast p1, Lcom/htc/camera/widget/CaptureBarButton;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onCameraButtonPressed(Lcom/htc/camera/widget/CaptureBarButton;I)V
    invoke-static {v0, p1, v2}, Lcom/htc/camera/component/CaptureBar;->access$900(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto :goto_1

    .line 742
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    check-cast p1, Lcom/htc/camera/widget/CaptureBarButton;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onCamcorderButtonPressed(Lcom/htc/camera/widget/CaptureBarButton;I)V
    invoke-static {v0, p1, v2}, Lcom/htc/camera/component/CaptureBar;->access$1000(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto :goto_1

    .line 746
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$200(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 747
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onTopSecondaryButtonPressed()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$1100(Lcom/htc/camera/component/CaptureBar;)V

    goto :goto_1

    .line 748
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$300(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 750
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2

    :pswitch_5
    goto :goto_1

    .line 753
    :pswitch_6
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    check-cast p1, Lcom/htc/camera/widget/CaptureBarButton;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onCameraButtonPressed(Lcom/htc/camera/widget/CaptureBarButton;I)V
    invoke-static {v0, p1, v2}, Lcom/htc/camera/component/CaptureBar;->access$900(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto :goto_1

    .line 756
    :pswitch_7
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    check-cast p1, Lcom/htc/camera/widget/CaptureBarButton;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onCamcorderButtonPressed(Lcom/htc/camera/widget/CaptureBarButton;I)V
    invoke-static {v0, p1, v2}, Lcom/htc/camera/component/CaptureBar;->access$1000(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto :goto_1

    .line 767
    :pswitch_8
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_PrimaryButton:Lcom/htc/camera/widget/CaptureBarButton;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$100(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 769
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_3

    :pswitch_9
    goto :goto_1

    .line 772
    :pswitch_a
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    check-cast p1, Lcom/htc/camera/widget/CaptureBarButton;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onCameraButtonReleased(Lcom/htc/camera/widget/CaptureBarButton;I)V
    invoke-static {v0, p1, v2}, Lcom/htc/camera/component/CaptureBar;->access$1200(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto/16 :goto_1

    .line 775
    :pswitch_b
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    check-cast p1, Lcom/htc/camera/widget/CaptureBarButton;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onCamcorderButtonReleased(Lcom/htc/camera/widget/CaptureBarButton;I)V
    invoke-static {v0, p1, v2}, Lcom/htc/camera/component/CaptureBar;->access$1300(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto/16 :goto_1

    .line 779
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_TopSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$200(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 780
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onTopSecondaryButtonReleased()V
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$1400(Lcom/htc/camera/component/CaptureBar;)V

    goto/16 :goto_1

    .line 781
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_BottomSecondaryButton:Lcom/htc/camera/widget/CaptureBarButton;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$300(Lcom/htc/camera/component/CaptureBar;)Lcom/htc/camera/widget/CaptureBarButton;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 783
    sget-object v1, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    invoke-virtual {v0}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_4

    :pswitch_c
    goto/16 :goto_1

    .line 786
    :pswitch_d
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    check-cast p1, Lcom/htc/camera/widget/CaptureBarButton;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onCameraButtonReleased(Lcom/htc/camera/widget/CaptureBarButton;I)V
    invoke-static {v0, p1, v2}, Lcom/htc/camera/component/CaptureBar;->access$1200(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto/16 :goto_1

    .line 789
    :pswitch_e
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$3;->this$0:Lcom/htc/camera/component/CaptureBar;

    check-cast p1, Lcom/htc/camera/widget/CaptureBarButton;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onCamcorderButtonReleased(Lcom/htc/camera/widget/CaptureBarButton;I)V
    invoke-static {v0, p1, v2}, Lcom/htc/camera/component/CaptureBar;->access$1300(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto/16 :goto_1

    .line 729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 736
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 750
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 769
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 783
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method
