.class Lcom/htc/camera/component/RecordingLimitController$4$1;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/RecordingLimitController$4;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RecordingLimitController$4;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/htc/camera/component/RecordingLimitController$4$1;->this$1:Lcom/htc/camera/component/RecordingLimitController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$4$1;->this$1:Lcom/htc/camera/component/RecordingLimitController$4;

    iget-object v0, v0, Lcom/htc/camera/component/RecordingLimitController$4;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/RecordingLimitController;->access$400(Lcom/htc/camera/component/RecordingLimitController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clear cached storage information"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$4$1;->this$1:Lcom/htc/camera/component/RecordingLimitController$4;

    iget-object v0, v0, Lcom/htc/camera/component/RecordingLimitController$4;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/htc/camera/component/RecordingLimitController;->access$300(Lcom/htc/camera/component/RecordingLimitController;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 248
    return-void
.end method
