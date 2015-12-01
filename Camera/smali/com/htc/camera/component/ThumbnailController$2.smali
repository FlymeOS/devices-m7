.class Lcom/htc/camera/component/ThumbnailController$2;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailController;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailController$2;->this$0:Lcom/htc/camera/component/ThumbnailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 737
    sget-object v0, Lcom/htc/camera/MediaProvider;->mediaInsertedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController$2;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_MediaInsertedEventHandler:Lcom/htc/camera/event/a;
    invoke-static {v1}, Lcom/htc/camera/component/ThumbnailController;->access$000(Lcom/htc/camera/component/ThumbnailController;)Lcom/htc/camera/event/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 738
    return-void
.end method
