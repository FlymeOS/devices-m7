.class public Lcom/android/server/am/MemoryLogUtilAm;
.super Ljava/lang/Object;
.source "MemoryLogUtilAm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryLogUtilAm$IonInfo;,
        Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    }
.end annotation


# static fields
.field private static final DURATION_DUMP_LOW_MEMORY:I = 0x4e20

.field static final FORCE_DUMP_ADJ:I = 0x4

.field static final MIN_DUMP_ADJ:I = 0x6

.field private static final NUM_EXTRAM_MEMINFO:I = 0x9

.field static final PLATFORM_BRCM:I = 0x3

.field static final PLATFORM_NONE:I = 0x0

.field static final PLATFORM_NV:I = 0x1

.field static final PLATFORM_QCT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemoryLogUtilAm"

.field static mPlatform:I

.field private static sFreeCma:J

.field private static sIONInUse:J

.field private static sIONTotal:J

.field private static sKGSLAlloc:J

.field private static sKernelStack:J

.field private static sLastTimeDumpLowMemory:J

.field private static sPageTables:J

.field private static sSwapFree:J

.field private static sSwapTotal:J

.field private static sZramInUse:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    return-void
.end method

.method public static final native dumpHeader()Ljava/lang/String;
.end method

.method static dumpLRUProcess(Lcom/android/server/am/ProcessRecord;Z)Ljava/lang/String;
    .locals 19
    .param p0, "rec"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "isHomeKilled"    # Z

    .prologue
    .line 141
    const-string v16, ""

    .line 144
    .local v16, "result":Ljava/lang/String;
    const/4 v13, 0x0

    .line 145
    .local v13, "isBinded":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 146
    const/4 v13, 0x1

    .line 149
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v17, "serviceInfo":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v15, "providerInfo":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v3, "service"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ServiceRecord;

    .line 154
    .local v18, "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v13, :cond_2

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    sub-long v10, v2, v4

    .line 159
    .local v10, "duration":J
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 161
    const-string v2, " <- "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_3
    const-string v2, " For "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v10    # "duration":J
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "providerInfo":Ljava/lang/StringBuilder;
    .end local v17    # "serviceInfo":Ljava/lang/StringBuilder;
    .end local v18    # "sr":Lcom/android/server/am/ServiceRecord;
    :catch_0
    move-exception v9

    .line 181
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "MemoryLogUtilAm"

    const-string v3, "Error dumpLowMemoryLog"

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v16

    .line 164
    .restart local v15    # "providerInfo":Ljava/lang/StringBuilder;
    .restart local v17    # "serviceInfo":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string v3, "provider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 166
    .local v14, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_5
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 167
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ContentProviderRecord;

    .line 168
    .local v8, "cpRec":Lcom/android/server/am/ContentProviderRecord;
    if-eqz v13, :cond_6

    iget-object v2, v8, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 172
    :cond_6
    iget-object v2, v8, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v2, :cond_7

    .line 174
    const-string v2, " <- "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_7
    const-string v2, "."

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 179
    .end local v8    # "cpRec":Lcom/android/server/am/ContentProviderRecord;
    .end local v14    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/MemoryLogUtilAm;->dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto :goto_1
.end method

