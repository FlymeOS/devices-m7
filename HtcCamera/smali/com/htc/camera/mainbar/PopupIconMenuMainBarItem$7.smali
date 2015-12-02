.class Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$7;
.super Ljava/lang/Object;
.source "PopupIconMenuMainBarItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$7;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$7;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->closePopupMenu()V

    .line 210
    return-void
.end method
