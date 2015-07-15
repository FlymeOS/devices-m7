.class final Lcom/android/server/am/HtcErrorReportManager$1;
.super Ljava/lang/Object;
.source "HtcErrorReportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTCInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$errorReportIv:[B

.field final synthetic val$errorReportKey:[B

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$homeRestartIntent:Landroid/content/Intent;

.field final synthetic val$isSystemServer:Z

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$mediaServerTombstoneName:Ljava/lang/String;

.field final synthetic val$memoryLog:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;

.field final synthetic val$tombstoneName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[B[BLjava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dropboxTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$errorReportKey:[B

    iput-object p3, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$errorReportIv:[B

    iput-object p4, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$report:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$logFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$eventType:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$context:Landroid/content/Context;

    iput-boolean p10, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$isSystemServer:Z

    iput-object p11, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$memoryLog:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p13, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$tombstoneName:Ljava/lang/String;

    iput-object p14, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$mediaServerTombstoneName:Ljava/lang/String;

    iput-object p15, p0, Lcom/android/server/am/HtcErrorReportManager$1;->val$homeRestartIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 453
    const/16 v19, 0x0

    .line 454
    .local v19, "tmpTSFile":Ljava/io/File;
    const/16 v18, 0x0

    .line 455
    .local v18, "tmpMSTSFile":Ljava/io/File;
    new-instance v17, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/data/misc/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "@"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".dbox_tmp"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v17, "temp_file":Ljava/io/File;
    const/4 v8, 0x0

    .line 457
    .local v8, "fileWriter":Ljava/io/OutputStreamWriter;
    const/4 v12, 0x0

    .line 458
    .local v12, "fos":Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 460
    .local v10, "finishDump":Z
    :try_start_0
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 461
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 462
    .local v15, "os":Ljava/io/OutputStream;
    const/16 v22, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$errorReportKey:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$errorReportIv:[B

    move-object/from16 v24, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v13, v0, v1, v2}, Lcom/htc/server/report/error/LogStream;->concatenateOutputStream(Ljava/io/OutputStream;Z[B[B)Ljava/io/OutputStream;

    move-result-object v15

    .line 463
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 465
    .end local v8    # "fileWriter":Ljava/io/OutputStreamWriter;
    .local v9, "fileWriter":Ljava/io/OutputStreamWriter;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$sb:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 466
    const-string v22, "\n----- KERNEL -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 467
    new-instance v22, Ljava/io/File;

    const-string v23, "/proc/version"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x5

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v0, v9, v1}, Lcom/android/server/am/HtcErrorReportManager;->access$000(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 470
    sget-boolean v22, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v22, :cond_0

    .line 471
    const-string v22, "\n----- CMDLINE -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 472
    new-instance v22, Ljava/io/File;

    const-string v23, "/proc/cmdline"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x5

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v0, v9, v1}, Lcom/android/server/am/HtcErrorReportManager;->access$000(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 475
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$report:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 476
    const-string v22, "\n----- REPORT -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$report:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V

    .line 480
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$logFile:Ljava/io/File;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 482
    const-string v22, "\n----- LOG FILE -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$logFile:Ljava/io/File;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    invoke-static {v0, v9}, Lcom/android/server/am/HtcErrorReportManager;->access$100(Ljava/io/File;Ljava/io/OutputStreamWriter;)V

    .line 485
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$eventType:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "finalizer_timeout"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    sget-boolean v22, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 488
    const-string v22, "\n----- TIMEOUT LOG -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 489
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 492
    :cond_3
    const-string v22, "\n----- STACK TRACE -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V

    .line 499
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$eventType:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "finalizer_timeout"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    sget-boolean v22, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v22, :cond_5

    .line 500
    const-string v22, "dalvik.vm.stack-trace-file"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 501
    .local v21, "tracesPath":Ljava/lang/String;
    if-eqz v21, :cond_1d

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_1d

    .line 502
    new-instance v20, Ljava/io/File;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v20, "tracesFile":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_17

    .line 504
    const-string v22, "\n----- LOG FILE -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, v20

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    invoke-static {v0, v9}, Lcom/android/server/am/HtcErrorReportManager;->access$100(Ljava/io/File;Ljava/io/OutputStreamWriter;)V

    .line 513
    .end local v20    # "tracesFile":Ljava/io/File;
    .end local v21    # "tracesPath":Ljava/lang/String;
    :cond_5
    :goto_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "logcat_for_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 514
    .local v16, "setting":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 516
    .local v14, "lines":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$eventType:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "crash"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$eventType:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "anr"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$eventType:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "watchdog"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "HTC_HOME_RESTART"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "HTC_APP_NATIVE_CRASH"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$eventType:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "finalizer_timeout"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 518
    :cond_6
    sget-boolean v22, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v22, :cond_24

    const/16 v14, 0x1000

    .line 519
    :cond_7
    :goto_1
    if-lez v14, :cond_8

    .line 520
    const-string v22, "\n----- SYSTEM LOG -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 521
    new-instance v22, Ljava/lang/ProcessBuilder;

    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "/system/bin/logcat"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "-v"

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-string v25, "threadtime"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    const-string v25, "-t"

    aput-object v25, v23, v24

    const/16 v24, 0x4

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v23

    const/16 v24, 0x0

    sget-boolean v22, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v22, :cond_25

    const/16 v22, 0x1

    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    invoke-static {v0, v9, v1, v2}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V

    .line 523
    const-string v22, "\n----- EVENT LOG -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 524
    new-instance v22, Ljava/lang/ProcessBuilder;

    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "/system/bin/logcat"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "-v"

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-string v25, "threadtime"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    const-string v25, "-b"

    aput-object v25, v23, v24

    const/16 v24, 0x4

    const-string v25, "events"

    aput-object v25, v23, v24

    const/16 v24, 0x5

    const-string v25, "-t"

    aput-object v25, v23, v24

    const/16 v24, 0x6

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v23

    const/16 v24, 0x0

    sget-boolean v22, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v22, :cond_26

    const/16 v22, 0x1

    :goto_3
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    invoke-static {v0, v9, v1, v2}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V

    .line 526
    const-string v22, "\n----- RADIO LOG -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 527
    new-instance v22, Ljava/lang/ProcessBuilder;

    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "/system/bin/logcat"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "-v"

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-string v25, "threadtime"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    const-string v25, "-b"

    aput-object v25, v23, v24

    const/16 v24, 0x4

    const-string v25, "radio"

    aput-object v25, v23, v24

    const/16 v24, 0x5

    const-string v25, "-t"

    aput-object v25, v23, v24

    const/16 v24, 0x6

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-direct/range {v22 .. v23}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v23

    const/16 v24, 0x0

    sget-boolean v22, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v22, :cond_27

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    invoke-static {v0, v9, v1, v2}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V

    .line 530
    const-string v22, "\n----- KERNEL MSG -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 531
    # invokes: Lcom/android/server/am/HtcErrorReportManager;->writeKernelLog(Ljava/io/OutputStreamWriter;I)V
    invoke-static {v9, v14}, Lcom/android/server/am/HtcErrorReportManager;->access$300(Ljava/io/OutputStreamWriter;I)V

    .line 533
    sget-boolean v22, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v22, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$isSystemServer:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 534
    const-string v22, "\n----- PROCRANK (procrank) -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 535
    new-instance v23, Ljava/lang/ProcessBuilder;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    const-string v25, "/system/xbin/procrank"

    aput-object v25, v22, v24

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/16 v24, 0x0

    sget-boolean v22, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v22, :cond_28

    const/16 v22, 0x1

    :goto_5
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    invoke-static {v0, v9, v1, v2}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V

    .line 546
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$isSystemServer:Z

    move/from16 v22, v0

    if-nez v22, :cond_9

    .line 548
    const-string v22, "/data"

    move-object/from16 v0, v22

    invoke-static {v0, v9}, Lcom/android/server/am/HtcErrorReportManager;->dump(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V

    .line 553
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$isSystemServer:Z

    move/from16 v22, v0

    if-nez v22, :cond_a

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->dumpPostInstalledHTCAppInfo(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V
    invoke-static {v0, v9}, Lcom/android/server/am/HtcErrorReportManager;->access$400(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V

    .line 558
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$memoryLog:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 559
    const-string v22, "\n----- MEMORY LOG -----\n"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$memoryLog:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 563
    :cond_b
    if-eqz v9, :cond_2a

    .line 564
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    const/4 v8, 0x0

    .line 568
    .end local v9    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v8    # "fileWriter":Ljava/io/OutputStreamWriter;
    :goto_6
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 569
    .local v6, "entryStartTime":J
    const/16 v11, 0x8

    .line 570
    .local v11, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dbox:Landroid/os/DropBoxManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v11}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V

    .line 571
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$tombstoneName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$tombstoneName:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/tombstones/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$tombstoneName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$errorReportKey:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$errorReportIv:[B

    move-object/from16 v25, v0

    invoke-static/range {v22 .. v25}, Lcom/android/server/am/HtcErrorReportManager;->encryptFile(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/io/File;

    move-result-object v19

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dbox:Landroid/os/DropBoxManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$tombstoneName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v11}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V

    .line 578
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$mediaServerTombstoneName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$mediaServerTombstoneName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$tombstoneName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$mediaServerTombstoneName:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/tombstones/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$mediaServerTombstoneName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$errorReportKey:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$errorReportIv:[B

    move-object/from16 v25, v0

    invoke-static/range {v22 .. v25}, Lcom/android/server/am/HtcErrorReportManager;->encryptFile(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/io/File;

    move-result-object v18

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dbox:Landroid/os/DropBoxManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$mediaServerTombstoneName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V

    .line 582
    :cond_d
    const/4 v10, 0x1

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "SYSTEM_CRASH"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$eventType:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "watchdog"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v22

    if-nez v22, :cond_f

    .line 587
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_29

    const-string v22, "java.lang.OutOfMemoryError"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_29

    .line 588
    const-string v22, "/data/system/error_report/last_crash_msg"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$eventType:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/am/HtcErrorReportManager;->access$500(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 604
    :cond_f
    :goto_7
    if-eqz v8, :cond_10

    .line 605
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V

    .line 606
    :cond_10
    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 607
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 608
    :cond_11
    if-eqz v19, :cond_12

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 609
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 610
    :cond_12
    if-eqz v18, :cond_13

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 611
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 612
    :cond_13
    sget-boolean v22, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v22, :cond_14

    .line 613
    sget-object v22, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v23, "End---add error logs to dropbox"

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_14
    if-eqz v10, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$homeRestartIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    if-eqz v22, :cond_15

    .line 615
    sget-object v22, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v23, "Send LMK HOME_RESTART to reportagent"

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$homeRestartIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const-string v24, "com.htc.permission.APP_PLATFORM"

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_15
    move-object v12, v13

    .line 622
    .end local v6    # "entryStartTime":J
    .end local v11    # "flags":I
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "lines":I
    .end local v15    # "os":Ljava/io/OutputStream;
    .end local v16    # "setting":Ljava/lang/String;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :cond_16
    :goto_8
    return-void

    .line 508
    .end local v8    # "fileWriter":Ljava/io/OutputStreamWriter;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "os":Ljava/io/OutputStream;
    .restart local v20    # "tracesFile":Ljava/io/File;
    .restart local v21    # "tracesPath":Ljava/lang/String;
    :cond_17
    :try_start_5
    sget-object v22, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v23, "traces.txt dosen\'t exist!"

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 600
    .end local v20    # "tracesFile":Ljava/io/File;
    .end local v21    # "tracesPath":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 601
    .end local v9    # "fileWriter":Ljava/io/OutputStreamWriter;
    .end local v15    # "os":Ljava/io/OutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v8    # "fileWriter":Ljava/io/OutputStreamWriter;
    :goto_9
    :try_start_6
    sget-object v22, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v23, "Error in dumping error information"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 604
    if-eqz v8, :cond_18

    .line 605
    :try_start_7
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V

    .line 606
    :cond_18
    if-eqz v17, :cond_19

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_19

    .line 607
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 608
    :cond_19
    if-eqz v19, :cond_1a

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 609
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 610
    :cond_1a
    if-eqz v18, :cond_1b

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 611
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 612
    :cond_1b
    sget-boolean v22, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v22, :cond_1c

    .line 613
    sget-object v22, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v23, "End---add error logs to dropbox"

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_1c
    if-eqz v10, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$homeRestartIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    .line 615
    sget-object v22, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v23, "Send LMK HOME_RESTART to reportagent"

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$homeRestartIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const-string v24, "com.htc.permission.APP_PLATFORM"

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_8

    .line 618
    :catch_1
    move-exception v5

    .line 619
    .local v5, "ex":Ljava/lang/Exception;
    sget-object v22, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v23, "Error in finally block"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 510
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v8    # "fileWriter":Ljava/io/OutputStreamWriter;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "os":Ljava/io/OutputStream;
    .restart local v21    # "tracesPath":Ljava/lang/String;
    :cond_1d
    :try_start_8
    sget-object v22, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "traces.txt path: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 603
    .end local v21    # "tracesPath":Ljava/lang/String;
    :catchall_0
    move-exception v22

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 604
    .end local v9    # "fileWriter":Ljava/io/OutputStreamWriter;
    .end local v15    # "os":Ljava/io/OutputStream;
    .restart local v8    # "fileWriter":Ljava/io/OutputStreamWriter;
    :goto_a
    if-eqz v8, :cond_1e

    .line 605
    :try_start_9
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V

    .line 606
    :cond_1e
    if-eqz v17, :cond_1f

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1f

    .line 607
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 608
    :cond_1f
    if-eqz v19, :cond_20

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_20

    .line 609
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 610
    :cond_20
    if-eqz v18, :cond_21

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_21

    .line 611
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 612
    :cond_21
    sget-boolean v23, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v23, :cond_22

    .line 613
    sget-object v23, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v24, "End---add error logs to dropbox"

    invoke-static/range {v23 .. v24}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_22
    if-eqz v10, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$homeRestartIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23

    .line 615
    sget-object v23, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v24, "Send LMK HOME_RESTART to reportagent"

    invoke-static/range {v23 .. v24}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$homeRestartIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string v25, "com.htc.permission.APP_PLATFORM"

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 620
    :cond_23
    :goto_b
    throw v22

    .line 518
    .end local v8    # "fileWriter":Ljava/io/OutputStreamWriter;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "lines":I
    .restart local v15    # "os":Ljava/io/OutputStream;
    .restart local v16    # "setting":Ljava/lang/String;
    :cond_24
    const/16 v14, 0x400

    goto/16 :goto_1

    .line 521
    :cond_25
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 524
    :cond_26
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 527
    :cond_27
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 535
    :cond_28
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 594
    .end local v9    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v6    # "entryStartTime":J
    .restart local v8    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v11    # "flags":I
    :cond_29
    :try_start_a
    const-string v22, "/data/system/error_report/last_crash_msg"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$1;->val$eventType:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    # invokes: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/am/HtcErrorReportManager;->access$500(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_7

    .line 600
    .end local v6    # "entryStartTime":J
    .end local v11    # "flags":I
    .end local v14    # "lines":I
    .end local v16    # "setting":Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .line 618
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "entryStartTime":J
    .restart local v11    # "flags":I
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "lines":I
    .restart local v16    # "setting":Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 619
    .restart local v5    # "ex":Ljava/lang/Exception;
    sget-object v22, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v23, "Error in finally block"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v12, v13

    .line 621
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .line 618
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v6    # "entryStartTime":J
    .end local v11    # "flags":I
    .end local v14    # "lines":I
    .end local v15    # "os":Ljava/io/OutputStream;
    .end local v16    # "setting":Ljava/lang/String;
    :catch_4
    move-exception v5

    .line 619
    .restart local v5    # "ex":Ljava/lang/Exception;
    sget-object v23, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v24, "Error in finally block"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 603
    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v22

    goto/16 :goto_a

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v22

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_a

    .line 600
    .end local v15    # "os":Ljava/io/OutputStream;
    :catch_5
    move-exception v4

    goto/16 :goto_9

    .end local v8    # "fileWriter":Ljava/io/OutputStreamWriter;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "lines":I
    .restart local v15    # "os":Ljava/io/OutputStream;
    .restart local v16    # "setting":Ljava/lang/String;
    :cond_2a
    move-object v8, v9

    .end local v9    # "fileWriter":Ljava/io/OutputStreamWriter;
    .restart local v8    # "fileWriter":Ljava/io/OutputStreamWriter;
    goto/16 :goto_6
.end method
