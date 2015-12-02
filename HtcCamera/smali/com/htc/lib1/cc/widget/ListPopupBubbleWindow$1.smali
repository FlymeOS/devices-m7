.class Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)V
    .locals 0

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 1687
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->show()V

    .line 1690
    :cond_0
    return-void
.end method
