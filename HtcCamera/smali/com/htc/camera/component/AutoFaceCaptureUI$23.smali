.class Lcom/htc/camera/component/AutoFaceCaptureUI$23;
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
        "Lcom/htc/camera/effect/EffectBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$23;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 855
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$23;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$5000(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$23;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->updateAutoFaceCaptureState()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$2800(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    .line 858
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$23;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$23;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->abort()I

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$23;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureUI;->reserveHFMService()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->access$300(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    .line 861
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$23;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI$23;->this$0:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v2, 0x28a3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 862
    return-void
.end method
