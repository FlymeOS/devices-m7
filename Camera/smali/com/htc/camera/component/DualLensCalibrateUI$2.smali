.class Lcom/htc/camera/component/DualLensCalibrateUI$2;
.super Ljava/lang/Object;
.source "DualLensCalibrateUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/DualLensCalibrateUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/DualLensCalibrateUI;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/camera/component/DualLensCalibrateUI$2;->this$0:Lcom/htc/camera/component/DualLensCalibrateUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 267
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI$2;->this$0:Lcom/htc/camera/component/DualLensCalibrateUI;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->access$100(Lcom/htc/camera/component/DualLensCalibrateUI;)Lcom/htc/camera/capturemode/ICaptureModeManager;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*#*#3825X#*#*"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI$2;->this$0:Lcom/htc/camera/component/DualLensCalibrateUI;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->access$100(Lcom/htc/camera/component/DualLensCalibrateUI;)Lcom/htc/camera/capturemode/ICaptureModeManager;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*#*#3825X#*#*"

    const/4 v2, 0x4

    invoke-virtual {v0, v4, v1, v4, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI$2;->this$0:Lcom/htc/camera/component/DualLensCalibrateUI;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateUI;->m_PictureIdx:I
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->access$200(Lcom/htc/camera/component/DualLensCalibrateUI;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI$2;->this$0:Lcom/htc/camera/component/DualLensCalibrateUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "DualLensCalibrateUI"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    .line 272
    :cond_0
    return-void
.end method
