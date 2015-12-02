.class Lcom/htc/camera/component/ThumbnailUI$4;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$4;->this$0:Lcom/htc/camera/component/ThumbnailUI;

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
    .line 379
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$4;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/ThumbnailUI;->m_IsEnableAfterLaunch:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ThumbnailUI;->access$1002(Lcom/htc/camera/component/ThumbnailUI;Z)Z

    .line 380
    return-void
.end method
