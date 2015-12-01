.class Lcom/htc/camera/splitcapture/SplitVideoUI$7;
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
    .line 924
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$7;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$7;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set m_Captured1stAnimationState to \"STARTING\""

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$7;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->STARTING:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Captured1stAnimationState:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$502(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;)Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 930
    return-void
.end method
