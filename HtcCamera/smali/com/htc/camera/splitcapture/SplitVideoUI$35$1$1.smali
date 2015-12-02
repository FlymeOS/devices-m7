.class Lcom/htc/camera/splitcapture/SplitVideoUI$35$1$1;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;)V
    .locals 0

    .prologue
    .line 2662
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1$1;->this$2:Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1$1;->this$2:Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$35;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$35;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1$1;->this$2:Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$35;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitVideoUI$35;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->propertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7400(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1$1;->this$2:Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;

    iget-object v2, v2, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$35;

    iget-object v2, v2, Lcom/htc/camera/splitcapture/SplitVideoUI$35;->val$nextState:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2670
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1$1;->this$2:Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$35;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$35;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ui/IOpenGLViewfinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2671
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1$1;->this$2:Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$35;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$35;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ui/IOpenGLViewfinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/ui/IOpenGLViewfinder;->invalidatePreviewBounds()V

    .line 2674
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1$1;->this$2:Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$35;

    iget-boolean v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$35;->val$doEnableActionScreen:Z

    if-eqz v0, :cond_1

    .line 2675
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1$1;->this$2:Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$35$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoUI$35;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI$35;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableActionScreen()V

    .line 2676
    :cond_1
    return-void
.end method
