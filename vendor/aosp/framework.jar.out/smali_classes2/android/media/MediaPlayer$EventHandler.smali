.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2784
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 2785
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2786
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2787
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2791
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mNativeContext:J
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_1

    .line 2792
    const-string v13, "MediaPlayer"

    const-string v14, "mediaplayer went away with unhandled events"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2795
    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 3012
    const-string v13, "MediaPlayer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown message type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2797
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)V

    .line 2800
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v10

    .line 2801
    .local v10, "metadata":Landroid/media/Metadata;
    if-eqz v10, :cond_2

    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 2802
    const-string v13, "MediaPlayer"

    const-string v14, "The content can\'t be seek."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 2804
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v15, 0x321

    const/16 v16, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2811
    .end local v10    # "metadata":Landroid/media/Metadata;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 2812
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v13, v14}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 2807
    :catch_0
    move-exception v5

    .line 2808
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "MediaPlayer"

    const-string v14, "getMetadata() error."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2816
    .end local v5    # "e":Ljava/lang/Exception;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 2817
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v13, v14}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 2820
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v3

    .line 2821
    .local v3, "cxt":Landroid/content/Context;
    if-eqz v3, :cond_4

    .line 2822
    const-string v13, "MediaPlayer"

    const-string v14, "Send PlaybackCompleteEvent for LPCM"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.htc.mediaplayer.playback"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2824
    .local v7, "intent":Landroid/content/Intent;
    const-string v13, "mediaplayer_event"

    const-string v14, "event_playbackcomplete"

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2825
    invoke-virtual {v3, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2829
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v14, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v13, v14}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;Z)V

    goto/16 :goto_0

    .line 2833
    .end local v3    # "cxt":Landroid/content/Context;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 2834
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 2835
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V

    .line 2837
    :cond_5
    monitor-exit v14

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 2842
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 2843
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 2844
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v15

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v13, v0, :cond_7

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v15, v13}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V

    .line 2846
    :cond_6
    monitor-exit v14

    goto/16 :goto_0

    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v13

    .line 2844
    :cond_7
    const/4 v13, 0x0

    goto :goto_2

    .line 2850
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 2851
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v13, v14, v15}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto/16 :goto_0

    .line 2855
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 2856
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v13, v14}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 2861
    :cond_8
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProviderLock:Ljava/lang/Object;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 2862
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 2863
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v13, v15}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 2865
    :cond_9
    monitor-exit v14

    goto/16 :goto_0

    :catchall_2
    move-exception v13

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v13

    .line 2869
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 2870
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    invoke-interface/range {v13 .. v16}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    goto/16 :goto_0

    .line 2874
    :sswitch_9
    const-string v13, "MediaPlayer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    const/4 v6, 0x0

    .line 2876
    .local v6, "error_was_handled":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 2877
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    invoke-interface/range {v13 .. v16}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v6

    .line 2879
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v13

    if-eqz v13, :cond_b

    if-nez v6, :cond_b

    .line 2880
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v13, v14}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 2882
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v14, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v13, v14}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;Z)V

    goto/16 :goto_0

    .line 2886
    .end local v6    # "error_was_handled":Z
    :sswitch_a
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    sparse-switch v13, :sswitch_data_1

    .line 2903
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 2904
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    invoke-interface/range {v13 .. v16}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 2908
    :cond_d
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    const/16 v14, 0x386

    if-ne v13, v14, :cond_0

    .line 2909
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/media/MediaPlayer;->isAudioOnly:Z

    goto/16 :goto_0

    .line 2888
    :sswitch_b
    const-string v13, "MediaPlayer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Info ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2891
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)V

    .line 2895
    :sswitch_d
    const/16 v13, 0x322

    move-object/from16 v0, p1

    iput v13, v0, Landroid/os/Message;->arg1:I

    .line 2897
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 2898
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto/16 :goto_3

    .line 2913
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v13

    if-nez v13, :cond_e

    .line 2914
    # invokes: Landroid/media/MediaPlayer;->releaseParcel(Landroid/os/Message;)V
    invoke-static/range {p1 .. p1}, Landroid/media/MediaPlayer;->access$1900(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2917
    :cond_e
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v13, :cond_f

    .line 2918
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 2920
    :cond_f
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v13, v13, Landroid/os/Parcel;

    if-eqz v13, :cond_0

    .line 2921
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Parcel;

    .line 2922
    .local v11, "parcel":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mCharset:Ljava/lang/String;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_10

    .line 2923
    new-instance v12, Landroid/media/TimedText;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mCharset:Ljava/lang/String;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$2000(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 2924
    .local v12, "text":Landroid/media/TimedText;
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 2925
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v13, v14, v12}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 2927
    .end local v12    # "text":Landroid/media/TimedText;
    :cond_10
    new-instance v12, Landroid/media/TimedText;

    invoke-direct {v12, v11}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 2928
    .restart local v12    # "text":Landroid/media/TimedText;
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 2929
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v13, v14, v12}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_0

    .line 2936
    .end local v11    # "parcel":Landroid/os/Parcel;
    .end local v12    # "text":Landroid/media/TimedText;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 2939
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v13, v13, Landroid/os/Parcel;

    if-eqz v13, :cond_0

    .line 2940
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Parcel;

    .line 2941
    .restart local v11    # "parcel":Landroid/os/Parcel;
    new-instance v4, Landroid/media/SubtitleData;

    invoke-direct {v4, v11}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 2942
    .local v4, "data":Landroid/media/SubtitleData;
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 2943
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v13, v14, v4}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    goto/16 :goto_0

    .line 2952
    .end local v4    # "data":Landroid/media/SubtitleData;
    .end local v11    # "parcel":Landroid/os/Parcel;
    :sswitch_10
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_13

    const/4 v8, 0x1

    .line 2953
    .local v8, "isOffloadNow":Z
    :goto_4
    const-string v13, "MediaPlayer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Is using offload now: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mIsPartialWake:Z
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Z

    move-result v13

    if-eqz v13, :cond_11

    if-eqz v8, :cond_11

    .line 2955
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v14, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v13, v14}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;Z)V

    .line 2957
    :cond_11
    if-nez v8, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mAudioOffload:Z
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 2958
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v14, 0x1

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v13, v14}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;Z)V

    .line 2960
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mAudioOffload:Z
    invoke-static {v13, v8}, Landroid/media/MediaPlayer;->access$2302(Landroid/media/MediaPlayer;Z)Z

    goto/16 :goto_0

    .line 2952
    .end local v8    # "isOffloadNow":Z
    :cond_13
    const/4 v8, 0x0

    goto :goto_4

    .line 2966
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v13

    if-nez v13, :cond_14

    .line 2968
    const-string v13, "MediaPlayer"

    const-string v14, "MEDIA_CLOSED_CAPTION failed, no mOnClosedCaptionListener "

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2972
    :cond_14
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v13, :cond_15

    .line 2974
    const-string v13, "MediaPlayer"

    const-string v14, "MEDIA_CLOSED_CAPTION , onClosedCaption return null"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onClosedCaption(Landroid/media/MediaPlayer;Landroid/media/ClosedCaption;)V

    goto/16 :goto_0

    .line 2979
    :cond_15
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v13, v13, Landroid/os/Parcel;

    if-eqz v13, :cond_0

    .line 2980
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Parcel;

    .line 2981
    .restart local v11    # "parcel":Landroid/os/Parcel;
    new-instance v2, Landroid/media/ClosedCaption;

    invoke-direct {v2, v11}, Landroid/media/ClosedCaption;-><init>(Landroid/os/Parcel;)V

    .line 2982
    .local v2, "cc":Landroid/media/ClosedCaption;
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 2984
    invoke-virtual {v2}, Landroid/media/ClosedCaption;->getLanguageList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_16

    .line 2986
    invoke-virtual {v2}, Landroid/media/ClosedCaption;->getLanguageList()Ljava/util/List;

    move-result-object v9

    .line 2987
    .local v9, "list":Ljava/util/List;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v13, v14, v9}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onLanguageList(Landroid/media/MediaPlayer;Ljava/util/List;)V

    .line 2990
    .end local v9    # "list":Ljava/util/List;
    :cond_16
    invoke-virtual {v2}, Landroid/media/ClosedCaption;->getRegionList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 2992
    invoke-virtual {v2}, Landroid/media/ClosedCaption;->getRegionList()Ljava/util/List;

    move-result-object v9

    .line 2993
    .restart local v9    # "list":Ljava/util/List;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v13, v14, v9}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onRegionList(Landroid/media/MediaPlayer;Ljava/util/List;)V

    .line 2996
    .end local v9    # "list":Ljava/util/List;
    :cond_17
    invoke-virtual {v2}, Landroid/media/ClosedCaption;->getLanguageList()Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_18

    invoke-virtual {v2}, Landroid/media/ClosedCaption;->getRegionList()Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_18

    .line 2998
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v13, v14, v2}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onClosedCaption(Landroid/media/MediaPlayer;Landroid/media/ClosedCaption;)V

    .line 3001
    :cond_18
    invoke-virtual {v2}, Landroid/media/ClosedCaption;->getLogoList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 3003
    const-string v13, "MediaPlayer"

    const-string v14, "MEDIA_CLOSED_CAPTION , onLogo"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnClosedCaptionListener:Landroid/media/MediaPlayer$OnClosedCaptionListener;
    invoke-static {v13}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnClosedCaptionListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v13, v14, v2}, Landroid/media/MediaPlayer$OnClosedCaptionListener;->onLogo(Landroid/media/MediaPlayer;Landroid/media/ClosedCaption;)V

    goto/16 :goto_0

    .line 2795
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_7
        0x63 -> :sswitch_e
        0x64 -> :sswitch_9
        0x69 -> :sswitch_11
        0xc8 -> :sswitch_a
        0xc9 -> :sswitch_f
        0x1f4 -> :sswitch_10
    .end sparse-switch

    .line 2886
    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_b
        0x322 -> :sswitch_c
        0x323 -> :sswitch_d
    .end sparse-switch
.end method
