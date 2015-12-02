.class Lcom/htc/camera/splitcapture/SplitVideoUI$19;
.super Lcom/htc/camera/trigger/Trigger;
.source "SplitVideoUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$19;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$19;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->onCameraThreadRunning()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$4300(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    .line 1218
    return-void
.end method
