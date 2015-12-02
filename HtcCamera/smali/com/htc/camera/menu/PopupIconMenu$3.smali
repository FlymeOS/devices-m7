.class Lcom/htc/camera/menu/PopupIconMenu$3;
.super Ljava/lang/Object;
.source "PopupIconMenu.java"

# interfaces
.implements Ldev/htc/camerapopupcontainerlibrary/widget/a;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/PopupIconMenu;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/PopupIconMenu;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/htc/camera/menu/PopupIconMenu$3;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu$3;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    # invokes: Lcom/htc/camera/menu/PopupIconMenu;->notifyPopupIconMenuClosed()V
    invoke-static {v0}, Lcom/htc/camera/menu/PopupIconMenu;->access$600(Lcom/htc/camera/menu/PopupIconMenu;)V

    .line 225
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu$3;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    # getter for: Lcom/htc/camera/menu/PopupIconMenu;->m_Context:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/menu/PopupIconMenu;->access$700(Lcom/htc/camera/menu/PopupIconMenu;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->notifyPopupBubbleClosed()V

    .line 228
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu$3;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    # invokes: Lcom/htc/camera/menu/PopupIconMenu;->dispose()V
    invoke-static {v0}, Lcom/htc/camera/menu/PopupIconMenu;->access$800(Lcom/htc/camera/menu/PopupIconMenu;)V

    .line 229
    return-void
.end method
