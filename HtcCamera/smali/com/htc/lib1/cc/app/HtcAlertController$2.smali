.class Lcom/htc/lib1/cc/app/HtcAlertController$2;
.super Ljava/lang/Object;
.source "HtcAlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/app/HtcAlertController;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/app/HtcAlertController;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$2;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 804
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 805
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$2;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController;

    # getter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$800(Lcom/htc/lib1/cc/app/HtcAlertController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 807
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 808
    iget-object v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController$2;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController;

    # getter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;
    invoke-static {v2}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$900(Lcom/htc/lib1/cc/app/HtcAlertController;)Lcom/htc/lib1/cc/widget/HtcCheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->getHitRect(Landroid/graphics/Rect;)V

    .line 809
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 811
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$2;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController;

    # getter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;
    invoke-static {v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$900(Lcom/htc/lib1/cc/app/HtcAlertController;)Lcom/htc/lib1/cc/widget/HtcCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcCheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController$2;->this$0:Lcom/htc/lib1/cc/app/HtcAlertController;

    # getter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckBoxCheckBox:Lcom/htc/lib1/cc/widget/HtcCheckBox;
    invoke-static {v3}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$900(Lcom/htc/lib1/cc/app/HtcAlertController;)Lcom/htc/lib1/cc/widget/HtcCheckBox;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 813
    return-void
.end method
