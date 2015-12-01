.class Lcom/htc/camera/menu/PopupIconMenu$2;
.super Ljava/lang/Object;
.source "PopupIconMenu.java"

# interfaces
.implements Lcom/htc/camera/menu/c;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/PopupIconMenu;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/PopupIconMenu;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/camera/menu/PopupIconMenu$2;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Lcom/htc/camera/menu/IconMenu;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu$2;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    # getter for: Lcom/htc/camera/menu/PopupIconMenu;->m_IsDispose:Z
    invoke-static {v0}, Lcom/htc/camera/menu/PopupIconMenu;->access$400(Lcom/htc/camera/menu/PopupIconMenu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu$2;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    # invokes: Lcom/htc/camera/menu/PopupIconMenu;->showTextHint()V
    invoke-static {v0}, Lcom/htc/camera/menu/PopupIconMenu;->access$500(Lcom/htc/camera/menu/PopupIconMenu;)V

    .line 63
    :cond_0
    return-void
.end method
