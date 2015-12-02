.class Lcom/htc/camera/zoe/ZoeUI$18;
.super Ljava/lang/Object;
.source "ZoeUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$18;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$18;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->onVideoPauseButtonPressed()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$4200(Lcom/htc/camera/zoe/ZoeUI;)V

    .line 1176
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
