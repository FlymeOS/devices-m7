.class Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$6;
.super Ljava/lang/Object;
.source "PopupIconMenuMainBarItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$6;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$6;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->restartPopupMenuTimer()V

    .line 167
    const/4 v0, 0x0

    return v0
.end method
