.class Lcom/htc/camera/menu/PopupIconMenu$1;
.super Ljava/lang/Object;
.source "PopupIconMenu.java"

# interfaces
.implements Lcom/htc/camera/menu/d;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/PopupIconMenu;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/PopupIconMenu;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/camera/menu/PopupIconMenu$1;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedItemChanged(Lcom/htc/camera/menu/IconMenuItem;)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu$1;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    # invokes: Lcom/htc/camera/menu/PopupIconMenu;->checkAccessibility()V
    invoke-static {v0}, Lcom/htc/camera/menu/PopupIconMenu;->access$000(Lcom/htc/camera/menu/PopupIconMenu;)V

    .line 46
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu$1;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    # getter for: Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingMenuHint:Lcom/htc/camera/y;
    invoke-static {v0}, Lcom/htc/camera/menu/PopupIconMenu;->access$100(Lcom/htc/camera/menu/PopupIconMenu;)Lcom/htc/camera/y;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/htc/camera/menu/IconMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/htc/camera/menu/PopupIconMenu$1;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    # getter for: Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingMenuHint:Lcom/htc/camera/y;
    invoke-static {v1}, Lcom/htc/camera/menu/PopupIconMenu;->access$100(Lcom/htc/camera/menu/PopupIconMenu;)Lcom/htc/camera/y;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/menu/PopupIconMenu$1;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    # getter for: Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingHintHandle:Lcom/htc/camera/Handle;
    invoke-static {v2}, Lcom/htc/camera/menu/PopupIconMenu;->access$200(Lcom/htc/camera/menu/PopupIconMenu;)Lcom/htc/camera/Handle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/y;->hideFloatingHint(Lcom/htc/camera/Handle;)V

    .line 50
    iget-object v1, p0, Lcom/htc/camera/menu/PopupIconMenu$1;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    iget-object v2, p0, Lcom/htc/camera/menu/PopupIconMenu$1;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    # getter for: Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingMenuHint:Lcom/htc/camera/y;
    invoke-static {v2}, Lcom/htc/camera/menu/PopupIconMenu;->access$100(Lcom/htc/camera/menu/PopupIconMenu;)Lcom/htc/camera/y;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/camera/y;->showFloatingHint(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v2

    # setter for: Lcom/htc/camera/menu/PopupIconMenu;->m_FloatingHintHandle:Lcom/htc/camera/Handle;
    invoke-static {v1, v2}, Lcom/htc/camera/menu/PopupIconMenu;->access$202(Lcom/htc/camera/menu/PopupIconMenu;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 51
    # getter for: Lcom/htc/camera/menu/PopupIconMenu;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/htc/camera/menu/PopupIconMenu;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onSelectedItemChanged() - title:"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method
