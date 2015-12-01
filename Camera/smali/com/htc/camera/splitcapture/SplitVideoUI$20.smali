.class Lcom/htc/camera/splitcapture/SplitVideoUI$20;
.super Lcom/htc/camera/trigger/Trigger;
.source "SplitVideoUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$20;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->onFirstPreviewFrameReceived()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$4400(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    .line 1228
    :cond_0
    return-void
.end method
