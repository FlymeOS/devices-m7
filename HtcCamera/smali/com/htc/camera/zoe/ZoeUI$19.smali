.class Lcom/htc/camera/zoe/ZoeUI$19;
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
    .line 1180
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$19;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1184
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$19;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    # invokes: Lcom/htc/camera/zoe/ZoeUI;->onVideoSnapshotButtonPressed()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeUI;->access$4300(Lcom/htc/camera/zoe/ZoeUI;)V

    .line 1190
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
