.class Lcom/htc/camera/component/RecordingLimitController$5$1;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/RecordingLimitController$5;

.field final synthetic val$e:Lcom/htc/camera/OneValueEventArgs;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RecordingLimitController$5;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/htc/camera/component/RecordingLimitController$5$1;->this$1:Lcom/htc/camera/component/RecordingLimitController$5;

    iput-object p2, p0, Lcom/htc/camera/component/RecordingLimitController$5$1;->val$e:Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$5$1;->this$1:Lcom/htc/camera/component/RecordingLimitController$5;

    iget-object v0, v0, Lcom/htc/camera/component/RecordingLimitController$5;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/RecordingLimitController;->access$500(Lcom/htc/camera/component/RecordingLimitController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clear cached storage information for "

    iget-object v2, p0, Lcom/htc/camera/component/RecordingLimitController$5$1;->val$e:Lcom/htc/camera/OneValueEventArgs;

    iget-object v2, v2, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$5$1;->this$1:Lcom/htc/camera/component/RecordingLimitController$5;

    iget-object v0, v0, Lcom/htc/camera/component/RecordingLimitController$5;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/htc/camera/component/RecordingLimitController;->access$300(Lcom/htc/camera/component/RecordingLimitController;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController$5$1;->val$e:Lcom/htc/camera/OneValueEventArgs;

    iget-object v1, v1, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method
