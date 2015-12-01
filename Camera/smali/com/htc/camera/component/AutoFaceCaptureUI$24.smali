.class Lcom/htc/camera/component/AutoFaceCaptureUI$24;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "AutoFaceCaptureUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$24;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    const/4 v3, 0x0

    .line 871
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$24;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->updateAutoFaceCaptureState()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2800(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    .line 873
    iget-object v0, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$24;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 876
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$24;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 877
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$24;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v0, v0, Lcom/htc/camera/component/AutoFaceCaptureUI;->isStableFace:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$24;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, v1, Lcom/htc/camera/component/AutoFaceCaptureUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 878
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$24;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # setter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stAutoCaptureToastShown:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2902(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z

    .line 880
    :cond_0
    return-void
.end method
