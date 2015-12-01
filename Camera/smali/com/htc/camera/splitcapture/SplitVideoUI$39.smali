.class Lcom/htc/camera/splitcapture/SplitVideoUI$39;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 3089
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$39;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$39;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7800(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set m_SwapPreivewAnimationState to \"STARTING\""

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3094
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$39;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->STARTING:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwapPreivewAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;)Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 3095
    return-void
.end method
