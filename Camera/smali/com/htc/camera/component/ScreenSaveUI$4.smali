.class Lcom/htc/camera/component/ScreenSaveUI$4;
.super Ljava/lang/Object;
.source "ScreenSaveUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ScreenSaveUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ScreenSaveUI;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/camera/component/ScreenSaveUI$4;->this$0:Lcom/htc/camera/component/ScreenSaveUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 2
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
    .line 107
    iget-object v0, p0, Lcom/htc/camera/component/ScreenSaveUI$4;->this$0:Lcom/htc/camera/component/ScreenSaveUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ScreenSaveUI;->removeMessages(I)V

    .line 108
    return-void
.end method
