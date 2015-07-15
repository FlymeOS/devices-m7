.class final Lcom/android/server/Watchdog$DumpHeapTask;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DumpHeapTask"
.end annotation


# static fields
.field static final HPROF_EXTENSION:Ljava/lang/String; = ".syshprof"

.field static final HPROF_FOLDER:Ljava/lang/String; = "/data/htclog/"


# instance fields
.field private mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

.field private mHeapSize:J


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog$HeapMonitor;J)V
    .locals 0
    .param p1, "heapMonitor"    # Lcom/android/server/Watchdog$HeapMonitor;
    .param p2, "heapSize"    # J

    .prologue
    .line 819
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 820
    iput-object p1, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 821
    iput-wide p2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapSize:J

    .line 822
    return-void
.end method

.method private deleteAllHprof()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 854
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v8, "/data/htclog/"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 855
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    .line 856
    :cond_0
    const-string v8, "Watchdog"

    const-string v9, "no /data/htclog/"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    .end local v1    # "dir":Ljava/io/File;
    :goto_0
    return v7

    .line 860
    .restart local v1    # "dir":Ljava/io/File;
    :cond_1
    new-instance v8, Lcom/android/server/Watchdog$DumpHeapTask$1;

    invoke-direct {v8, p0}, Lcom/android/server/Watchdog$DumpHeapTask$1;-><init>(Lcom/android/server/Watchdog$DumpHeapTask;)V

    invoke-virtual {v1, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    .line 867
    .local v6, "syshprofs":[Ljava/io/File;
    if-eqz v6, :cond_2

    .line 868
    move-object v0, v6

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 869
    .local v3, "hprof":Ljava/io/File;
    const-string v8, "Watchdog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 873
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "hprof":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    .line 874
    .end local v1    # "dir":Ljava/io/File;
    .end local v6    # "syshprofs":[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 875
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "Watchdog"

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getHprofName(I)Ljava/lang/String;
    .locals 4
    .param p1, "pid"    # I

    .prologue
    .line 881
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 882
    .local v1, "now":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd-kkmm_"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 883
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/htclog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".syshprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isAvailableStorage(J)Z
    .locals 7
    .param p1, "heapSize"    # J

    .prologue
    .line 887
    new-instance v2, Landroid/os/StatFs;

    const-string v3, "/data"

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 888
    .local v2, "mStatFs":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    .line 889
    .local v0, "avail":J
    const-string v3, "Watchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " heapSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    cmp-long v3, v0, p1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 827
    :try_start_0
    const-string v2, "Watchdog"

    const-string v3, "DumpHeapTask++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-wide v2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/Watchdog$DumpHeapTask;->isAvailableStorage(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 829
    const-string v2, "Watchdog"

    const-string v3, "Not available storage"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    iget-object v2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 847
    iput-object v5, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 848
    const-string v2, "Watchdog"

    const-string v3, "DumpHeapTask--"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_0
    return-void

    .line 832
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/Watchdog$DumpHeapTask;->deleteAllHprof()Z

    move-result v2

    if-nez v2, :cond_1

    .line 833
    const-string v2, "Watchdog"

    const-string v3, "deleteAllHprof error"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    iget-object v2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 847
    iput-object v5, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 848
    const-string v2, "Watchdog"

    const-string v3, "DumpHeapTask--"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 837
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/Watchdog$DumpHeapTask;->getHprofName(I)Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "hprofName":Ljava/lang/String;
    const-string v2, "Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpHeap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 840
    const/16 v2, 0x1ff

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 846
    iget-object v2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 847
    iput-object v5, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 848
    const-string v2, "Watchdog"

    const-string v3, "DumpHeapTask--"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 842
    .end local v1    # "hprofName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "Watchdog"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 846
    iget-object v2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 847
    iput-object v5, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 848
    const-string v2, "Watchdog"

    const-string v3, "DumpHeapTask--"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 846
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    .line 847
    iput-object v5, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    .line 848
    const-string v3, "Watchdog"

    const-string v4, "DumpHeapTask--"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method
