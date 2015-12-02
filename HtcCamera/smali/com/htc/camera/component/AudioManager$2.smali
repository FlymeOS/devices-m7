.class Lcom/htc/camera/component/AudioManager$2;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AudioManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AudioManager;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/camera/component/AudioManager$2;->this$0:Lcom/htc/camera/component/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 167
    const-string v0, "AudioManager(Camera)"

    const-string v1, "onLoadComplete(soundId="

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", status="

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    if-nez p3, :cond_2

    move v1, v7

    .line 171
    :goto_0
    const/4 v2, 0x0

    .line 172
    iget-object v3, p0, Lcom/htc/camera/component/AudioManager$2;->this$0:Lcom/htc/camera/component/AudioManager;

    monitor-enter v3

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager$2;->this$0:Lcom/htc/camera/component/AudioManager;

    # getter for: Lcom/htc/camera/component/AudioManager;->m_SoundHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/AudioManager;->access$100(Lcom/htc/camera/component/AudioManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/AudioManager$SoundHandle;

    .line 176
    iget v5, v0, Lcom/htc/camera/component/AudioManager$SoundHandle;->soundId:I

    if-ne v5, p2, :cond_0

    .line 178
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/htc/camera/component/AudioManager$SoundHandle;->isLoaded:Z

    move-object v9, v0

    .line 183
    :goto_1
    monitor-exit v3

    .line 184
    if-nez v9, :cond_3

    .line 200
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v8

    .line 170
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 188
    :cond_3
    if-eqz v1, :cond_1

    .line 190
    iget-object v0, v9, Lcom/htc/camera/component/AudioManager$SoundHandle;->pendingStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/htc/camera/component/AudioManager$StreamHandle;

    .line 192
    const-string v0, "AudioManager(Camera)"

    const-string v1, "onLoadComplete() - Play pending sound : "

    iget-object v2, v6, Lcom/htc/camera/component/AudioManager$StreamHandle;->name:Ljava/lang/String;

    const-string v3, " ["

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager$2;->this$0:Lcom/htc/camera/component/AudioManager;

    # getter for: Lcom/htc/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/camera/component/AudioManager;->access$200(Lcom/htc/camera/component/AudioManager;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v6, Lcom/htc/camera/component/AudioManager$StreamHandle;->loopCount:I

    if-eqz v0, :cond_5

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager$2;->this$0:Lcom/htc/camera/component/AudioManager;

    # invokes: Lcom/htc/camera/component/AudioManager;->playInMemorySound(Lcom/htc/camera/component/AudioManager$StreamHandle;)V
    invoke-static {v0, v6}, Lcom/htc/camera/component/AudioManager;->access$300(Lcom/htc/camera/component/AudioManager;Lcom/htc/camera/component/AudioManager$StreamHandle;)V

    goto :goto_3

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/AudioManager$2;->this$0:Lcom/htc/camera/component/AudioManager;

    const/16 v1, 0x271b

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v6, v2, v8

    invoke-virtual {v0, v1, v8, v8, v2}, Lcom/htc/camera/component/AudioManager;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_3

    .line 198
    :cond_6
    iget-object v0, v9, Lcom/htc/camera/component/AudioManager$SoundHandle;->pendingStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_7
    move-object v9, v2

    goto :goto_1
.end method
