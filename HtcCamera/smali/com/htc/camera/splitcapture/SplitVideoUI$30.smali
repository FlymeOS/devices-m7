.class Lcom/htc/camera/splitcapture/SplitVideoUI$30;
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
    .line 1438
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$30;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1442
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$30;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->REVIEW:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$30;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5800(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clicked on m_SplitCaptureReviewPlayBtn"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$30;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$30;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/splitcapture/SplitVideoController;

    move-result-object v1

    const/16 v2, 0x2718

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    move v4, v3

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z
    invoke-static/range {v0 .. v6}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5900(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 1447
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$30;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$30;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$30;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick() - Hide common action screen"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$30;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$30;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->hideUI()Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5502(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto :goto_0
.end method
