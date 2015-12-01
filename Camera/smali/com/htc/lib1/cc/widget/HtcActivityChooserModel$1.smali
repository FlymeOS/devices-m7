.class Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$1;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

.field final synthetic val$chosenName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$1;->this$0:Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

    iput-object p2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$1;->val$chosenName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$1;->this$0:Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

    # getter for: Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->access$100(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 629
    :try_start_0
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$1;->val$chosenName:Landroid/content/ComponentName;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 631
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$1;->this$0:Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

    # invokes: Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->addHisoricalRecord(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;)Z
    invoke-static {v2, v0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->access$200(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;)Z

    .line 632
    monitor-exit v1

    .line 633
    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
