.class Lcom/htc/camera/splitcapture/SplitPhotoUI$14;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V
    .locals 0

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$14;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$14;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Start:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    # setter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationState:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3302(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 1166
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$14;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationStopWatch:Lcom/htc/camera/StopWatch;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3400(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Lcom/htc/camera/StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->restart()V

    .line 1167
    return-void
.end method
