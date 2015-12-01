.class Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$3;
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

.field final synthetic val$layout:I


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 1636
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iput p6, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$3;->val$layout:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1639
    if-nez p2, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$3;->val$layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1642
    :cond_0
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;

    .line 1643
    if-eqz v0, :cond_1

    .line 1644
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$3;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSingleText;->setText(Ljava/lang/CharSequence;)V

    .line 1646
    :cond_1
    return-object p2
.end method
