.class Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$2;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)V
    .locals 0

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1723
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$600(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    move-result-object v0

    .line 1726
    if-eqz v0, :cond_0

    .line 1727
    const/4 v1, 0x0

    # setter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;Z)Z

    .line 1730
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1733
    return-void
.end method
