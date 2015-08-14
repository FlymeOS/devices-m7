.class public Lcom/android/nfc/handover/HandoverSendFileInfo;
.super Ljava/lang/Object;
.source "HandoverSendFileInfo.java"


# static fields
.field public static final CONTENT_SCHEME:Ljava/lang/String; = "content"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HandoverSendFileInfo"


# instance fields
.field public final mFileName:Ljava/lang/String;

.field public final mInputStream:Ljava/io/FileInputStream;

.field public final mLength:J

.field public final mMimetype:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "length"    # J
    .param p5, "inputStream"    # Ljava/io/FileInputStream;
    .param p6, "status"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverSendFileInfo;->mFileName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 57
    iput-wide p3, p0, Lcom/android/nfc/handover/HandoverSendFileInfo;->mLength:J

    .line 58
    iput-object p5, p0, Lcom/android/nfc/handover/HandoverSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 59
    iput p6, p0, Lcom/android/nfc/handover/HandoverSendFileInfo;->mStatus:I

    .line 60
    return-void
.end method

.method public static generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/nfc/handover/HandoverSendFileInfo;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 65
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 66
    .local v18, "scheme":Ljava/lang/String;
    const/4 v14, 0x0

    .line 68
    .local v14, "fileName":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 72
    .local v16, "length":J
    const-string v3, "content"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 73
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 76
    .local v10, "contentType":Ljava/lang/String;
    const/4 v3, 0x2

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v9, "_display_name"

    aput-object v9, v4, v3

    const/4 v3, 0x1

    const-string v9, "_size"

    aput-object v9, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 83
    .local v15, "metadataCursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v15, :cond_8

    .line 85
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 86
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 87
    .end local v14    # "fileName":Ljava/lang/String;
    .local v4, "fileName":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_2
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    int-to-long v6, v3

    .line 88
    .end local v16    # "length":J
    .local v6, "length":J
    :try_start_3
    const-string v3, "HandoverSendFileInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fileName = "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v19, " length = "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 91
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 94
    :goto_2
    if-nez v4, :cond_0

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object v5, v10

    .line 108
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v15    # "metadataCursor":Landroid/database/Cursor;
    .local v5, "contentType":Ljava/lang/String;
    :goto_3
    const/4 v8, 0x0

    .line 109
    .local v8, "is":Ljava/io/FileInputStream;
    const-string v3, "content"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    :try_start_4
    const-string v3, "r"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v13

    .line 115
    .local v13, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v13}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v20

    .line 116
    .local v20, "statLength":J
    cmp-long v3, v6, v20

    if-eqz v3, :cond_1

    const-wide/16 v22, 0x0

    cmp-long v3, v20, v22

    if-lez v3, :cond_1

    .line 117
    const-string v3, "HandoverSendFileInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Content provider length is wrong ("

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v19, "), using stat length ("

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v19, ")"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    .line 119
    move-wide/from16 v6, v20

    .line 125
    :cond_1
    :try_start_5
    invoke-virtual {v13}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v8

    .line 138
    .end local v13    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v20    # "statLength":J
    :cond_2
    :goto_4
    if-nez v8, :cond_3

    .line 140
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .end local v8    # "is":Ljava/io/FileInputStream;
    check-cast v8, Ljava/io/FileInputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    .line 147
    .restart local v8    # "is":Ljava/io/FileInputStream;
    :cond_3
    const-wide/16 v22, 0x0

    cmp-long v3, v6, v22

    if-nez v3, :cond_4

    .line 149
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v3

    int-to-long v6, v3

    .line 150
    const-string v3, "HandoverSendFileInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "file length is "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 157
    :cond_4
    new-instance v3, Lcom/android/nfc/handover/HandoverSendFileInfo;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/nfc/handover/HandoverSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V

    .end local v5    # "contentType":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/FileInputStream;
    :goto_5
    return-object v3

    .line 79
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "length":J
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v14    # "fileName":Ljava/lang/String;
    .restart local v16    # "length":J
    :catch_0
    move-exception v11

    .line 81
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v15, 0x0

    .restart local v15    # "metadataCursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 91
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    move-wide/from16 v6, v16

    .end local v16    # "length":J
    .restart local v6    # "length":J
    move-object v4, v14

    .end local v14    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    :goto_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    .line 98
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "length":J
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v15    # "metadataCursor":Landroid/database/Cursor;
    .restart local v14    # "fileName":Ljava/lang/String;
    .restart local v16    # "length":J
    :cond_5
    const-string v3, "file"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 100
    .end local v14    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    move-object/from16 v5, p2

    .line 101
    .restart local v5    # "contentType":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v12, "f":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 103
    .end local v16    # "length":J
    .restart local v6    # "length":J
    goto/16 :goto_3

    .line 105
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "length":J
    .end local v12    # "f":Ljava/io/File;
    .restart local v14    # "fileName":Ljava/lang/String;
    .restart local v16    # "length":J
    :cond_6
    const/4 v3, 0x0

    move-wide/from16 v6, v16

    .end local v16    # "length":J
    .restart local v6    # "length":J
    move-object v4, v14

    .end local v14    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    goto :goto_5

    .line 126
    .restart local v5    # "contentType":Ljava/lang/String;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    .restart local v13    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v20    # "statLength":J
    :catch_1
    move-exception v11

    .line 128
    .local v11, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v13}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 129
    :catch_2
    move-exception v3

    goto :goto_4

    .line 141
    .end local v8    # "is":Ljava/io/FileInputStream;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v20    # "statLength":J
    :catch_3
    move-exception v11

    .line 142
    .local v11, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    goto :goto_5

    .line 151
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v11

    .line 152
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "HandoverSendFileInfo"

    const-string v9, "Read stream exception: "

    invoke-static {v3, v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    const/4 v3, 0x0

    goto :goto_5

    .line 133
    .end local v11    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    goto :goto_4

    .line 91
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "length":J
    .end local v8    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v15    # "metadataCursor":Landroid/database/Cursor;
    .restart local v16    # "length":J
    :catchall_1
    move-exception v3

    move-wide/from16 v6, v16

    .end local v16    # "length":J
    .restart local v6    # "length":J
    goto :goto_6

    :catchall_2
    move-exception v3

    goto :goto_6

    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "length":J
    .restart local v14    # "fileName":Ljava/lang/String;
    .restart local v16    # "length":J
    :cond_7
    move-wide/from16 v6, v16

    .end local v16    # "length":J
    .restart local v6    # "length":J
    move-object v4, v14

    .end local v14    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    goto/16 :goto_1

    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "length":J
    .restart local v14    # "fileName":Ljava/lang/String;
    .restart local v16    # "length":J
    :cond_8
    move-wide/from16 v6, v16

    .end local v16    # "length":J
    .restart local v6    # "length":J
    move-object v4, v14

    .end local v14    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    goto/16 :goto_2
.end method
