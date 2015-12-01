.class Lcom/htc/camera/component/CameraModeScreen$4;
.super Ljava/lang/Object;
.source "CameraModeScreen.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/CameraModeScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraModeScreen;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/camera/component/CameraModeScreen$4;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$4;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    # getter for: Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/component/CameraModeScreen;->access$300(Lcom/htc/camera/component/CameraModeScreen;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/htc/camera/component/CameraModeScreen$4;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    iget-object v0, p0, Lcom/htc/camera/component/CameraModeScreen$4;->this$0:Lcom/htc/camera/component/CameraModeScreen;

    # getter for: Lcom/htc/camera/component/CameraModeScreen;->m_ModeImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/component/CameraModeScreen;->access$300(Lcom/htc/camera/component/CameraModeScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Lcom/htc/camera/component/CameraModeScreen;->showUI(Landroid/view/View;ZZ)V

    .line 142
    :cond_0
    return-void
.end method
