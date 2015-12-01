.class Lcom/htc/camera/component/IndicatorsUI$24;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IndicatorsUI;

.field final synthetic val$resolutionChangedCallback:Lcom/htc/camera/property/c;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IndicatorsUI;Lcom/htc/camera/property/c;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/htc/camera/component/IndicatorsUI$24;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    iput-object p2, p0, Lcom/htc/camera/component/IndicatorsUI$24;->val$resolutionChangedCallback:Lcom/htc/camera/property/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$24;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    const-class v1, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/IndicatorsUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 620
    if-eqz v0, :cond_0

    .line 622
    iget-object v1, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/IndicatorsUI$24;->val$resolutionChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 623
    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/IndicatorsUI$24;->val$resolutionChangedCallback:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 627
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/IndicatorsUI$24;->this$0:Lcom/htc/camera/component/IndicatorsUI;

    # getter for: Lcom/htc/camera/component/IndicatorsUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/IndicatorsUI;->access$1700(Lcom/htc/camera/component/IndicatorsUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
