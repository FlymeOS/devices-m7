.class Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$2;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;)V
    .locals 0

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$2;->this$0:Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$2;->this$0:Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

    # getter for: Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->access$100(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1234
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$2;->this$0:Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

    # invokes: Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->setDefaultWeight()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->access$500(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;)V

    .line 1235
    monitor-exit v1

    .line 1236
    return-void

    .line 1235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
