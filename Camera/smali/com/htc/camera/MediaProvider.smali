.class public final Lcom/htc/camera/MediaProvider;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# static fields
.field public static mediaInsertedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mediaUpdatedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static getBucketID(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method static initialize()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/htc/camera/event/Event;

    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v1

    const-string v2, "MediaProvider.MediaInserted"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/MediaProvider;->mediaInsertedEvent:Lcom/htc/camera/event/Event;

    .line 47
    new-instance v0, Lcom/htc/camera/event/Event;

    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v1

    const-string v2, "MediaProvider.MediaUpdated"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/MediaProvider;->mediaUpdatedEvent:Lcom/htc/camera/event/Event;

    .line 48
    return-void
.end method

.method public static insertImage(Landroid/content/Context;Lcom/htc/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/imaging/Size;Landroid/location/Location;JILandroid/content/ContentValues;Lcom/htc/camera/io/FileFormat;)Landroid/net/Uri;
    .locals 10

    .prologue
    .line 65
    const-string v1, "MediaProvider(Camera)"

    const-string v2, "insertImage() - start"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-nez p0, :cond_1

    .line 70
    const-string v1, "context"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x0

    .line 158
    :cond_0
    :goto_0
    return-object v1

    .line 73
    :cond_1
    if-nez p1, :cond_2

    .line 75
    const-string v1, "storageSlot"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    goto :goto_0

    .line 78
    :cond_2
    if-nez p2, :cond_3

    .line 80
    const-string v1, "directoryName"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x0

    goto :goto_0

    .line 83
    :cond_3
    if-nez p3, :cond_4

    .line 85
    const-string v1, "fileName"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {p2, p3}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    move-wide v3, v1

    .line 102
    :goto_1
    const/4 v5, 0x0

    .line 106
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 107
    if-eqz p9, :cond_b

    .line 109
    invoke-virtual/range {p9 .. p9}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    instance-of v9, v2, Ljava/lang/Integer;

    if-eqz v9, :cond_6

    .line 113
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 155
    :catch_0
    move-exception v1

    move-object v2, v5

    .line 157
    :goto_3
    :try_start_1
    const-string v3, "MediaProvider(Camera)"

    const-string v4, "insertImage() - failed"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    const/4 v1, 0x0

    .line 161
    if-eqz v2, :cond_0

    .line 162
    :goto_4
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 97
    :cond_5
    const-string v1, "MediaProvider(Camera)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertImage() - File \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-wide/16 v1, 0x0

    move-wide v3, v1

    goto :goto_1

    .line 114
    :cond_6
    :try_start_2
    instance-of v9, v2, Ljava/lang/Long;

    if-eqz v9, :cond_8

    .line 115
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 161
    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v5, :cond_7

    .line 162
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z

    .line 161
    :cond_7
    throw v1

    .line 116
    :cond_8
    :try_start_3
    instance-of v9, v2, Ljava/lang/Double;

    if-eqz v9, :cond_9

    .line 117
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_2

    .line 118
    :cond_9
    instance-of v9, v2, Ljava/lang/Boolean;

    if-eqz v9, :cond_a

    .line 119
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 121
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 124
    :cond_b
    invoke-static {p3}, Lcom/htc/camera/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    const-string v2, "title"

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "_display_name"

    invoke-virtual {v7, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "description"

    const-string v2, ""

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "datetaken"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    const-string v1, "orientation"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v1, "bucket_id"

    invoke-static {p2}, Lcom/htc/camera/MediaProvider;->getBucketID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v1, "bucket_display_name"

    invoke-static {p2}, Lcom/htc/camera/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "_data"

    invoke-virtual {v7, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "_size"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string v1, "mime_type"

    move-object/from16 v0, p10

    iget-object v2, v0, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eqz p5, :cond_c

    .line 137
    const-string v1, "latitude"

    invoke-virtual {p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 138
    const-string v1, "longitude"

    invoke-virtual {p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 140
    :cond_c
    if-eqz p4, :cond_d

    .line 142
    const-string v1, "width"

    iget v2, p4, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v1, "height"

    iget v2, p4, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    :cond_d
    const-string v1, "MediaProvider(Camera)"

    const-string v2, "insertImage() - Path = \'"

    const-string v3, "\'"

    invoke-static {v1, v2, v6, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    const-string v1, "MediaProvider(Camera)"

    const-string v2, "insertImage() - ContentResolver.insert()"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/io/StorageSlot;->imageContentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 150
    :try_start_4
    iget-object v1, p1, Lcom/htc/camera/io/StorageSlot;->imageContentUri:Landroid/net/Uri;

    invoke-virtual {v2, v1, v7}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 151
    invoke-static {v1}, Lcom/htc/camera/MediaProvider;->raiseMediaInsertedEvent(Landroid/net/Uri;)V

    .line 152
    const-string v3, "MediaProvider(Camera)"

    const-string v4, "insertImage() - end"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 161
    if-eqz v2, :cond_0

    goto/16 :goto_4

    :catchall_1
    move-exception v1

    move-object v5, v2

    goto/16 :goto_5

    .line 155
    :catch_1
    move-exception v1

    goto/16 :goto_3
.end method

.method public static insertVideo(Landroid/content/Context;Lcom/htc/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Lcom/htc/camera/io/FileFormat;JJLandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    .prologue
    .line 180
    const-string v1, "MediaProvider(Camera)"

    const-string v2, "insertVideo() - start"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-nez p0, :cond_1

    .line 185
    const-string v1, "context"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    .line 266
    :cond_0
    :goto_0
    return-object v1

    .line 188
    :cond_1
    if-nez p1, :cond_2

    .line 190
    const-string v1, "storageSlot"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x0

    goto :goto_0

    .line 193
    :cond_2
    if-nez p2, :cond_3

    .line 195
    const-string v1, "directoryPath"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 196
    const/4 v1, 0x0

    goto :goto_0

    .line 198
    :cond_3
    if-nez p3, :cond_4

    .line 200
    const-string v1, "fileName"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x0

    goto :goto_0

    .line 205
    :cond_4
    const/4 v3, 0x0

    .line 209
    :try_start_0
    invoke-static {p2, p3}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 213
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    move-wide v4, v1

    .line 222
    :goto_1
    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-direct {v7, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 223
    if-eqz p10, :cond_a

    .line 225
    invoke-virtual/range {p10 .. p10}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    move-object/from16 v0, p10

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 228
    instance-of v9, v2, Ljava/lang/Integer;

    if-eqz v9, :cond_5

    .line 229
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 263
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 265
    :goto_3
    :try_start_3
    const-string v3, "MediaProvider(Camera)"

    const-string v4, "insertVideo() - failed"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 266
    const/4 v1, 0x0

    .line 269
    if-eqz v2, :cond_0

    .line 270
    :goto_4
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 215
    :catch_1
    move-exception v1

    .line 217
    :try_start_4
    const-string v2, "MediaProvider(Camera)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertVideo() - Cannot get file size for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    const-wide/16 v1, 0x0

    move-wide v4, v1

    goto :goto_1

    .line 230
    :cond_5
    instance-of v9, v2, Ljava/lang/Long;

    if-eqz v9, :cond_7

    .line 231
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 269
    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v3, :cond_6

    .line 270
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 269
    :cond_6
    throw v1

    .line 232
    :cond_7
    :try_start_5
    instance-of v9, v2, Ljava/lang/Double;

    if-eqz v9, :cond_8

    .line 233
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_2

    .line 234
    :cond_8
    instance-of v9, v2, Ljava/lang/Boolean;

    if-eqz v9, :cond_9

    .line 235
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 237
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 240
    :cond_a
    invoke-static {p3}, Lcom/htc/camera/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    const-string v2, "_data"

    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v2, "title"

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v2, "_display_name"

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "description"

    const-string v2, ""

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "datetaken"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 246
    const-string v1, "mime_type"

    iget-object v2, p5, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "duration"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    const-string v1, "_size"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    if-eqz p4, :cond_b

    .line 251
    const-string v1, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 252
    const-string v1, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 256
    :cond_b
    const-string v1, "MediaProvider(Camera)"

    const-string v2, "insertVideo() - ContentResolver.insert()"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/io/StorageSlot;->videoContentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 258
    :try_start_6
    iget-object v1, p1, Lcom/htc/camera/io/StorageSlot;->videoContentUri:Landroid/net/Uri;

    invoke-virtual {v2, v1, v7}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 259
    invoke-static {v1}, Lcom/htc/camera/MediaProvider;->raiseMediaInsertedEvent(Landroid/net/Uri;)V

    .line 260
    const-string v3, "MediaProvider(Camera)"

    const-string v4, "insertVideo() - end"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 269
    if-eqz v2, :cond_0

    goto/16 :goto_4

    :catchall_1
    move-exception v1

    move-object v3, v2

    goto/16 :goto_5

    .line 263
    :catch_2
    move-exception v1

    goto/16 :goto_3
.end method

.method private static raiseMediaInsertedEvent(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 279
    if-nez p0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    new-instance v1, Lcom/htc/camera/MediaProvider$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/MediaProvider$1;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 294
    :cond_1
    sget-object v0, Lcom/htc/camera/MediaProvider;->mediaInsertedEvent:Lcom/htc/camera/event/Event;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {v2, p0}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0
.end method

.method private static raiseMediaUpdatedEvent(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 302
    if-nez p0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    new-instance v1, Lcom/htc/camera/MediaProvider$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/MediaProvider$2;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 317
    :cond_1
    sget-object v0, Lcom/htc/camera/MediaProvider;->mediaUpdatedEvent:Lcom/htc/camera/event/Event;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/OneValueEventArgs;

    invoke-direct {v2, p0}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_0
.end method

.method public static updateImageFilePath(Landroid/content/Context;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/Path;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 328
    const-string v0, "MediaProvider(Camera)"

    const-string v1, "updateImageFilePath() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    if-nez p0, :cond_0

    .line 333
    const-string v0, "context"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    move v0, v6

    .line 405
    :goto_0
    return v0

    .line 336
    :cond_0
    if-nez p1, :cond_1

    .line 338
    const-string v0, "oldFilePath"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    move v0, v6

    .line 339
    goto :goto_0

    .line 341
    :cond_1
    if-nez p2, :cond_2

    .line 343
    const-string v0, "newFilePath"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    move v0, v6

    .line 344
    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {p1, p2}, Lcom/htc/camera/io/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    const-string v0, "MediaProvider(Camera)"

    const-string v1, "updateImageFilePath() - Same file paths"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 349
    goto :goto_0

    .line 353
    :cond_3
    const-string v0, "MediaProvider(Camera)"

    const-string v1, "updateImageFilePath() - Change file path from \'"

    const-string v3, "\' to \'"

    const-string v5, "\'"

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 354
    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getStorageSlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v0

    .line 355
    invoke-virtual {p2}, Lcom/htc/camera/io/Path;->getStorageSlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v1

    .line 356
    if-nez v0, :cond_4

    .line 358
    const-string v0, "MediaProvider(Camera)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImageFilePath() - Unknown storage slot for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 359
    goto :goto_0

    .line 361
    :cond_4
    if-nez v1, :cond_5

    .line 363
    const-string v0, "MediaProvider(Camera)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImageFilePath() - Unknown storage slot for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 364
    goto :goto_0

    .line 366
    :cond_5
    iget-object v0, v0, Lcom/htc/camera/io/StorageSlot;->imageContentUri:Landroid/net/Uri;

    .line 367
    iget-object v1, v1, Lcom/htc/camera/io/StorageSlot;->imageContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 369
    const-string v0, "MediaProvider(Camera)"

    const-string v1, "updateImageFilePath() - Base content URIs are not constsient"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 370
    goto/16 :goto_0

    .line 374
    :cond_6
    const/4 v1, 0x0

    .line 377
    :try_start_0
    iget-object v2, p2, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/camera/io/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 379
    const-string v4, "_data"

    invoke-virtual {p2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v4, "title"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v2, "_display_name"

    iget-object v4, p2, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v2, "bucket_id"

    iget-object v4, p2, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/camera/MediaProvider;->getBucketID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    const-string v2, "bucket_display_name"

    iget-object v4, p2, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/camera/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 385
    const-string v2, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 386
    if-eq v0, v7, :cond_a

    .line 388
    const-string v2, "MediaProvider(Camera)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImageFilePath() - Fail to update file path, result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    if-eqz v1, :cond_7

    .line 400
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_7
    move v0, v6

    .line 389
    goto/16 :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 394
    :try_start_1
    const-string v2, "MediaProvider(Camera)"

    const-string v3, "updateImageFilePath() - Fail to update media store"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    if-eqz v1, :cond_8

    .line 400
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_8
    move v0, v6

    .line 395
    goto/16 :goto_0

    .line 399
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_9

    .line 400
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 399
    :cond_9
    throw v0

    :cond_a
    if-eqz v1, :cond_b

    .line 400
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 404
    :cond_b
    const-string v0, "MediaProvider(Camera)"

    const-string v1, "updateImageFilePath() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 405
    goto/16 :goto_0
.end method

.method public static updateVideo(Landroid/content/Context;Landroid/net/Uri;Lcom/htc/camera/io/Path;Landroid/location/Location;Lcom/htc/camera/io/FileFormat;JJLandroid/content/ContentValues;)I
    .locals 10

    .prologue
    .line 421
    const-string v1, "MediaProvider(Camera)"

    const-string v2, "updateVideo() - start"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    if-nez p0, :cond_1

    .line 426
    const-string v1, "context"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 427
    const/4 v1, 0x0

    .line 499
    :cond_0
    :goto_0
    return v1

    .line 429
    :cond_1
    if-nez p1, :cond_2

    .line 431
    const-string v1, "storageSlot"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 432
    const/4 v1, 0x0

    goto :goto_0

    .line 434
    :cond_2
    if-nez p2, :cond_3

    .line 436
    const-string v1, "filePath"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 437
    const/4 v1, 0x0

    goto :goto_0

    .line 441
    :cond_3
    const/4 v3, 0x0

    .line 445
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 449
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    move-wide v4, v1

    .line 458
    :goto_1
    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-direct {v7, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 459
    if-eqz p9, :cond_9

    .line 461
    invoke-virtual/range {p9 .. p9}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 463
    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 464
    instance-of v9, v2, Ljava/lang/Integer;

    if-eqz v9, :cond_4

    .line 465
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 496
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 498
    :goto_3
    :try_start_3
    const-string v3, "MediaProvider(Camera)"

    const-string v4, "updateVideo() - failed"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 499
    const/4 v1, 0x0

    .line 502
    if-eqz v2, :cond_0

    .line 503
    :goto_4
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 451
    :catch_1
    move-exception v1

    .line 453
    :try_start_4
    const-string v2, "MediaProvider(Camera)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertVideo() - Cannot get file size for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    const-wide/16 v1, 0x0

    move-wide v4, v1

    goto :goto_1

    .line 466
    :cond_4
    instance-of v9, v2, Ljava/lang/Long;

    if-eqz v9, :cond_6

    .line 467
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 502
    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v3, :cond_5

    .line 503
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 502
    :cond_5
    throw v1

    .line 468
    :cond_6
    :try_start_5
    instance-of v9, v2, Ljava/lang/Double;

    if-eqz v9, :cond_7

    .line 469
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_2

    .line 470
    :cond_7
    instance-of v9, v2, Ljava/lang/Boolean;

    if-eqz v9, :cond_8

    .line 471
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 473
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 476
    :cond_9
    const-string v1, "_data"

    invoke-virtual {v7, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v1, "datetaken"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 478
    const-string v1, "mime_type"

    iget-object v2, p4, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v1, "duration"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 480
    const-string v1, "_size"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 481
    if-eqz p3, :cond_a

    .line 483
    const-string v1, "latitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 484
    const-string v1, "longitude"

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 488
    :cond_a
    const-string v1, "MediaProvider(Camera)"

    const-string v2, "updateVideo() - ContentResolver.update()"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 490
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {v2, p1, v7, v1, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 491
    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    .line 492
    invoke-static {p1}, Lcom/htc/camera/MediaProvider;->raiseMediaUpdatedEvent(Landroid/net/Uri;)V

    .line 493
    :cond_b
    const-string v3, "MediaProvider(Camera)"

    const-string v4, "updateVideo() - end"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 502
    if-eqz v2, :cond_0

    goto/16 :goto_4

    :catchall_1
    move-exception v1

    move-object v3, v2

    goto/16 :goto_5

    .line 496
    :catch_2
    move-exception v1

    goto/16 :goto_3
.end method
