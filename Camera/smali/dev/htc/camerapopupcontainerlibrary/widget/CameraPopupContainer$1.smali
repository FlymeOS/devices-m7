.class Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$1;
.super Ljava/lang/Object;
.source "CameraPopupContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;


# direct methods
.method constructor <init>(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$1;->this$0:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$1;->this$0:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mIsOpen:Z
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->access$000(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$1;->this$0:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mOnOutsideTouchListener:Ldev/htc/camerapopupcontainerlibrary/widget/c;
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->access$100(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;)Ldev/htc/camerapopupcontainerlibrary/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$1;->this$0:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    # getter for: Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->mOnOutsideTouchListener:Ldev/htc/camerapopupcontainerlibrary/widget/c;
    invoke-static {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->access$100(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;)Ldev/htc/camerapopupcontainerlibrary/widget/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldev/htc/camerapopupcontainerlibrary/widget/c;->onOutsideTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 155
    :cond_0
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$1;->this$0:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    invoke-virtual {v0}, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;->dismiss()V

    .line 158
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
