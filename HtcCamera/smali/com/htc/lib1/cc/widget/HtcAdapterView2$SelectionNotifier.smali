.class Lcom/htc/lib1/cc/widget/HtcAdapterView2$SelectionNotifier;
.super Landroid/os/Handler;
.source "HtcAdapterView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;


# direct methods
.method private constructor <init>(Lcom/htc/lib1/cc/widget/HtcAdapterView2;)V
    .locals 0

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$SelectionNotifier;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/widget/HtcAdapterView2;Lcom/htc/lib1/cc/widget/n;)V
    .locals 0

    .prologue
    .line 1162
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAdapterView2$SelectionNotifier;-><init>(Lcom/htc/lib1/cc/widget/HtcAdapterView2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$SelectionNotifier;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 1172
    invoke-virtual {p0, p0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 1176
    :goto_0
    return-void

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$SelectionNotifier;->this$0:Lcom/htc/lib1/cc/widget/HtcAdapterView2;

    # invokes: Lcom/htc/lib1/cc/widget/HtcAdapterView2;->fireOnSelected()V
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->access$200(Lcom/htc/lib1/cc/widget/HtcAdapterView2;)V

    goto :goto_0
.end method
