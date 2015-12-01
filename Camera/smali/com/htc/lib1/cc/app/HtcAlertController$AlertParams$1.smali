.class Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/htc/lib1/cc/app/HtcAlertController;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p6, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$1;->val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;

    iput-object p7, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1587
    if-nez p2, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$1;->val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;

    # getter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mMultiChoiceItemLayout:I
    invoke-static {v1}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$1100(Lcom/htc/lib1/cc/app/HtcAlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1590
    :cond_0
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;

    .line 1591
    if-eqz v0, :cond_1

    .line 1592
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;->setText(Ljava/lang/CharSequence;)V

    .line 1594
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_2

    .line 1595
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v0, p1

    .line 1596
    if-eqz v0, :cond_2

    .line 1597
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1600
    :cond_2
    return-object p2
.end method
