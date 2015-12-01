.class Lcom/htc/camera/menu/IconMenuItem$1;
.super Ljava/lang/Object;
.source "IconMenuItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/IconMenuItem;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/IconMenuItem;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/camera/menu/IconMenuItem$1;->this$0:Lcom/htc/camera/menu/IconMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem$1;->this$0:Lcom/htc/camera/menu/IconMenuItem;

    # getter for: Lcom/htc/camera/menu/IconMenuItem;->m_ParentIconMenu:Lcom/htc/camera/menu/IconMenu;
    invoke-static {v0}, Lcom/htc/camera/menu/IconMenuItem;->access$000(Lcom/htc/camera/menu/IconMenuItem;)Lcom/htc/camera/menu/IconMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenuItem$1;->this$0:Lcom/htc/camera/menu/IconMenuItem;

    # getter for: Lcom/htc/camera/menu/IconMenuItem;->m_ParentIconMenu:Lcom/htc/camera/menu/IconMenu;
    invoke-static {v0}, Lcom/htc/camera/menu/IconMenuItem;->access$000(Lcom/htc/camera/menu/IconMenuItem;)Lcom/htc/camera/menu/IconMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/menu/IconMenuItem$1;->this$0:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/IconMenu;->onIconMenuClick(Lcom/htc/camera/menu/IconMenuItem;)V

    .line 205
    :cond_0
    return-void
.end method
