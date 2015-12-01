.class Lcom/htc/camera/splitcapture/SplitVideoUI$28;
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
    .line 1372
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$28;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$28;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->REVIEW:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$28;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_IsMediaPlaying:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/property/Property;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1399
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$28;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$28;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1387
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$28;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick() - Hide common action screen"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$28;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$28;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->hideUI()Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5502(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 1393
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$28;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5700(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick() - Show common action screen"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$28;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CommonActionScreen:Lcom/htc/camera/actionscreen/CommonActionScreen;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/actionscreen/CommonActionScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$28;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->showUI(Lcom/htc/camera/Handle;)V

    .line 1395
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$28;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_HideCommonActionScreenHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5502(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto :goto_0
.end method
