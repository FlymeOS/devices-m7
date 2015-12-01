.class Lcom/htc/camera/actionscreen/ActionScreen$1$1;
.super Ljava/lang/Object;
.source "ActionScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/actionscreen/ActionScreen$1;

.field final synthetic val$e:Lcom/htc/camera/media/MediaEventArgs;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/ActionScreen$1;Lcom/htc/camera/media/MediaEventArgs;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$1;

    iput-object p2, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->val$e:Lcom/htc/camera/media/MediaEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$1;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen$1;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/ActionScreen;->m_IsPrepared:Z
    invoke-static {v0}, Lcom/htc/camera/actionscreen/ActionScreen;->access$000(Lcom/htc/camera/actionscreen/ActionScreen;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->val$e:Lcom/htc/camera/media/MediaEventArgs;

    iget-object v0, v0, Lcom/htc/camera/media/MediaEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->val$e:Lcom/htc/camera/media/MediaEventArgs;

    iget-object v0, v0, Lcom/htc/camera/media/MediaEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v1, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$1;

    iget-object v1, v1, Lcom/htc/camera/actionscreen/ActionScreen$1;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/ActionScreen;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v1}, Lcom/htc/camera/actionscreen/ActionScreen;->access$100(Lcom/htc/camera/actionscreen/ActionScreen;)Lcom/htc/camera/CaptureHandle;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$1;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen$1;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_3

    .line 195
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$1;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen$1;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    # getter for: Lcom/htc/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z
    invoke-static {v0}, Lcom/htc/camera/actionscreen/ActionScreen;->access$200(Lcom/htc/camera/actionscreen/ActionScreen;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$1;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen$1;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z
    invoke-static {v0, v1}, Lcom/htc/camera/actionscreen/ActionScreen;->access$202(Lcom/htc/camera/actionscreen/ActionScreen;Z)Z

    .line 198
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$1;

    iget-object v1, v0, Lcom/htc/camera/actionscreen/ActionScreen$1;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->val$e:Lcom/htc/camera/media/MediaEventArgs;

    check-cast v0, Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-virtual {v1, v0}, Lcom/htc/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/htc/camera/io/MediaSaveEventArgs;)V

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$1;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen$1;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/htc/camera/io/MediaSaveEventArgs;
    invoke-static {v0, v1}, Lcom/htc/camera/actionscreen/ActionScreen;->access$302(Lcom/htc/camera/actionscreen/ActionScreen;Lcom/htc/camera/io/MediaSaveEventArgs;)Lcom/htc/camera/io/MediaSaveEventArgs;

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->this$1:Lcom/htc/camera/actionscreen/ActionScreen$1;

    iget-object v1, v0, Lcom/htc/camera/actionscreen/ActionScreen$1;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$1$1;->val$e:Lcom/htc/camera/media/MediaEventArgs;

    check-cast v0, Lcom/htc/camera/io/MediaSaveEventArgs;

    # setter for: Lcom/htc/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/htc/camera/io/MediaSaveEventArgs;
    invoke-static {v1, v0}, Lcom/htc/camera/actionscreen/ActionScreen;->access$302(Lcom/htc/camera/actionscreen/ActionScreen;Lcom/htc/camera/io/MediaSaveEventArgs;)Lcom/htc/camera/io/MediaSaveEventArgs;

    goto :goto_0
.end method
