.class public Lcom/htc/camera/input/KeyEventArgs;
.super Lcom/htc/camera/event/SingleHandlerEventArgs;
.source "KeyEventArgs.java"


# instance fields
.field public final keyCode:I

.field public final keyEvent:Landroid/view/KeyEvent;

.field public final repeatCount:I


# direct methods
.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/camera/event/SingleHandlerEventArgs;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/camera/input/KeyEventArgs;->keyEvent:Landroid/view/KeyEvent;

    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/input/KeyEventArgs;->keyCode:I

    .line 25
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/input/KeyEventArgs;->repeatCount:I

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/input/KeyEventArgs;->keyCode:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/input/KeyEventArgs;->repeatCount:I

    goto :goto_0
.end method
