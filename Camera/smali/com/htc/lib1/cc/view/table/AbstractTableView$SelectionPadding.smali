.class Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;
.super Ljava/lang/Object;
.source "AbstractTableView.java"


# instance fields
.field private bottomPadding:I

.field private leftPadding:I

.field private lock:Z

.field private rightPadding:I

.field final synthetic this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

.field private topPadding:I


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3942
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3943
    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    .line 3944
    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->leftPadding:I

    .line 3945
    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->rightPadding:I

    .line 3946
    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->topPadding:I

    .line 3947
    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->bottomPadding:I

    .line 3948
    return-void
.end method


# virtual methods
.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 4008
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->bottomPadding:I

    return v0
.end method

.method public getLeftPadding()I
    .locals 1

    .prologue
    .line 3984
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->leftPadding:I

    return v0
.end method

.method public getRightPadding()I
    .locals 1

    .prologue
    .line 4000
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->rightPadding:I

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 3992
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->topPadding:I

    return v0
.end method

.method public setPadding(IIII)V
    .locals 1

    .prologue
    .line 3955
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->lock:Z

    if-nez v0, :cond_0

    .line 3956
    iput p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->leftPadding:I

    .line 3957
    iput p2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->topPadding:I

    .line 3958
    iput p3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->rightPadding:I

    .line 3959
    iput p4, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->bottomPadding:I

    .line 3961
    :cond_0
    return-void
.end method
