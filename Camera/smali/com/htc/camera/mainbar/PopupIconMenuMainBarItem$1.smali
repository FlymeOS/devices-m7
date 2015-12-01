.class Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$1;
.super Ljava/lang/Object;
.source "PopupIconMenuMainBarItem.java"

# interfaces
.implements Lcom/htc/camera/menu/g;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopupIconMenuClosed(Lcom/htc/camera/menu/PopupIconMenu;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    iget-object v1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    # getter for: Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;
    invoke-static {v1}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->access$100(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)Lcom/htc/camera/menu/PopupIconMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/menu/PopupIconMenu;->getCurrentScrollPosition()I

    move-result v1

    # setter for: Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_LastScrollPosition:I
    invoke-static {v0, v1}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->access$002(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;I)I

    .line 69
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$1;->this$0:Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;
    invoke-static {v0, v1}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->access$102(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;Lcom/htc/camera/menu/PopupIconMenu;)Lcom/htc/camera/menu/PopupIconMenu;

    .line 70
    return-void
.end method
