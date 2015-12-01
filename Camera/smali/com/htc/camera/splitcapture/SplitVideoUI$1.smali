.class Lcom/htc/camera/splitcapture/SplitVideoUI$1;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/16 v2, 0x2718

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 216
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 220
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    .line 221
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 223
    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v4, v4, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v4}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureLeftView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/widget/ImageView;

    move-result-object v4

    if-eq p1, v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v4, v4, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v4}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureRightView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/widget/ImageView;

    move-result-object v4

    if-ne p1, v4, :cond_5

    .line 226
    :cond_3
    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_0

    .line 229
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clicked on m_SplitCaptureLeftView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/splitcapture/SplitVideoController;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v4, v3

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    invoke-static/range {v0 .. v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$400(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 233
    :cond_5
    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v4, v4, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v4}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureRightView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/widget/ImageView;

    move-result-object v4

    if-eq p1, v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v4, v4, Lcom/htc/camera/splitcapture/SplitVideoUI;->isLeft2Right:Lcom/htc/camera/property/a;

    invoke-virtual {v4}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureLeftView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/widget/ImageView;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 236
    :cond_7
    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v1, v4, :cond_8

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;
    invoke-static {v4}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    move-result-object v4

    sget-object v5, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    if-eq v4, v5, :cond_a

    :cond_8
    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v1, v4, :cond_a

    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v1, v4, :cond_9

    sget-object v4, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    if-eq v0, v4, :cond_a

    :cond_9
    sget-object v4, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    if-ne v0, v1, :cond_0

    .line 241
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clicked on m_SplitCaptureRightView"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/splitcapture/SplitVideoController;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v4, v3

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    invoke-static/range {v0 .. v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$700(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto/16 :goto_0
.end method
