.class Lcom/htc/camera/component/CaptureBar$4;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CaptureBar;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/htc/camera/component/CaptureBar$4;->this$0:Lcom/htc/camera/component/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 804
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$4;->this$0:Lcom/htc/camera/component/CaptureBar;

    # getter for: Lcom/htc/camera/component/CaptureBar;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureBar;->access$1500(Lcom/htc/camera/component/CaptureBar;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onKey() - Keycode: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", action: "

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 805
    const/4 v0, 0x0

    .line 806
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 816
    :goto_0
    return v0

    .line 809
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$4;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onKeyDown(Landroid/view/KeyEvent;)Z
    invoke-static {v0, p3}, Lcom/htc/camera/component/CaptureBar;->access$1600(Lcom/htc/camera/component/CaptureBar;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 812
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureBar$4;->this$0:Lcom/htc/camera/component/CaptureBar;

    # invokes: Lcom/htc/camera/component/CaptureBar;->onKeyUp(Landroid/view/KeyEvent;)Z
    invoke-static {v0, p3}, Lcom/htc/camera/component/CaptureBar;->access$1700(Lcom/htc/camera/component/CaptureBar;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 806
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
