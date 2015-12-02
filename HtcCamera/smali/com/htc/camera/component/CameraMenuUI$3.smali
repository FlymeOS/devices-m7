.class Lcom/htc/camera/component/CameraMenuUI$3;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$3;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$3;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->cancelAutoFocus()Z

    .line 709
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$3;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->openCameraMenuUI()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$2900(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 713
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$3;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$3000(Lcom/htc/camera/component/CameraMenuUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick() - Capture UI is blocked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
