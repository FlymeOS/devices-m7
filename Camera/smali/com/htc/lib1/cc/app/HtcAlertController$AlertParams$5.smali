.class Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$5;
.super Ljava/lang/Object;
.source "HtcAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;Lcom/htc/lib1/cc/app/HtcAlertController;)V
    .locals 0

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$5;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p2, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$5;->val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$5;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$5;->val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;

    # getter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$600(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1689
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$5;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$5;->val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;

    # getter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$600(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1692
    :cond_0
    return-void
.end method
