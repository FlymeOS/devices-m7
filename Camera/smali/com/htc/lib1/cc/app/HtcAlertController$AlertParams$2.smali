.class Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "HtcAlertController.java"


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lcom/htc/lib1/cc/app/HtcAlertController;)V
    .locals 2

    .prologue
    .line 1604
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput-object p5, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    iput-object p6, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1609
    invoke-virtual {p0}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1610
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->mLabelIndex:I

    .line 1611
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1612
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1616
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;

    .line 1617
    if-eqz v0, :cond_0

    .line 1618
    iget v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;->setText(Ljava/lang/CharSequence;)V

    .line 1620
    :cond_0
    iget-object v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->mIsCheckedIndex:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1622
    return-void

    .line 1620
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;->val$dialog:Lcom/htc/lib1/cc/app/HtcAlertController;

    # getter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mMultiChoiceItemLayout:I
    invoke-static {v1}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$1100(Lcom/htc/lib1/cc/app/HtcAlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
