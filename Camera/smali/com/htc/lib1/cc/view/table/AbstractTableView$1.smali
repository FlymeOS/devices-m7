.class Lcom/htc/lib1/cc/view/table/AbstractTableView$1;
.super Ljava/lang/Object;
.source "AbstractTableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$1;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$1;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->scrollIntoSlots()V

    .line 605
    return-void
.end method
