.class Lcom/htc/camera/menu/PopupIconMenu$5;
.super Ljava/lang/Object;
.source "PopupIconMenu.java"

# interfaces
.implements Ldev/htc/camerapopupcontainerlibrary/widget/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/PopupIconMenu;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/PopupIconMenu;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/htc/camera/menu/PopupIconMenu$5;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutsideTouch(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu$5;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    # getter for: Lcom/htc/camera/menu/PopupIconMenu;->m_Context:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/menu/PopupIconMenu;->access$700(Lcom/htc/camera/menu/PopupIconMenu;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->popupOutsideTouchEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/input/MotionEventArgs;

    invoke-direct {v1, p2}, Lcom/htc/camera/input/MotionEventArgs;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 248
    return-void
.end method
