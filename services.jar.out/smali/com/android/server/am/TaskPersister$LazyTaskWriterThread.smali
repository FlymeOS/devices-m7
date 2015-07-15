.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    .line 454
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 455
    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 459
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    .line 465
    .local v18, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 466
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    .line 467
    .local v19, "probablyDone":Z
    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    if-eqz v19, :cond_3

    .line 470
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->clear()V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    monitor-enter v27

    .line 472
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 474
    .local v25, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v24, v26, -0x1

    .local v24, "taskNdx":I
    :goto_1
    if-ltz v24, :cond_2

    .line 475
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/am/TaskRecord;

    .line 478
    .local v23, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v26

    if-nez v26, :cond_1

    .line 480
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 474
    :cond_1
    add-int/lit8 v24, v24, -0x1

    goto :goto_1

    .line 467
    .end local v19    # "probablyDone":Z
    .end local v23    # "task":Lcom/android/server/am/TaskRecord;
    .end local v24    # "taskNdx":I
    .end local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v26

    :try_start_2
    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v26

    .line 485
    .restart local v19    # "probablyDone":Z
    .restart local v24    # "taskNdx":I
    .restart local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_2
    :try_start_3
    monitor-exit v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 488
    .local v20, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    # invokes: Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->access$200(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v8, v26, v20

    .line 490
    .local v8, "duration":J
    const-wide/16 v26, 0x3e8

    cmp-long v26, v8, v26

    if-lez v26, :cond_3

    .line 491
    const-string v26, "TaskPersister"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "remove obsolete files, duration = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .end local v8    # "duration":J
    .end local v20    # "start":J
    .end local v24    # "taskNdx":I
    .end local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 499
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v28

    const-wide/16 v30, -0x1

    cmp-long v26, v28, v30

    if-eqz v26, :cond_4

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x1f4

    add-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    # setter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->access$302(Lcom/android/server/am/TaskPersister;J)J

    .line 507
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v26, v28, v30

    if-eqz v26, :cond_5

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    const-wide/16 v28, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    # setter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->access$302(Lcom/android/server/am/TaskPersister;J)J

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 514
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 515
    :catch_0
    move-exception v26

    goto :goto_2

    .line 485
    :catchall_1
    move-exception v26

    :try_start_6
    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v26

    .line 520
    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 522
    .local v15, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 525
    .local v16, "now":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-wide v28

    cmp-long v26, v16, v28

    if-gez v26, :cond_7

    .line 529
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v28 .. v28}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v28

    sub-long v28, v28, v16

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 532
    :goto_4
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    goto :goto_3

    .line 536
    :cond_7
    monitor-exit v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 538
    instance-of v0, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move/from16 v26, v0

    if-eqz v26, :cond_9

    move-object v14, v15

    .line 539
    check-cast v14, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .line 540
    .local v14, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v11, v14, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    .line 541
    .local v11, "filename":Ljava/lang/String;
    iget-object v6, v14, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 543
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 545
    .local v12, "imageFile":Ljava/io/FileOutputStream;
    :try_start_a
    new-instance v13, Ljava/io/FileOutputStream;

    new-instance v26, Ljava/io/File;

    sget-object v27, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 546
    .end local v12    # "imageFile":Ljava/io/FileOutputStream;
    .local v13, "imageFile":Ljava/io/FileOutputStream;
    :try_start_b
    sget-object v26, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v27, 0x64

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 550
    if-eqz v13, :cond_c

    .line 552
    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    move-object v12, v13

    .line 554
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 536
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "filename":Ljava/lang/String;
    .end local v12    # "imageFile":Ljava/io/FileOutputStream;
    .end local v14    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v15    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v16    # "now":J
    :catchall_2
    move-exception v26

    :try_start_d
    monitor-exit v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v26

    .line 553
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "filename":Ljava/lang/String;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v14    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v15    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .restart local v16    # "now":J
    :catch_1
    move-exception v26

    move-object v12, v13

    .line 554
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 547
    :catch_2
    move-exception v7

    .line 548
    .local v7, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_e
    const-string v26, "TaskPersister"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "saveImage: unable to save "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 550
    if-eqz v12, :cond_0

    .line 552
    :try_start_f
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_0

    .line 553
    :catch_3
    move-exception v26

    goto/16 :goto_0

    .line 550
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v26

    :goto_6
    if-eqz v12, :cond_8

    .line 552
    :try_start_10
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 554
    :cond_8
    :goto_7
    throw v26

    .line 557
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "filename":Ljava/lang/String;
    .end local v12    # "imageFile":Ljava/io/FileOutputStream;
    .end local v14    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_9
    instance-of v0, v15, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 559
    const/16 v22, 0x0

    .line 560
    .local v22, "stringWriter":Ljava/io/StringWriter;
    check-cast v15, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    .end local v15    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v0, v15, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    .line 562
    .restart local v23    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    monitor-enter v27

    .line 563
    :try_start_11
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v26, v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    if-eqz v26, :cond_a

    .line 567
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    # invokes: Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-result-object v22

    .line 572
    :cond_a
    :goto_8
    :try_start_13
    monitor-exit v27
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 573
    if-eqz v22, :cond_0

    .line 575
    const/4 v10, 0x0

    .line 576
    .local v10, "file":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 578
    .local v4, "atomicFile":Landroid/util/AtomicFile;
    :try_start_14
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v26, Ljava/io/File;

    sget-object v27, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_task"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".xml"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6

    .line 580
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v5, "atomicFile":Landroid/util/AtomicFile;
    :try_start_15
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v10

    .line 581
    invoke-virtual/range {v22 .. v22}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 582
    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 583
    invoke-virtual {v5, v10}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    goto/16 :goto_0

    .line 584
    :catch_4
    move-exception v7

    move-object v4, v5

    .line 585
    .end local v5    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v7, "e":Ljava/io/IOException;
    :goto_9
    if-eqz v10, :cond_b

    .line 586
    invoke-virtual {v4, v10}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 588
    :cond_b
    const-string v26, "TaskPersister"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unable to open "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " for persisting. "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 572
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "file":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v26

    :try_start_16
    monitor-exit v27
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v26

    .line 553
    .end local v22    # "stringWriter":Ljava/io/StringWriter;
    .end local v23    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "filename":Ljava/lang/String;
    .restart local v12    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v14    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v15    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catch_5
    move-exception v27

    goto/16 :goto_7

    .line 584
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "filename":Ljava/lang/String;
    .end local v12    # "imageFile":Ljava/io/FileOutputStream;
    .end local v14    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v15    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v10    # "file":Ljava/io/FileOutputStream;
    .restart local v22    # "stringWriter":Ljava/io/StringWriter;
    .restart local v23    # "task":Lcom/android/server/am/TaskRecord;
    :catch_6
    move-exception v7

    goto :goto_9

    .line 569
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v10    # "file":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v26

    goto/16 :goto_8

    .line 568
    :catch_8
    move-exception v26

    goto/16 :goto_8

    .line 550
    .end local v22    # "stringWriter":Ljava/io/StringWriter;
    .end local v23    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "filename":Ljava/lang/String;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v14    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v15    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catchall_5
    move-exception v26

    move-object v12, v13

    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 547
    .end local v12    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v7

    move-object v12, v13

    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 530
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "filename":Ljava/lang/String;
    .end local v12    # "imageFile":Ljava/io/FileOutputStream;
    .end local v14    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :catch_a
    move-exception v26

    goto/16 :goto_4

    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "filename":Ljava/lang/String;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v14    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_c
    move-object v12, v13

    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method
