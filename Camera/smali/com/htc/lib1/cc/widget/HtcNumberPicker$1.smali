.class Lcom/htc/lib1/cc/widget/HtcNumberPicker$1;
.super Ljava/lang/Object;
.source "HtcNumberPicker.java"

# interfaces
.implements Lcom/htc/lib1/cc/view/table/i;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$1;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCenterViewSet(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 206
    if-nez p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 208
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;

    .line 209
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$1;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mTextColor:I
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$000(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setTextColor(I)V

    .line 207
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 211
    :cond_3
    check-cast p2, Lcom/htc/lib1/cc/widget/HtcDateTimeText;

    .line 212
    if-eqz p2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcNumberPicker$1;->this$0:Lcom/htc/lib1/cc/widget/HtcNumberPicker;

    # getter for: Lcom/htc/lib1/cc/widget/HtcNumberPicker;->mCenterViewTextColor:I
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcNumberPicker;->access$100(Lcom/htc/lib1/cc/widget/HtcNumberPicker;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setTextColor(I)V

    goto :goto_0
.end method
