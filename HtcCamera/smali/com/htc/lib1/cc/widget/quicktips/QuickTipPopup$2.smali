.class Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$2;
.super Ljava/lang/Object;
.source "QuickTipPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->dismiss()V

    .line 108
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mOnUserDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "QuickTipPopup"

    const-string v1, "call onUserDismissListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/quicktips/QuickTipPopup;->mOnUserDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 112
    :cond_0
    return-void
.end method