.method static dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/MemoryLogUtilAm;->dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static dumpLowMemoryLog(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 24
    .param p1, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "dyingProc"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/ProcessRecord;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v21, "result":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 70
    .local v7, "isHomeKilled":Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 71
    .local v10, "current":J
    const/4 v12, 0x1

    .line 73
    .local v12, "forceDump":Z
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .line 74
    .local v18, "pr":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v4, 0x6

    if-le v3, v4, :cond_1

    .line 75
    const/4 v3, 0x0

    .line 137
    .end local v10    # "current":J
    .end local v12    # "forceDump":Z
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v3

    .line 77
    .restart local v10    # "current":J
    .restart local v12    # "forceDump":Z
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v18    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_1
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 78
    const/4 v12, 0x0

    goto :goto_0

    .line 81
    .end local v18    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v4, 0x5

    if-gt v3, v4, :cond_3

    const-string v3, "com.htc.launcher"

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    const/4 v7, 0x1

    .line 85
    :cond_3
    sget-wide v4, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    sub-long v22, v10, v4

    .line 86
    .local v22, "timeDiff":J
    if-nez v12, :cond_4

    const-wide/16 v4, 0x4e20

    cmp-long v3, v22, v4

    if-gez v3, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v3, v22, v4

    if-lez v3, :cond_4

    .line 87
    const/4 v3, 0x0

    goto :goto_1

    .line 89
    :cond_4
    sput-wide v10, Lcom/android/server/am/MemoryLogUtilAm;->sLastTimeDumpLowMemory:J

    .line 90
    const/16 v19, 0x0

    .line 91
    .local v19, "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/Vector;

    .end local v19    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 92
    .restart local v19    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const-string v3, "MemoryLogUtilAm"

    const-string v4, "LowMemDetail: dump begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz p1, :cond_5

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LowMemDetail: TOP_APP= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 96
    .local v16, "log":Ljava/lang/String;
    const-string v3, "MemoryLogUtilAm"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-eqz v7, :cond_5

    .line 98
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .end local v16    # "log":Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_7

    .line 101
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpHeader()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    .local v13, "i":I
    :goto_3
    if-ltz v13, :cond_8

    .line 106
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ProcessRecord;

    .line 107
    .local v20, "rec":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/android/server/am/MemoryLogUtilAm;->dumpLRUProcess(Lcom/android/server/am/ProcessRecord;Z)Ljava/lang/String;

    move-result-object v16

    .line 108
    .restart local v16    # "log":Ljava/lang/String;
    if-eqz v7, :cond_6

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 109
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_6
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 103
    .end local v13    # "i":I
    .end local v16    # "log":Ljava/lang/String;
    .end local v20    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_7
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpHeader()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 133
    .end local v10    # "current":J
    .end local v12    # "forceDump":Z
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v19    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v22    # "timeDiff":J
    :catch_0
    move-exception v9

    .line 134
    .local v9, "e":Ljava/lang/Exception;
    const-string v3, "MemoryLogUtilAm"

    const-string v4, "Error while dumping low memory logs."

    invoke-static {v3, v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 114
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "current":J
    .restart local v12    # "forceDump":Z
    .restart local v13    # "i":I
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v19    # "processIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v22    # "timeDiff":J
    :cond_8
    :try_start_1
    const-string v3, "/proc"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v17

    .line 115
    .local v17, "pids":[I
    move-object/from16 v8, v17

    .local v8, "arr$":[I
    array-length v15, v8

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_4
    if-ge v14, v15, :cond_a

    aget v2, v8, v14

    .line 116
    .local v2, "id":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    .line 117
    const/4 v3, 0x0

    const-string v4, "native"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/MemoryLogUtilAm;->dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 118
    .restart local v16    # "log":Ljava/lang/String;
    if-eqz v7, :cond_9

    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 119
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .end local v16    # "log":Ljava/lang/String;
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 123
    .end local v2    # "id":I
    :cond_a
    if-eqz v7, :cond_b

    .line 124
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemInfo()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemoryLogFromFile(Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :goto_5
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpNVAllocationLog()V

    .line 132
    const-string v3, "MemoryLogUtilAm"

    const-string v4, "LowMemDetail: dump end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 127
    :cond_b
    :try_start_2
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemInfo()Ljava/lang/String;

    .line 128
    invoke-static {v7}, Lcom/android/server/am/MemoryLogUtilAm;->dumpMemoryLogFromFile(Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5
.end method

.method static dumpMemInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 188
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 189
    .local v0, "mMemInfoReader":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 190
    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->readExtraMemInfo()V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Total, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Free, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getBuffersSizeKb()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Buffers, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Cached, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getShmemSizeKb()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Shmem, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSlabSizeKb()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB Slab, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getKernelStack()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB KernelStack, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getPageTable()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB PageTable, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getKGSLAlloc()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB KGSL_ALLOC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getIONToal()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB ION_Total, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getIONInUse()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB ION_InUse, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getFreeCma()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB FreeCma, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapTotal()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB SwapTotal, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getSwapFree()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB SwapFree, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/MemoryLogUtilAm;->getZramInUse()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB ZramInUse."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "result":Ljava/lang/String;
    const-string v2, "MemoryLogUtilAm"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-object v1
.end method

.method static dumpMemoryLogFromFile(Z)Ljava/lang/String;
    .locals 36
    .param p0, "isHomeKilled"    # Z

    .prologue
    .line 328
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v23, "result":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 330
    .local v13, "input":Ljava/io/BufferedReader;
    const/16 v16, 0x0

    .line 331
    .local v16, "line":Ljava/lang/String;
    const/16 v17, 0x0

    .line 333
    .local v17, "path":Ljava/lang/String;
    sget v28, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 334
    const-string v17, "/sys/kernel/debug/nvmap/iovmm/clients"

    .line 339
    :cond_0
    :goto_0
    if-eqz v17, :cond_1

    .line 341
    :try_start_0
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v28, Ljava/io/FileReader;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    .end local v13    # "input":Ljava/io/BufferedReader;
    .local v14, "input":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_a

    .line 343
    const-string v29, "MemoryLogUtilAm"

    sget v28, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    move-object/from16 v28, v16

    :goto_2
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_1

    .line 345
    :catch_0
    move-exception v8

    move-object v13, v14

    .line 346
    .end local v14    # "input":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v13    # "input":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string v28, "MemoryLogUtilAm"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error logging memory file "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    if-eqz v13, :cond_1

    .line 350
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 355
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_4
    const-string v17, "/d/ion/iommu"

    .line 357
    :try_start_4
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_17

    .line 359
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v6, "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 362
    .local v12, "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v28, Ljava/io/FileReader;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 363
    .end local v13    # "input":Ljava/io/BufferedReader;
    .restart local v14    # "input":Ljava/io/BufferedReader;
    :cond_2
    :goto_5
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_14

    .line 364
    const-string v28, "client              pid"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_10

    const-string v28, "client          creator"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_10

    .line 365
    const-string v28, "\\s+"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 366
    .local v25, "split":[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 367
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v24, "sb":Ljava/lang/StringBuilder;
    const/16 v28, 0x1

    aget-object v28, v25, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x2

    aget-object v29, v25, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 369
    .local v15, "key":Ljava/lang/String;
    invoke-virtual {v6, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_c

    .line 370
    const/16 v28, 0x3

    aget-object v28, v25, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 415
    .end local v15    # "key":Ljava/lang/String;
    .end local v24    # "sb":Ljava/lang/StringBuilder;
    .end local v25    # "split":[Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v13, v14

    .line 416
    .end local v6    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "file":Ljava/io/File;
    .end local v12    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v14    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v13    # "input":Ljava/io/BufferedReader;
    :goto_6
    :try_start_6
    const-string v28, "MemoryLogUtilAm"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error logging memory file "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 418
    if-eqz v13, :cond_3

    .line 420
    :try_start_7
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 424
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_7
    const-string v17, "/d/ion/heaps/system"

    .line 426
    :try_start_8
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .restart local v9    # "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_20

    .line 428
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 430
    .local v22, "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v28, Ljava/io/FileReader;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 431
    .end local v13    # "input":Ljava/io/BufferedReader;
    .restart local v14    # "input":Ljava/io/BufferedReader;
    :cond_4
    :goto_8
    :try_start_9
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1f

    .line 432
    const-string v28, "\\s+"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 434
    .restart local v25    # "split":[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    .line 435
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 436
    .local v27, "trim":Ljava/lang/String;
    const-string v28, "client              pid"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_6

    const-string v28, "total orphaned"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_6

    const-string v28, "deferred free"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 437
    :cond_6
    const-string v28, "MemoryLogUtilAm"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ion-heaps : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-eqz p0, :cond_4

    .line 439
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ion-heaps : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_8

    .line 465
    .end local v25    # "split":[Ljava/lang/String;
    .end local v27    # "trim":Ljava/lang/String;
    :catch_2
    move-exception v8

    move-object v13, v14

    .line 466
    .end local v9    # "file":Ljava/io/File;
    .end local v14    # "input":Ljava/io/BufferedReader;
    .end local v22    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v13    # "input":Ljava/io/BufferedReader;
    :goto_9
    :try_start_a
    const-string v28, "MemoryLogUtilAm"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error logging memory file "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 468
    if-eqz v13, :cond_7

    .line 470
    :try_start_b
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 473
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    return-object v28

    .line 335
    :cond_8
    sget v28, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 336
    const-string v17, "/d/ion/ion-system-extra"

    goto/16 :goto_0

    .line 343
    .end local v13    # "input":Ljava/io/BufferedReader;
    .restart local v14    # "input":Ljava/io/BufferedReader;
    :cond_9
    :try_start_c
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ion-extra : "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-result-object v28

    goto/16 :goto_2

    .line 348
    :cond_a
    if-eqz v14, :cond_21

    .line 350
    :try_start_d
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    move-object v13, v14

    .line 351
    .end local v14    # "input":Ljava/io/BufferedReader;
    .restart local v13    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v13    # "input":Ljava/io/BufferedReader;
    .restart local v14    # "input":Ljava/io/BufferedReader;
    :catch_3
    move-exception v28

    move-object v13, v14

    .end local v14    # "input":Ljava/io/BufferedReader;
    .restart local v13    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 348
    :catchall_0
    move-exception v28

    :goto_b
    if-eqz v13, :cond_b

    .line 350
    :try_start_e
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 351
    :cond_b
    :goto_c
    throw v28

    .line 372
    .end local v13    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v9    # "file":Ljava/io/File;
    .restart local v12    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .restart local v14    # "input":Ljava/io/BufferedReader;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v24    # "sb":Ljava/lang/StringBuilder;
    .restart local v25    # "split":[Ljava/lang/String;
    :cond_c
    :try_start_f
    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const/16 v30, 0x3

    aget-object v30, v25, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    add-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_5

    .line 418
    .end local v15    # "key":Ljava/lang/String;
    .end local v24    # "sb":Ljava/lang/StringBuilder;
    .end local v25    # "split":[Ljava/lang/String;
    :catchall_1
    move-exception v28

    move-object v13, v14

    .end local v6    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "file":Ljava/io/File;
    .end local v12    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v14    # "input":Ljava/io/BufferedReader;
    .restart local v13    # "input":Ljava/io/BufferedReader;
    :goto_d
    if-eqz v13, :cond_d

    .line 420
    :try_start_10
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 421
    :cond_d
    :goto_e
    throw v28

    .line 375
    .end local v13    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v9    # "file":Ljava/io/File;
    .restart local v12    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .restart local v14    # "input":Ljava/io/BufferedReader;
    .restart local v25    # "split":[Ljava/lang/String;
    :cond_e
    :try_start_11
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 376
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .restart local v24    # "sb":Ljava/lang/StringBuilder;
    const/16 v28, 0x1

    aget-object v28, v25, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x2

    aget-object v29, v25, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 378
    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_f

    .line 379
    new-instance v28, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    const/16 v29, 0x1

    aget-object v29, v25, v29

    const/16 v30, 0x2

    aget-object v30, v25, v30

    const/16 v31, 0x3

    aget-object v31, v25, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v28

    invoke-virtual {v12, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 381
    :cond_f
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    move-wide/from16 v30, v0

    const/16 v29, 0x3

    aget-object v29, v25, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    add-long v30, v30, v32

    move-wide/from16 v0, v30

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    goto/16 :goto_5

    .line 386
    .end local v15    # "key":Ljava/lang/String;
    .end local v24    # "sb":Ljava/lang/StringBuilder;
    .end local v25    # "split":[Ljava/lang/String;
    :cond_10
    const-string v28, "Total bytes currently"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 387
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 388
    .restart local v15    # "key":Ljava/lang/String;
    const-string v28, "_"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 389
    .local v11, "index":I
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v15, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 390
    .local v7, "client":Ljava/lang/String;
    add-int/lit8 v28, v11, 0x1

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 391
    .local v20, "pid":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "iommu : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "%1$16s %2$16s %3$16d"

    const/16 v30, 0x3

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v7, v30, v31

    const/16 v31, 0x1

    aput-object v20, v30, v31

    const/16 v31, 0x2

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 392
    .local v26, "tmp":Ljava/lang/String;
    const-string v28, "MemoryLogUtilAm"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-eqz p0, :cond_11

    .line 394
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 397
    .end local v7    # "client":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "index":I
    .end local v15    # "key":Ljava/lang/String;
    .end local v20    # "pid":Ljava/lang/String;
    .end local v26    # "tmp":Ljava/lang/String;
    :cond_12
    const-string v28, "client          creator"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 398
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "iommu : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "size (hex)"

    const-string v30, "      size"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 399
    .restart local v26    # "tmp":Ljava/lang/String;
    const-string v28, "MemoryLogUtilAm"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    if-eqz p0, :cond_2

    .line 401
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 404
    .end local v26    # "tmp":Ljava/lang/String;
    :cond_13
    const-string v28, "MemoryLogUtilAm"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "iommu : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz p0, :cond_2

    .line 406
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "iommu : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 408
    :cond_14
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_15
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 409
    .restart local v15    # "key":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "iommu : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%1$16s %2$16s %3$14d"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mClient:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v31, v32

    const/16 v32, 0x1

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mCreator:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v31, v32

    const/16 v32, 0x2

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/server/am/MemoryLogUtilAm$IonInfo;->mSize:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 410
    .restart local v26    # "tmp":Ljava/lang/String;
    const-string v28, "MemoryLogUtilAm"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-eqz p0, :cond_15

    .line 412
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_10

    .end local v15    # "key":Ljava/lang/String;
    .end local v26    # "tmp":Ljava/lang/String;
    :cond_16
    move-object v13, v14

    .line 418
    .end local v6    # "allocMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "infoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/MemoryLogUtilAm$IonInfo;>;"
    .end local v14    # "input":Ljava/io/BufferedReader;
    .restart local v13    # "input":Ljava/io/BufferedReader;
    :cond_17
    if-eqz v13, :cond_3

    .line 420
    :try_start_12
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_7

    .line 421
    :catch_4
    move-exception v28

    goto/16 :goto_7

    .line 442
    .end local v13    # "input":Ljava/io/BufferedReader;
    .restart local v14    # "input":Ljava/io/BufferedReader;
    .restart local v22    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v25    # "split":[Ljava/lang/String;
    .restart local v27    # "trim":Ljava/lang/String;
    :cond_18
    const/16 v28, 0x3

    :try_start_13
    aget-object v28, v25, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 443
    .local v18, "memory":J
    new-instance v21, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    const/16 v28, 0x1

    aget-object v28, v25, v28

    const/16 v29, 0x2

    aget-object v29, v25, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;-><init>(Ljava/lang/String;I)V

    .line 444
    .local v21, "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 445
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    add-long v28, v28, v18

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_8

    .line 468
    .end local v18    # "memory":J
    .end local v21    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v25    # "split":[Ljava/lang/String;
    .end local v27    # "trim":Ljava/lang/String;
    :catchall_2
    move-exception v28

    move-object v13, v14

    .end local v9    # "file":Ljava/io/File;
    .end local v14    # "input":Ljava/io/BufferedReader;
    .end local v22    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v13    # "input":Ljava/io/BufferedReader;
    :goto_11
    if-eqz v13, :cond_19

    .line 470
    :try_start_14
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    .line 471
    :cond_19
    :goto_12
    throw v28

    .line 447
    .end local v13    # "input":Ljava/io/BufferedReader;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v14    # "input":Ljava/io/BufferedReader;
    .restart local v18    # "memory":J
    .restart local v21    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .restart local v22    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v25    # "split":[Ljava/lang/String;
    .restart local v27    # "trim":Ljava/lang/String;
    :cond_1a
    :try_start_15
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 450
    .end local v18    # "memory":J
    .end local v21    # "process":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v27    # "trim":Ljava/lang/String;
    :cond_1b
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_1e

    .line 451
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_13
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;

    .line 452
    .local v15, "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    const-string v28, "ion-heaps : %1$16s  %2$15d  %3$15d"

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual {v15}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getProcessName()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-virtual {v15}, Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;->getPid()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 453
    .restart local v26    # "tmp":Ljava/lang/String;
    const-string v28, "MemoryLogUtilAm"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    if-eqz p0, :cond_1c

    .line 455
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 457
    .end local v15    # "key":Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;
    .end local v26    # "tmp":Ljava/lang/String;
    :cond_1d
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->clear()V

    .line 459
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_1e
    const-string v28, "MemoryLogUtilAm"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ion-heaps : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-eqz p0, :cond_4

    .line 461
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ion-heaps : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_8

    .end local v25    # "split":[Ljava/lang/String;
    :cond_1f
    move-object v13, v14

    .line 468
    .end local v14    # "input":Ljava/io/BufferedReader;
    .end local v22    # "processStatusMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/am/MemoryLogUtilAm$ProcessStatus;Ljava/lang/Long;>;"
    .restart local v13    # "input":Ljava/io/BufferedReader;
    :cond_20
    if-eqz v13, :cond_7

    .line 470
    :try_start_16
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5

    goto/16 :goto_a

    .line 471
    :catch_5
    move-exception v28

    goto/16 :goto_a

    .line 351
    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v28

    goto/16 :goto_4

    .end local v8    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v29

    goto/16 :goto_c

    .line 421
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v28

    goto/16 :goto_7

    .end local v8    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v29

    goto/16 :goto_e

    .line 471
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v28

    goto/16 :goto_a

    .end local v8    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v29

    goto/16 :goto_12

    .line 468
    :catchall_3
    move-exception v28

    goto/16 :goto_11

    .line 465
    :catch_c
    move-exception v8

    goto/16 :goto_9

    .line 418
    :catchall_4
    move-exception v28

    goto/16 :goto_d

    .line 415
    :catch_d
    move-exception v8

    goto/16 :goto_6

    .line 348
    .end local v13    # "input":Ljava/io/BufferedReader;
    .restart local v14    # "input":Ljava/io/BufferedReader;
    :catchall_5
    move-exception v28

    move-object v13, v14

    .end local v14    # "input":Ljava/io/BufferedReader;
    .restart local v13    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_b

    .line 345
    :catch_e
    move-exception v8

    goto/16 :goto_3

    .end local v13    # "input":Ljava/io/BufferedReader;
    .restart local v14    # "input":Ljava/io/BufferedReader;
    :cond_21
    move-object v13, v14

    .end local v14    # "input":Ljava/io/BufferedReader;
    .restart local v13    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method static dumpNVAllocationLog()V
    .locals 24

    .prologue
    .line 477
    sget v19, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 544
    .local v4, "NVMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v7, "input":Ljava/io/BufferedReader;
    .local v9, "isFirst":Z
    .local v12, "line":Ljava/lang/String;
    .local v14, "nvmapFile":Ljava/io/File;
    .local v15, "pid":I
    .local v16, "processName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 480
    .end local v4    # "NVMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "input":Ljava/io/BufferedReader;
    .end local v9    # "isFirst":Z
    .end local v12    # "line":Ljava/lang/String;
    .end local v14    # "nvmapFile":Ljava/io/File;
    .end local v15    # "pid":I
    .end local v16    # "processName":Ljava/lang/String;
    :cond_1
    new-instance v14, Ljava/io/File;

    const-string v19, "/sys/kernel/debug/nvmap/iovmm/allocations"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    .restart local v14    # "nvmapFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 482
    .restart local v7    # "input":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 483
    .restart local v12    # "line":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 484
    .restart local v4    # "NVMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v9, 0x1

    .line 485
    .restart local v9    # "isFirst":Z
    const/4 v15, 0x0

    .line 486
    .restart local v15    # "pid":I
    const-string v16, ""

    .line 489
    .restart local v16    # "processName":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 490
    .end local v7    # "input":Ljava/io/BufferedReader;
    .local v8, "input":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 491
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v22, "\\s+"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 492
    .local v17, "strs":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 494
    const/16 v19, 0x2

    aget-object v19, v17, v19

    const-string v22, "PID"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 496
    const/16 v19, 0x0

    aget-object v19, v17, v19

    const-string v22, "total"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 497
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 498
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 499
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 500
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v22, "MemoryLogUtilAm"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LowMemDetail: NVMapInfo, Type: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v23, ", Size: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 539
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v17    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v7, v8

    .line 540
    .end local v8    # "input":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    const-string v19, "MemoryLogUtilAm"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error logging mvmap allocation file "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 542
    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v19

    goto/16 :goto_0

    .line 503
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "input":Ljava/io/BufferedReader;
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v17    # "strs":[Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v19, "MemoryLogUtilAm"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LowMemDetail: NVMapInfo, Total: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x2

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 542
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v17    # "strs":[Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_b

    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v7, v8

    .end local v8    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 506
    .end local v7    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "strs":[Ljava/lang/String;
    :cond_5
    const/16 v19, 0x0

    :try_start_6
    aget-object v19, v17, v19

    const-string v22, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 507
    if-nez v9, :cond_7

    .line 508
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 509
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 510
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 511
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v22, "MemoryLogUtilAm"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LowMemDetail: NVMapInfo, Type: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v23, ", Size: "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 542
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v17    # "strs":[Ljava/lang/String;
    :catchall_0
    move-exception v19

    move-object v7, v8

    .end local v8    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    :goto_5
    if-eqz v7, :cond_6

    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_6
    throw v19

    .line 514
    .end local v7    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "input":Ljava/io/BufferedReader;
    .restart local v17    # "strs":[Ljava/lang/String;
    :cond_7
    :try_start_8
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 515
    const/16 v19, 0x1

    aget-object v16, v17, v19

    .line 516
    const/16 v19, 0x2

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 517
    const/16 v19, 0x3

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 518
    .local v20, "value":I
    const-string v19, "MemoryLogUtilAm"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LowMemDetail: NVMapInfo, processName: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", pid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", total: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v9, 0x0

    .line 520
    goto/16 :goto_1

    .line 521
    .end local v20    # "value":I
    :cond_8
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 523
    .local v20, "value":J
    const-string v18, ""

    .line 524
    .local v18, "typeKey":Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v19, v17, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v11

    .line 525
    .local v11, "length":I
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ge v11, v0, :cond_9

    .line 526
    const-string v18, "0"

    .line 531
    :goto_7
    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 532
    .local v13, "mapValue":Ljava/lang/Long;
    if-nez v13, :cond_a

    .line 533
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 528
    .end local v13    # "mapValue":Ljava/lang/Long;
    :cond_9
    const/16 v19, 0x2

    aget-object v19, v17, v19

    const/16 v22, 0x0

    add-int/lit8 v23, v11, -0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_7

    .line 535
    .restart local v13    # "mapValue":Ljava/lang/Long;
    :cond_a
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v22, v22, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 542
    .end local v11    # "length":I
    .end local v13    # "mapValue":Ljava/lang/Long;
    .end local v17    # "strs":[Ljava/lang/String;
    .end local v18    # "typeKey":Ljava/lang/String;
    .end local v20    # "value":J
    :catch_2
    move-exception v19

    move-object v7, v8

    .end local v8    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_0

    :catch_3
    move-exception v22

    goto/16 :goto_6

    :catchall_1
    move-exception v19

    goto/16 :goto_5

    .line 539
    :catch_4
    move-exception v5

    goto/16 :goto_3

    .end local v7    # "input":Ljava/io/BufferedReader;
    .restart local v8    # "input":Ljava/io/BufferedReader;
    :cond_b
    move-object v7, v8

    .end local v8    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_0
.end method

.method public static final native dumpProcessStats(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public static final native getDetailRegionMemory(ILjava/lang/String;)[I
.end method

.method private static getFreeCma()J
    .locals 2

    .prologue
    .line 312
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sFreeCma:J

    return-wide v0
.end method

.method private static getIONInUse()J
    .locals 2

    .prologue
    .line 308
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sIONInUse:J

    return-wide v0
.end method

.method private static getIONToal()J
    .locals 2

    .prologue
    .line 304
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sIONTotal:J

    return-wide v0
.end method

.method private static getKGSLAlloc()J
    .locals 2

    .prologue
    .line 300
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sKGSLAlloc:J

    return-wide v0
.end method

.method private static getKernelStack()J
    .locals 2

    .prologue
    .line 292
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    return-wide v0
.end method

.method private static getPageTable()J
    .locals 2

    .prologue
    .line 296
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    return-wide v0
.end method

.method public static final native getRegionMemory(ILjava/lang/String;)J
.end method

.method private static getSwapFree()J
    .locals 2

    .prologue
    .line 320
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    return-wide v0
.end method

.method private static getSwapTotal()J
    .locals 2

    .prologue
    .line 316
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    return-wide v0
.end method

.method private static getValue(Ljava/lang/String;)J
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 285
    const-string v1, "\\s+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "split":[Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 287
    .local v2, "value":J
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 288
    return-wide v2
.end method

.method private static getZramInUse()J
    .locals 2

    .prologue
    .line 324
    sget-wide v0, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    return-wide v0
.end method

.method static init()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/debug/nvmap/iovmm/clients"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const/4 v1, 0x1

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    .line 58
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/system/lib/libbrcm_ril.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    const/4 v1, 0x3

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x2

    sput v1, Lcom/android/server/am/MemoryLogUtilAm;->mPlatform:I

    goto :goto_0
.end method

.method private static readExtraMemInfo()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 212
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    .line 213
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    .line 214
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sKGSLAlloc:J

    .line 215
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sIONTotal:J

    .line 216
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sIONInUse:J

    .line 217
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sFreeCma:J

    .line 218
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    .line 219
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    .line 220
    sput-wide v8, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    .line 222
    const/4 v2, 0x0

    .line 224
    .local v2, "count":I
    const/4 v0, 0x0

    .line 226
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/meminfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_c

    const/16 v5, 0x9

    if-ge v2, v5, :cond_c

    .line 228
    const-string v5, "KernelStack:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sKernelStack:J

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_1
    const-string v5, "PageTables:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sPageTables:J

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kgslalloc:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kgsl_alloc:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 235
    :cond_3
    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sKGSLAlloc:J

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_4
    const-string v5, "IonTotal:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "ION_ALLOC:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 238
    :cond_5
    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sIONTotal:J

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ioninuse:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 241
    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sIONInUse:J

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_7
    const-string v5, "FreeCma:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "CmaFree:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 244
    :cond_8
    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sFreeCma:J

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 246
    :cond_9
    const-string v5, "SwapTotal:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 247
    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sSwapTotal:J

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 249
    :cond_a
    const-string v5, "SwapFree:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 250
    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sSwapFree:J

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 252
    :cond_b
    const-string v5, "ZramAlloc:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    invoke-static {v4}, Lcom/android/server/am/MemoryLogUtilAm;->getValue(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 259
    :cond_c
    if-eqz v1, :cond_13

    .line 261
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 265
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_d
    :goto_1
    sget-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_e

    .line 267
    :try_start_3
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/block/zram0/mem_used_total"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 269
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "line":Ljava/lang/String;
    if-eqz v4, :cond_10

    .line 271
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    sput-wide v6, Lcom/android/server/am/MemoryLogUtilAm;->sZramInUse:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 274
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 276
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_e

    .line 278
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 282
    :cond_e
    :goto_4
    return-void

    .line 262
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 257
    .end local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 259
    :goto_5
    if-eqz v0, :cond_d

    .line 261
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 262
    :catch_3
    move-exception v5

    goto :goto_1

    .line 259
    :catchall_0
    move-exception v5

    :goto_6
    if-eqz v0, :cond_f

    .line 261
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 262
    :cond_f
    :goto_7
    throw v5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_10
    move-object v0, v1

    .line 276
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_11
    if-eqz v0, :cond_e

    .line 278
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    .line 279
    :catch_4
    move-exception v5

    goto :goto_4

    .line 276
    .end local v3    # "file":Ljava/io/File;
    :catchall_1
    move-exception v5

    :goto_8
    if-eqz v0, :cond_12

    .line 278
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 279
    :cond_12
    :goto_9
    throw v5

    .line 262
    :catch_5
    move-exception v6

    goto :goto_7

    .line 279
    :catch_6
    move-exception v5

    goto :goto_4

    :catch_7
    move-exception v6

    goto :goto_9

    .line 276
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_8

    .line 274
    .end local v3    # "file":Ljava/io/File;
    :catch_8
    move-exception v5

    goto :goto_3

    .line 259
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 257
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_9
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_13
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method
