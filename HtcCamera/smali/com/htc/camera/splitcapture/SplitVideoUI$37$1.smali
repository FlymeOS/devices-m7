.class Lcom/htc/camera/splitcapture/SplitVideoUI$37$1;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$37;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI$37;)V
    .locals 0

    .prologue
    .line 3006
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$37$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3011
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$37$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$37;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$37;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$37$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$37;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitVideoUI$37;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3014
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$37$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$37;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$37;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IRotateDialogManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3015
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$37$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$37;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$37;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotateDialogManager:Lcom/htc/camera/IRotateDialogManager;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6500(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IRotateDialogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$37$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$37;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitVideoUI$37;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ShowRotateDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/IRotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 3016
    :cond_0
    return-void
.end method
