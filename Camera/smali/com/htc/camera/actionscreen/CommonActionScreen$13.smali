.class Lcom/htc/camera/actionscreen/CommonActionScreen$13;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Lcom/htc/camera/widget/h;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$13;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/htc/camera/widget/PopupBubble;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 742
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$13;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # setter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$502(Lcom/htc/camera/actionscreen/CommonActionScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 743
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$13;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # setter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$602(Lcom/htc/camera/actionscreen/CommonActionScreen;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$13;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$800(Lcom/htc/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$13;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->access$800(Lcom/htc/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setColorOn(Z)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/actionscreen/CommonActionScreen$13;->this$0:Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    .line 747
    return-void
.end method
