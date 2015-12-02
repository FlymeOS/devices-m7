.class Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$6;
.super Ljava/lang/Object;
.source "HtcAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;Landroid/widget/ListView;Lcom/htc/lib1/cc/app/HtcAlertController;)V
    .locals 0

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$6;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p2, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$6;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$6;->val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$6;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$6;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$6;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$6;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$6;->val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;

    # getter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$600(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$6;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1702
    return-void
.end method
