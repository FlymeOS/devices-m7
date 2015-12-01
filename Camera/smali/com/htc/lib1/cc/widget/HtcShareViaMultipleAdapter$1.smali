.class Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1;
.super Landroid/database/DataSetObserver;
.source "HtcShareViaMultipleAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1;->this$0:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 62
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1;->this$0:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    # getter for: Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->access$100(Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1$1;-><init>(Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method
