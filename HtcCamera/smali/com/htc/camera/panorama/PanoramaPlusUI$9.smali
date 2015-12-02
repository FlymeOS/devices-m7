.class Lcom/htc/camera/panorama/PanoramaPlusUI$9;
.super Lcom/htc/camera/trigger/Trigger;
.source "PanoramaPlusUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$9;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    .line 944
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$9;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$600(Lcom/htc/camera/panorama/PanoramaPlusUI;)Lcom/htc/camera/panorama/PanoramaPlusController;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$9;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$9;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$3100(Lcom/htc/camera/panorama/PanoramaPlusUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter PanoramaPlus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$9;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->enter(IZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$3200(Lcom/htc/camera/panorama/PanoramaPlusUI;IZ)V

    .line 949
    :cond_0
    return-void
.end method
