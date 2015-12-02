.class Lcom/htc/camera/component/ThumbnailUI$9;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$9;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 1
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
    .line 645
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$9;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # invokes: Lcom/htc/camera/component/ThumbnailUI;->createThumbnailImage()V
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$1300(Lcom/htc/camera/component/ThumbnailUI;)V

    .line 646
    return-void
.end method
