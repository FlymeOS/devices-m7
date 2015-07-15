.class Lcom/android/server/SystemServer$ProcessListThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessListThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/android/server/SystemServer$ProcessListThread;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private readProcessFromFile(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    .local v0, "alist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1498
    .local v3, "pReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 1500
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1501
    .end local v3    # "pReader":Ljava/io/BufferedReader;
    .local v4, "pReader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1502
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1504
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 1505
    .end local v4    # "pReader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "pReader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v5, "SystemServer"

    const-string v6, "Exception writing process name from pList.txt to node task_comm_list"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1507
    if-eqz v3, :cond_0

    .line 1509
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1510
    const/4 v3, 0x0

    .line 1516
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v0

    .line 1507
    .end local v3    # "pReader":Ljava/io/BufferedReader;
    .restart local v4    # "pReader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v4, :cond_3

    .line 1509
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1510
    const/4 v3, 0x0

    .end local v4    # "pReader":Ljava/io/BufferedReader;
    .restart local v3    # "pReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1511
    .end local v3    # "pReader":Ljava/io/BufferedReader;
    .restart local v4    # "pReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 1512
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SystemServer"

    const-string v6, "Exception closing FileReader"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 1513
    .end local v4    # "pReader":Ljava/io/BufferedReader;
    .restart local v3    # "pReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1511
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1512
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SystemServer"

    const-string v6, "Exception closing FileReader"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1507
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_2

    .line 1509
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1510
    const/4 v3, 0x0

    .line 1513
    :cond_2
    :goto_4
    throw v5

    .line 1511
    :catch_3
    move-exception v1

    .line 1512
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "SystemServer"

    const-string v7, "Exception closing FileReader"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1507
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "pReader":Ljava/io/BufferedReader;
    .restart local v4    # "pReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "pReader":Ljava/io/BufferedReader;
    .restart local v3    # "pReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1504
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v3    # "pReader":Ljava/io/BufferedReader;
    .restart local v4    # "pReader":Ljava/io/BufferedReader;
    :cond_3
    move-object v3, v4

    .end local v4    # "pReader":Ljava/io/BufferedReader;
    .restart local v3    # "pReader":Ljava/io/BufferedReader;
    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1443
    :try_start_0
    const-string v10, "SystemServer"

    const-string v11, "ProcessListThread - run start"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const-string v6, "/sys/process/task_comm_list"

    .line 1446
    .local v6, "nodePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1448
    .local v5, "nodeFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1493
    .end local v5    # "nodeFile":Ljava/io/File;
    .end local v6    # "nodePath":Ljava/lang/String;
    :goto_0
    return-void

    .line 1451
    .restart local v5    # "nodeFile":Ljava/io/File;
    .restart local v6    # "nodePath":Ljava/lang/String;
    :cond_0
    const-string v10, "SystemServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "node "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " exists"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const-string v8, "/data/p_list.txt"

    .line 1454
    .local v8, "pListPath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v7, "pListFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 1457
    .local v9, "procList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1458
    const-string v10, "SystemServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " exists"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    invoke-direct {p0, v7}, Lcom/android/server/SystemServer$ProcessListThread;->readProcessFromFile(Ljava/io/File;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1468
    :goto_1
    const/4 v1, 0x0

    .line 1470
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1471
    .end local v1    # "fw":Ljava/io/FileWriter;
    .local v2, "fw":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    :try_start_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 1472
    const-string v11, "SystemServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "write, process = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1471
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1461
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v3    # "i":I
    :cond_1
    :try_start_3
    const-string v10, "SystemServer"

    const-string v11, "use default process"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "procList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1463
    .restart local v9    # "procList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "main"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    const-string v10, "system_server"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    const-string v10, "mediaserver"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1490
    .end local v5    # "nodeFile":Ljava/io/File;
    .end local v6    # "nodePath":Ljava/lang/String;
    .end local v7    # "pListFile":Ljava/io/File;
    .end local v8    # "pListPath":Ljava/lang/String;
    .end local v9    # "procList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1491
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "SystemServer"

    const-string v11, "Exception ProcessListThread running"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1479
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "i":I
    .restart local v5    # "nodeFile":Ljava/io/File;
    .restart local v6    # "nodePath":Ljava/lang/String;
    .restart local v7    # "pListFile":Ljava/io/File;
    .restart local v8    # "pListPath":Ljava/lang/String;
    .restart local v9    # "procList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz v2, :cond_5

    .line 1481
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1482
    const/4 v1, 0x0

    .line 1489
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v3    # "i":I
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :cond_3
    :goto_3
    :try_start_5
    const-string v10, "SystemServer"

    const-string v11, "ProcessListThread - run end"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1483
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "i":I
    :catch_1
    move-exception v0

    .line 1484
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "SystemServer"

    const-string v11, "Exception closing FileWriter"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v1, v2

    .line 1485
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 1476
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "i":I
    :catch_2
    move-exception v4

    .line 1477
    .local v4, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v10, "SystemServer"

    const-string v11, "Exception writing default process name"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1479
    if-eqz v1, :cond_3

    .line 1481
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1482
    const/4 v1, 0x0

    goto :goto_3

    .line 1483
    :catch_3
    move-exception v0

    .line 1484
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_8
    const-string v10, "SystemServer"

    const-string v11, "Exception closing FileWriter"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    .line 1479
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v1, :cond_4

    .line 1481
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1482
    const/4 v1, 0x0

    .line 1485
    :cond_4
    :goto_6
    :try_start_a
    throw v10

    .line 1483
    :catch_4
    move-exception v0

    .line 1484
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v11, "SystemServer"

    const-string v12, "Exception closing FileWriter"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_6

    .line 1479
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "i":I
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_5

    .line 1476
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v4

    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :cond_5
    move-object v1, v2

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    goto :goto_3
.end method
