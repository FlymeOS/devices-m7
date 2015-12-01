.class Lcom/htc/camera/component/AutoFaceCaptureUI$8;
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
    .line 600
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$8;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 604
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$8;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 606
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$8;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x28a3

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 607
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$8;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x2716

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 608
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$8;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stVoiceCaptureToastShown:Z
    invoke-static {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2202(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 609
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$8;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stAutoCaptureToastShown:Z
    invoke-static {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2902(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 610
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$8;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->releaseHFMService()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$3000(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    .line 612
    :cond_0
    return-void
.end method
