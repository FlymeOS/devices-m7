.class Lcom/htc/camera/bi/PhotoModeSnapStatisticController$10;
.super Ljava/lang/Object;
.source "PhotoModeSnapStatisticController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$10;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    # setter for: Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mFaceCaptured:Z
    invoke-static {v0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->access$202(Z)Z

    .line 252
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$10;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$10;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    invoke-virtual {v1}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mComposeKey:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$10;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$10;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v2, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$10;->this$0:Lcom/htc/camera/bi/PhotoModeSnapStatisticController;

    iget-object v2, v2, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->m_mediaTaken:I

    .line 254
    return-void
.end method
