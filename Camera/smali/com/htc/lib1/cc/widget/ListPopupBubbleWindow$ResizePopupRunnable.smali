.class Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)V
    .locals 0

    .prologue
    .line 2178
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;)V
    .locals 0

    .prologue
    .line 2178
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;-><init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$600(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$600(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$600(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$600(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    iget v1, v1, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 2187
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->show()V

    .line 2189
    :cond_0
    return-void
.end method
