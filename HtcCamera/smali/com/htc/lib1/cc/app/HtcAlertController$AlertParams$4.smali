.class Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$4;
.super Landroid/widget/CursorAdapter;
.source "HtcAlertController.java"


# instance fields
.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

.field final synthetic val$layout:I


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZI)V
    .locals 2

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput p5, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$4;->val$layout:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1654
    invoke-virtual {p0}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$4;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1655
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$4;->mLabelIndex:I

    .line 1656
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 1660
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;

    .line 1661
    if-eqz v0, :cond_0

    .line 1662
    iget v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$4;->mLabelIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;->setText(Ljava/lang/CharSequence;)V

    .line 1664
    :cond_0
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$4;->val$layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1669
    return-object v0
.end method
