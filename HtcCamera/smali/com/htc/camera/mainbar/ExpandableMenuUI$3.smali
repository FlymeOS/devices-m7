.class Lcom/htc/camera/mainbar/ExpandableMenuUI$3;
.super Ljava/lang/Object;
.source "ExpandableMenuUI.java"

# interfaces
.implements Lcom/htc/camera/widget/d;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$3;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/htc/camera/widget/ExpandableMenuItem;Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$3;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$800(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$3;->this$0:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    # getter for: Lcom/htc/camera/mainbar/ExpandableMenuUI;->m_SwitchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;
    invoke-static {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->access$800(Lcom/htc/camera/mainbar/ExpandableMenuUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->notifyTouchEvent(Landroid/view/MotionEvent;)V

    .line 613
    :cond_0
    return-void
.end method
