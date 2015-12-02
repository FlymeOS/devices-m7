.class Lcom/htc/camera/component/DualLensCalibrateUI$1;
.super Ljava/lang/Object;
.source "DualLensCalibrateUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/capturemode/CaptureMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/DualLensCalibrateUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/DualLensCalibrateUI;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/camera/component/DualLensCalibrateUI$1;->this$0:Lcom/htc/camera/component/DualLensCalibrateUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 252
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI$1;->this$0:Lcom/htc/camera/component/DualLensCalibrateUI;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->access$000(Lcom/htc/camera/component/DualLensCalibrateUI;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new captureMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*#*#3825X#*#*"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*#*#3825X#*#*"

    const/4 v2, 0x4

    invoke-virtual {v0, v4, v1, v4, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI$1;->this$0:Lcom/htc/camera/component/DualLensCalibrateUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->enterDualLensCalibrateMode()V

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateUI$1;->this$0:Lcom/htc/camera/component/DualLensCalibrateUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/DualLensCalibrateUI;->exitDualLensCalibrateMode()V

    goto :goto_0
.end method
