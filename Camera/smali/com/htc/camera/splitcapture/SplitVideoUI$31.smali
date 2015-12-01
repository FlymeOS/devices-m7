.class Lcom/htc/camera/splitcapture/SplitVideoUI$31;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1534
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->REVIEW:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->prepareConfirmMenuListView()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6100(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    .line 1537
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RetakeConfirmMenuListView:Lcom/htc/camera/menu/MenuListView;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/menu/MenuListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08041b

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1541
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    sget-object v2, Lcom/htc/camera/splitcapture/ISplitCaptureController;->EVENT_LONG_PRESS_TO_RETAKE:Lcom/htc/camera/base/EventKey;

    sget-object v3, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    invoke-static {v1, v2, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6300(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 1542
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;
    invoke-static {v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IRotateDialogManager;

    move-result-object v2

    const/4 v3, 0x1

    sget v4, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-virtual {v5}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a016a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v7, v3, v4}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;ZI)Lcom/htc/camera/Handle;

    move-result-object v0

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowRotateDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v1, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6402(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 1545
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastManager:Lcom/htc/camera/ak;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1550
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastManager:Lcom/htc/camera/ak;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 1551
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v7}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1555
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastManager:Lcom/htc/camera/ak;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviousToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 1556
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$31;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviousToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v7}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto :goto_0
.end method
