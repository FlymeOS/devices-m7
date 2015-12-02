.class Lcom/htc/camera/splitcapture/SplitVideoUI$8;
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
    .line 950
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$8;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$8;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set m_SwapPreivewAnimationState to \"NOT_STARTED\""

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$8;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->NOT_STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwapPreivewAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$2102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;)Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 956
    return-void
.end method
