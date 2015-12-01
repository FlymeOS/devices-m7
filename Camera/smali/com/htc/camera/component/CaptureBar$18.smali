.class Lcom/htc/camera/component/CaptureBar$18;
.super Lcom/htc/camera/trigger/Trigger;
.source "CaptureBar.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$18;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2088
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$18;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$3000(Lcom/htc/camera/component/CaptureBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2093
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$18;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$3100(Lcom/htc/camera/component/CaptureBar;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/widget/CaptureBarButton;

    if-eqz v0, :cond_1

    .line 2095
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$18;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$3100(Lcom/htc/camera/component/CaptureBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/CaptureBarButton;

    .line 2096
    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar$18;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->m_PopupOutsideTouchedView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/camera/component/CaptureBar;->access$3100(Lcom/htc/camera/component/CaptureBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;

    .line 2097
    sget-object v2, Lcom/htc/camera/component/CaptureBar$26;->$SwitchMap$com$htc$camera$component$CaptureBar$CaptureButtonFunction:[I

    invoke-virtual {v1}, Lcom/htc/camera/component/CaptureBar$CaptureButtonFunction;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object v4, v1

    move-object v6, v0

    .line 2117
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$18;->this$0:Lcom/htc/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureBar$18;->this$0:Lcom/htc/camera/component/CaptureBar;

    const/16 v2, 0x2711

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v3

    aput-object v4, v5, v7

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/CaptureBar;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 2120
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$18;->this$0:Lcom/htc/camera/component/CaptureBar;

    # setter for: Lcom/htc/camera/component/CaptureBar;->m_IsPopupOutsideTouched:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/CaptureBar;->access$3002(Lcom/htc/camera/component/CaptureBar;Z)Z

    .line 2123
    :cond_0
    return-void

    .line 2100
    :pswitch_1
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar$18;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onCameraButtonPressed(Lcom/htc/camera/widget/CaptureBarButton;I)V
    invoke-static {v2, v0, v7}, Lcom/htc/camera/component/CaptureBar;->access$900(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto :goto_0

    .line 2106
    :pswitch_2
    iget-object v2, p0, Lcom/htc/camera/component/CaptureBar$18;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onCamcorderButtonPressed(Lcom/htc/camera/widget/CaptureBarButton;I)V
    invoke-static {v2, v0, v7}, Lcom/htc/camera/component/CaptureBar;->access$1000(Lcom/htc/camera/component/CaptureBar;Lcom/htc/camera/widget/CaptureBarButton;I)V

    goto :goto_0

    :cond_1
    move-object v4, v1

    move-object v6, v1

    .line 2113
    goto :goto_1

    .line 2097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
