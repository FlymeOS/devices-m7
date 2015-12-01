.class Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;
.super Ljava/lang/Object;
.source "TableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TTL:I

.field private mTtl:I

.field private storedPercentage:I

.field private storedPosition:I

.field final synthetic this$0:Lcom/htc/lib1/cc/view/table/TableView;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/view/table/TableView;II)V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 596
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->this$0:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput v0, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->TTL:I

    .line 593
    iput v0, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->mTtl:I

    .line 597
    iput p2, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->storedPosition:I

    .line 598
    iput p3, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->storedPercentage:I

    .line 599
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->this$0:Lcom/htc/lib1/cc/view/table/TableView;

    # getter for: Lcom/htc/lib1/cc/view/table/TableView;->mHasMeasured:Z
    invoke-static {v0}, Lcom/htc/lib1/cc/view/table/TableView;->access$000(Lcom/htc/lib1/cc/view/table/TableView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    iget v0, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->mTtl:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->mTtl:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->this$0:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/view/table/TableView;->post(Ljava/lang/Runnable;)Z

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->this$0:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->storedPosition:I

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->this$0:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/view/table/TableView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/htc/lib1/cc/view/table/TableView$SetCenterRunnable;->storedPercentage:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/lib1/cc/view/table/TableView;->setCenterView(III)V

    goto :goto_0
.end method
