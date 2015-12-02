.class Lcom/htc/camera/component/AutoFaceCaptureUI$9;
.super Ljava/lang/Object;
.source "AutoFaceCaptureUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$9;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 620
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$9;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showAutoCaptureToast(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2700(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 622
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$9;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->showVoiceCommandToast(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2600(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V

    .line 623
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$9;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 624
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$9;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x28a3

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 625
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$9;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 627
    :cond_0
    return-void
.end method
