.class Lcom/htc/camera/component/SwitchCameraSlidingUI$2;
.super Ljava/lang/Object;
.source "SwitchCameraSlidingUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$2;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$2;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-virtual {v0, p2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
