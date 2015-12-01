.class Lcom/htc/camera/component/ThumbnailUI$8;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;

.field final synthetic val$actionScreen:Lcom/htc/camera/actionscreen/ActionScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailUI;Lcom/htc/camera/actionscreen/ActionScreen;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$8;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    iput-object p2, p0, Lcom/htc/camera/component/ThumbnailUI$8;->val$actionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$8;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # invokes: Lcom/htc/camera/component/ThumbnailUI;->startAlbum()Z
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$1200(Lcom/htc/camera/component/ThumbnailUI;)Z

    .line 525
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$8;->val$actionScreen:Lcom/htc/camera/actionscreen/ActionScreen;

    check-cast v0, Lcom/htc/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0}, Lcom/htc/camera/actionscreen/CommonActionScreen;->clearAction()V

    .line 526
    return-void
.end method
