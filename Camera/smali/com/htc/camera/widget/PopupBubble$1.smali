.class Lcom/htc/camera/widget/PopupBubble$1;
.super Ljava/lang/Object;
.source "PopupBubble.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/as;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/widget/PopupBubble;


# direct methods
.method constructor <init>(Lcom/htc/camera/widget/PopupBubble;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$000(Lcom/htc/camera/widget/PopupBubble;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    move-result-object v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$000(Lcom/htc/camera/widget/PopupBubble;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # setter for: Lcom/htc/camera/widget/PopupBubble;->m_Window:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v0, v1}, Lcom/htc/camera/widget/PopupBubble;->access$002(Lcom/htc/camera/widget/PopupBubble;Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    .line 191
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_IsReopeningWindow:Z
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$100(Lcom/htc/camera/widget/PopupBubble;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_OnClosedListener:Lcom/htc/camera/widget/h;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$200(Lcom/htc/camera/widget/PopupBubble;)Lcom/htc/camera/widget/h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_OnClosedListener:Lcom/htc/camera/widget/h;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$200(Lcom/htc/camera/widget/PopupBubble;)Lcom/htc/camera/widget/h;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    invoke-interface {v0, v1}, Lcom/htc/camera/widget/h;->onClosed(Lcom/htc/camera/widget/PopupBubble;)V

    .line 199
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$600(Lcom/htc/camera/widget/PopupBubble;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/camera/widget/PopupBubble;->access$600(Lcom/htc/camera/widget/PopupBubble;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->notifyPopupBubbleClosed()V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    iget-object v1, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_Anchor:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/camera/widget/PopupBubble;->access$300(Lcom/htc/camera/widget/PopupBubble;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_XOffset:I
    invoke-static {v2}, Lcom/htc/camera/widget/PopupBubble;->access$400(Lcom/htc/camera/widget/PopupBubble;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/camera/widget/PopupBubble$1;->this$0:Lcom/htc/camera/widget/PopupBubble;

    # getter for: Lcom/htc/camera/widget/PopupBubble;->m_YOffset:I
    invoke-static {v3}, Lcom/htc/camera/widget/PopupBubble;->access$500(Lcom/htc/camera/widget/PopupBubble;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/widget/PopupBubble;->open(Landroid/view/View;II)V

    goto :goto_1
.end method
