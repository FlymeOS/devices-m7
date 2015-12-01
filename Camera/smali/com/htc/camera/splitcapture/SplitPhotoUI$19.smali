.class Lcom/htc/camera/splitcapture/SplitPhotoUI$19;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

.field final synthetic val$state:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V
    .locals 0

    .prologue
    .line 1916
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$19;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$19;->val$state:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$19;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$19;->val$state:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    # setter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationState:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3302(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 1921
    return-void
.end method
