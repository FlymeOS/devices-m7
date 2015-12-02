.class Lcom/htc/camera/splitcapture/SplitCaptureMode$6;
.super Ljava/lang/Object;
.source "SplitCaptureMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitCaptureMode;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$6;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$6;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    # getter for: Lcom/htc/camera/splitcapture/SplitCaptureMode;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->access$300(Lcom/htc/camera/splitcapture/SplitCaptureMode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick() - settings menu button clicked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$6;->this$0:Lcom/htc/camera/splitcapture/SplitCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ui/b;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/b;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/b;->showSettingsDialog(I)Lcom/htc/camera/CloseableHandle;

    .line 161
    :cond_0
    return-void
.end method
