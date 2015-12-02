.class Lcom/htc/camera/component/AutoFaceCaptureUI$12;
.super Ljava/lang/Object;
.source "AutoFaceCaptureUI.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
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
    .line 655
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$12;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x2717

    const/4 v3, 0x0

    .line 659
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$12;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$3200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROPERTY_IS_TOUCH_ON_SCREEN:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$12;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mCanAutoCapture:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$3302(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 662
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$12;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v0, v0, Lcom/htc/camera/component/AutoFaceCaptureUI;->isStableFace:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$12;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, v1, Lcom/htc/camera/component/AutoFaceCaptureUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 663
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$12;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 667
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$12;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$12;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/4 v5, 0x0

    const-wide/16 v6, 0x7d0

    const/4 v8, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0
.end method
