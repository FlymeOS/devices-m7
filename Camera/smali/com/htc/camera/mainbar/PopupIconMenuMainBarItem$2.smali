.class Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$2;
.super Ljava/lang/Object;
.source "PopupIconMenuMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$2;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->closePopupMenu()V

    .line 79
    return-void
.end method
