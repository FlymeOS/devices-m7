.class Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$5;
.super Ljava/lang/Object;
.source "PopupIconMenuMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/menu/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$5;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$5;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->onPreviewMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V

    .line 150
    if-ne p2, p3, :cond_0

    .line 151
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$5;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->closePopupMenu()V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$5;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->restartPopupMenuTimer()V

    .line 155
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$5;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->onMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V

    goto :goto_0
.end method
