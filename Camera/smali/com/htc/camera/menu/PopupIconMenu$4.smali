.class Lcom/htc/camera/menu/PopupIconMenu$4;
.super Ljava/lang/Object;
.source "PopupIconMenu.java"

# interfaces
.implements Ldev/htc/camerapopupcontainerlibrary/widget/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/PopupIconMenu;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/PopupIconMenu;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/camera/menu/PopupIconMenu$4;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/camera/menu/PopupIconMenu$4;->this$0:Lcom/htc/camera/menu/PopupIconMenu;

    # getter for: Lcom/htc/camera/menu/PopupIconMenu;->m_Context:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/menu/PopupIconMenu;->access$700(Lcom/htc/camera/menu/PopupIconMenu;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->notifyPopupBubbleOpened()V

    .line 240
    return-void
.end method
