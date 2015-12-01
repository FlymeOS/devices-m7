.class Lcom/htc/lib1/cc/view/table/AbstractAdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "AbstractAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;


# direct methods
.method private constructor <init>(Lcom/htc/lib1/cc/view/table/AbstractAdapterView;)V
    .locals 0

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$SelectionNotifier;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/view/table/AbstractAdapterView;Lcom/htc/lib1/cc/view/table/a;)V
    .locals 0

    .prologue
    .line 1107
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$SelectionNotifier;-><init>(Lcom/htc/lib1/cc/view/table/AbstractAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$SelectionNotifier;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {p0, p0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 1121
    :goto_0
    return-void

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$SelectionNotifier;->this$0:Lcom/htc/lib1/cc/view/table/AbstractAdapterView;

    # invokes: Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->access$200(Lcom/htc/lib1/cc/view/table/AbstractAdapterView;)V

    goto :goto_0
.end method
