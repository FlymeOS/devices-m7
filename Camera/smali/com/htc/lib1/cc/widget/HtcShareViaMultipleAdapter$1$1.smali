.class Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1$1;
.super Ljava/lang/Object;
.source "HtcShareViaMultipleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1$1;->this$1:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1$1;->this$1:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1;->this$0:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    const/4 v1, 0x1

    # setter for: Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->mIsDataReady:Z
    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->access$002(Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;Z)Z

    .line 65
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1$1;->this$1:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter$1;->this$0:Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcShareViaMultipleAdapter;->notifyDataSetChanged()V

    .line 66
    return-void
.end method
