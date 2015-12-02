.class Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "SEGLSurfaceView.java"


# instance fields
.field private mEglHelper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasFocus:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mSafeMode:Z

.field private mShouldExit:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1029
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    .line 1030
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1403
    iput-boolean v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mSafeMode:Z

    .line 1031
    iput v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mWidth:I

    .line 1032
    iput v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHeight:I

    .line 1033
    iput-boolean v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1034
    iput v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderMode:I

    .line 1035
    iput-object p2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderer:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;

    .line 1036
    return-void
.end method

.method static synthetic access$1002(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;Z)Z
    .locals 0

    .prologue
    .line 1028
    iput-boolean p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1066
    new-instance v0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    invoke-direct {v0, v1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;-><init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)V

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEglHelper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;

    .line 1067
    iput-boolean v8, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1068
    iput-boolean v8, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v9, v8

    move-object v0, v10

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    move v6, v8

    move-object v11, v10

    .line 1080
    :goto_0
    :try_start_0
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1082
    :goto_1
    :try_start_1
    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v13, :cond_0

    .line 1083
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1231
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1232
    :try_start_2
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->stopEglLocked()V

    .line 1233
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEglHelper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->finish()V

    .line 1234
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1086
    :cond_0
    :try_start_3
    iget-object v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v14, v0

    move v0, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v14

    .line 1171
    :goto_2
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1173
    if-eqz v1, :cond_d

    .line 1174
    :try_start_4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v0

    move-object v0, v10

    .line 1176
    goto :goto_0

    .line 1092
    :cond_1
    :try_start_5
    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_2

    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mPaused:Z

    if-eqz v13, :cond_2

    .line 1093
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->stopEglLocked()V

    .line 1097
    :cond_2
    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v13, :cond_4

    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v13, :cond_4

    .line 1098
    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_3

    .line 1099
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->stopEglLocked()V

    .line 1101
    :cond_3
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1102
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1106
    :cond_4
    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v13, :cond_5

    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v13, :cond_5

    .line 1107
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1108
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1111
    :cond_5
    if-eqz v3, :cond_6

    .line 1114
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1115
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    move v3, v8

    move v4, v8

    .line 1119
    :cond_6
    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mPaused:Z

    if-nez v13, :cond_c

    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v13, :cond_c

    iget v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mWidth:I

    if-lez v13, :cond_c

    iget v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHeight:I

    if-lez v13, :cond_c

    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v13, :cond_7

    iget v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderMode:I

    if-ne v13, v7, :cond_c

    .line 1123
    :cond_7
    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v13, :cond_8

    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v13, :cond_8

    .line 1125
    iget-object v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEglHelper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;

    invoke-virtual {v13}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->verifyContext()Z

    move-result v13

    if-nez v13, :cond_8

    .line 1126
    iget-object v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEglHelper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;

    invoke-virtual {v13}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->finish()V

    .line 1127
    iget-object v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderer:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;

    invoke-interface {v13}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;->onSurfaceLost()V

    .line 1128
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1132
    :cond_8
    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v13, :cond_9

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13, p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->tryAcquireEglSurfaceLocked(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1133
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1134
    iget-object v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEglHelper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;

    invoke-virtual {v13}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->start()V

    .line 1135
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1138
    :cond_9
    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v13, :cond_a

    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v13, :cond_a

    .line 1139
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v5, v7

    move v6, v7

    .line 1144
    :cond_a
    iget-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_c

    .line 1145
    iget-object v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mSizeChanged:Z
    invoke-static {v13}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$900(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1147
    iget v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mWidth:I

    .line 1148
    iget v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHeight:I

    .line 1159
    iget-object v4, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    const/4 v5, 0x0

    # setter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mSizeChanged:Z
    invoke-static {v4, v5}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$902(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;Z)Z

    move v4, v7

    move v5, v7

    .line 1164
    :goto_3
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    move-object v14, v0

    move v0, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v14

    .line 1165
    goto/16 :goto_2

    .line 1162
    :cond_b
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_3

    .line 1171
    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1231
    :catchall_2
    move-exception v0

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1232
    :try_start_7
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->stopEglLocked()V

    .line 1233
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEglHelper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;

    invoke-virtual {v2}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->finish()V

    .line 1234
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 1169
    :cond_c
    :try_start_8
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 1179
    :cond_d
    :try_start_9
    iget-boolean v12, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHasFocus:Z

    if-eqz v12, :cond_13

    .line 1180
    if-eqz v0, :cond_12

    .line 1181
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEglHelper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;

    iget-object v9, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    invoke-virtual {v9}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 1182
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1184
    iget-object v9, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderer:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;

    iget-object v11, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEglHelper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;

    iget-object v11, v11, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v9, v0, v11}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    move v9, v8

    move-object v11, v0

    move v0, v8

    .line 1189
    :goto_4
    if-eqz v6, :cond_e

    .line 1190
    iget-object v6, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderer:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;

    invoke-interface {v6, v11, v3, v2}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    move v6, v8

    .line 1209
    :cond_e
    if-gt v0, v7, :cond_f

    iget-boolean v12, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mSafeMode:Z

    if-nez v12, :cond_10

    .line 1210
    :cond_f
    iget-object v12, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderer:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;

    invoke-interface {v12, v11}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1213
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 1215
    iget-object v12, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEglHelper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->swap()Z

    move-result v12

    if-nez v12, :cond_11

    .line 1216
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->stopEglLocked()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1220
    :cond_11
    :goto_5
    if-eqz v5, :cond_14

    move v4, v5

    move v5, v6

    move v6, v9

    move v9, v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v7

    .line 1221
    goto/16 :goto_0

    .line 1234
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :cond_12
    move v14, v9

    move v9, v0

    move v0, v14

    goto :goto_4

    :cond_13
    move v14, v9

    move v9, v0

    move v0, v14

    goto :goto_5

    :cond_14
    move v14, v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v9

    move v9, v14

    goto/16 :goto_0
.end method

.method private stopEglLocked()V
    .locals 1

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1059
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderer:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;

    invoke-interface {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$Renderer;->onDestroySurface()V

    .line 1060
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEglHelper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->destroySurface()V

    .line 1061
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->releaseEglSurfaceLocked(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;)V

    .line 1063
    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1249
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1250
    :try_start_0
    iget v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1284
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1285
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mPaused:Z

    .line 1286
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1287
    monitor-exit v1

    .line 1288
    return-void

    .line 1287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1291
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1292
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mPaused:Z

    .line 1293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1294
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1295
    monitor-exit v1

    .line 1296
    return-void

    .line 1295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 1345
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1346
    :try_start_0
    iput-boolean p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHasFocus:Z

    .line 1347
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1348
    monitor-exit v1

    .line 1349
    return-void

    .line 1348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 3

    .prologue
    .line 1299
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1300
    :try_start_0
    iput p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mWidth:I

    .line 1301
    iput p2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHeight:I

    .line 1302
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    const/4 v2, 0x1

    # setter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mSizeChanged:Z
    invoke-static {v0, v2}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$902(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;Z)Z

    .line 1303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1305
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1308
    :goto_0
    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1310
    :try_start_1
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1317
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1373
    if-nez p1, :cond_0

    .line 1374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1376
    :cond_0
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1377
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1379
    monitor-exit v1

    .line 1380
    return-void

    .line 1379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 2

    .prologue
    .line 1354
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1355
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mShouldExit:Z

    .line 1356
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1357
    :goto_0
    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1359
    :try_start_1
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1366
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1255
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1256
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1257
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1258
    monitor-exit v1

    .line 1259
    return-void

    .line 1258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1042
    :try_start_0
    invoke-direct {p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->threadExiting(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;)V

    .line 1050
    :goto_0
    return-void

    .line 1044
    :catch_0
    move-exception v0

    .line 1048
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->threadExiting(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;->threadExiting(Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2

    .prologue
    .line 1239
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1240
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1242
    :cond_1
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1243
    :try_start_0
    iput p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mRenderMode:I

    .line 1244
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1245
    monitor-exit v1

    .line 1246
    return-void

    .line 1245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSafeMode(Z)V
    .locals 0

    .prologue
    .line 1383
    iput-boolean p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mSafeMode:Z

    .line 1384
    return-void
.end method

.method public surfaceCreated()V
    .locals 2

    .prologue
    .line 1262
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1263
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHasSurface:Z

    .line 1264
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1265
    monitor-exit v1

    .line 1266
    return-void

    .line 1265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 2

    .prologue
    .line 1269
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1270
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mHasSurface:Z

    .line 1271
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1272
    :goto_0
    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1274
    :try_start_1
    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->sGLThreadManager:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$800()Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1281
    return-void
.end method
