.class public Landroid/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private final mEmulatedDirForDirect:Ljava/io/File;

.field private final mExternalDirsForApp:[Ljava/io/File;

.field private final mExternalDirsForVold:[Ljava/io/File;

.field private final mPhoneStorage:Ljava/io/File;

.field private final mPhoneStorageAndroidData:Ljava/io/File;

.field private final mPhoneStorageAndroidMedia:Ljava/io/File;

.field private final mPhoneStorageAndroidObb:Ljava/io/File;

.field private final mRemovableDirs:[Ljava/io/File;

.field private final mRemovableStorage:Ljava/io/File;

.field private final mRemovableStorageAndroidData:Ljava/io/File;

.field private final mRemovableStorageAndroidMedia:Ljava/io/File;

.field private final mRemovableStorageAndroidObb:Ljava/io/File;


# direct methods
.method public constructor <init>(I)V
    .locals 24
    .param p1, "userId"    # I

    .prologue
    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const-string v20, "EXTERNAL_STORAGE"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, "rawExternalStorage":Ljava/lang/String;
    const-string v20, "EMULATED_STORAGE_SOURCE"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 174
    .local v10, "rawEmulatedSource":Ljava/lang/String;
    const-string v20, "EMULATED_STORAGE_TARGET"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 176
    .local v11, "rawEmulatedTarget":Ljava/lang/String;
    const-string v20, "MEDIA_STORAGE"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, "rawMediaStorage":Ljava/lang/String;
    const-string v20, "PHONE_STORAGE"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 181
    .local v14, "rawPhoneStorage":Ljava/lang/String;
    const-string v20, "EXTERNAL_STORAGE2"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 184
    .local v15, "rawRemovableStorage":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 185
    const-string v13, "/data/media"

    .line 188
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 189
    .local v6, "externalForVold":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 190
    .local v5, "externalForApp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 192
    .local v18, "removableDirs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 195
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 196
    .local v17, "rawUserId":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v3, "emulatedSourceBase":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v4, "emulatedTargetBase":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v9, "mediaBase":Ljava/io/File;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    .line 221
    .end local v3    # "emulatedSourceBase":Ljava/io/File;
    .end local v4    # "emulatedTargetBase":Ljava/io/File;
    .end local v9    # "mediaBase":Ljava/io/File;
    .end local v17    # "rawUserId":Ljava/lang/String;
    :goto_0
    const-string v20, "SECONDARY_STORAGE"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 222
    .local v16, "rawSecondaryStorage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment$UserEnvironment;->isDynamicSwitchSupported()Z

    move-result v20

    if-nez v20, :cond_3

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    if-nez p1, :cond_3

    .line 224
    const-string v20, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v19, v2, v7

    .line 225
    .local v19, "secondaryPath":Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 208
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v16    # "rawSecondaryStorage":Ljava/lang/String;
    .end local v19    # "secondaryPath":Ljava/lang/String;
    :cond_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 209
    const-string v20, "Environment"

    const-string v21, "EXTERNAL_STORAGE undefined; falling back to default"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v12, "/storage/sdcard0"

    .line 214
    :cond_2
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    goto :goto_0

    .line 231
    .restart local v16    # "rawSecondaryStorage":Ljava/lang/String;
    :cond_3
    const-string v20, "ro.storage_structure"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_6

    .line 232
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 233
    const-string v20, "Environment"

    const-string v21, "PHONE_STORAGE undefined; falling back to default"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v14, "/storage/emmc"

    .line 239
    :cond_4
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mPhoneStorage:Ljava/io/File;

    .line 246
    :goto_2
    const-string v20, "ro.storage_structure"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_7

    .line 247
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 248
    const-string v20, "Environment"

    const-string v21, "EXTERNAL_STORAGE2 for removable storage undefined; falling back to default"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v15, "/storage/ext_sd"

    .line 252
    :cond_5
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mRemovableStorage:Ljava/io/File;

    .line 259
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/Environment$UserEnvironment;->mPhoneStorage:Ljava/io/File;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "Android"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "obb"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mPhoneStorageAndroidObb:Ljava/io/File;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/Environment$UserEnvironment;->mPhoneStorage:Ljava/io/File;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "Android"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "data"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mPhoneStorageAndroidData:Ljava/io/File;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/Environment$UserEnvironment;->mPhoneStorage:Ljava/io/File;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "Android"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "media"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mPhoneStorageAndroidMedia:Ljava/io/File;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/Environment$UserEnvironment;->mRemovableStorage:Ljava/io/File;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "Android"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "obb"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mRemovableStorageAndroidObb:Ljava/io/File;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/Environment$UserEnvironment;->mRemovableStorage:Ljava/io/File;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "Android"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "data"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mRemovableStorageAndroidData:Ljava/io/File;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/Environment$UserEnvironment;->mRemovableStorage:Ljava/io/File;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "Android"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "media"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mRemovableStorageAndroidMedia:Ljava/io/File;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/Environment$UserEnvironment;->mRemovableStorage:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    .line 269
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    .line 272
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    .line 274
    return-void

    .line 241
    :cond_6
    new-instance v20, Ljava/io/File;

    const-string v21, "/storage/emmc"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mPhoneStorage:Ljava/io/File;

    goto/16 :goto_2

    .line 254
    :cond_7
    new-instance v20, Ljava/io/File;

    const-string v21, "/storage/ext_sd"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/Environment$UserEnvironment;->mRemovableStorage:Ljava/io/File;

    goto/16 :goto_3
.end method

.method private static getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 522
    # getter for: Landroid/os/Environment;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;
    invoke-static {}, Landroid/os/Environment;->access$000()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 523
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    # setter for: Landroid/os/Environment;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;
    invoke-static {v0}, Landroid/os/Environment;->access$002(Lcom/htc/customization/HtcCustomizationManager;)Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    # getter for: Landroid/os/Environment;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;
    invoke-static {}, Landroid/os/Environment;->access$000()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v1}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    .line 528
    :goto_0
    return-object v0

    .line 526
    :cond_0
    # getter for: Landroid/os/Environment;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;
    invoke-static {}, Landroid/os/Environment;->access$100()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0

    .line 528
    :cond_1
    # getter for: Landroid/os/Environment;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;
    invoke-static {}, Landroid/os/Environment;->access$000()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v1}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0
.end method

.method private static isDynamicSwitchSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 534
    # getter for: Landroid/os/Environment;->HTC_CUSTOMIZATION_NAME_KERNEL:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment$UserEnvironment;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    # setter for: Landroid/os/Environment;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;
    invoke-static {v1}, Landroid/os/Environment;->access$102(Lcom/htc/customization/HtcCustomizationReader;)Lcom/htc/customization/HtcCustomizationReader;

    .line 535
    # getter for: Landroid/os/Environment;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;
    invoke-static {}, Landroid/os/Environment;->access$100()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 536
    # getter for: Landroid/os/Environment;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;
    invoke-static {}, Landroid/os/Environment;->access$100()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    # getter for: Landroid/os/Environment;->HTC_CUSTOMIZATION_KEY_SUPPORT_DYNAMIC_SWITCH:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 538
    :cond_0
    return v0
.end method


# virtual methods
.method public buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 334
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "data"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "data"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public buildExternalStorageAndroidObbDirs()[Ljava/io/File;
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 344
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "obb"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "obb"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 424
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "data"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const-string v2, "cache"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 427
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "data"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const-string v2, "cache"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 354
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "data"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "data"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public buildExternalStorageAppDataDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 364
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "data"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "data"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "data"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const-string v2, "files"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "data"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    const-string v2, "files"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 374
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "media"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "media"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public buildExternalStorageAppMediaDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 384
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "media"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "media"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 394
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "obb"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "obb"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public buildExternalStorageAppObbDirsForVold(Ljava/lang/String;)[Ljava/io/File;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 404
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "obb"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const-string v2, "obb"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 324
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getExternalDirsForApp()[Ljava/io/File;
    .locals 2

    .prologue
    .line 310
    const-string v0, "persist.dynamic_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    .line 313
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    goto :goto_0
.end method

.method public getExternalDirsForVold()[Ljava/io/File;
    .locals 2

    .prologue
    .line 300
    const-string v0, "persist.dynamic_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableDirs:[Ljava/io/File;

    .line 303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForVold:[Ljava/io/File;

    goto :goto_0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 279
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableStorage:Ljava/io/File;

    .line 282
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 290
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableStorage:Ljava/io/File;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_0
.end method

.method public getMediaDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mEmulatedDirForDirect:Ljava/io/File;

    return-object v0
.end method

.method public getPhoneStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 490
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    aget-object v0, v0, v3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "cache"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 493
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mPhoneStorageAndroidData:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPhoneStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 450
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    aget-object v0, v0, v3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 453
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mPhoneStorageAndroidData:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPhoneStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 480
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    aget-object v0, v0, v3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "data"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "files"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 483
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mPhoneStorageAndroidData:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPhoneStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 460
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    aget-object v0, v0, v3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "media"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 463
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mPhoneStorageAndroidMedia:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPhoneStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 470
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    aget-object v0, v0, v3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Android"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "obb"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mPhoneStorageAndroidObb:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPhoneStorageDirectory()Ljava/io/File;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    const-string v0, "persist.dynamic_switch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalDirsForApp:[Ljava/io/File;

    aget-object v0, v0, v1

    .line 439
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mPhoneStorage:Ljava/io/File;

    goto :goto_0
.end method

.method public getRemovableStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 515
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mRemovableStorageAndroidData:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemovableStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 499
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mRemovableStorageAndroidData:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemovableStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 511
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mRemovableStorageAndroidData:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemovableStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 503
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mRemovableStorageAndroidMedia:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemovableStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 507
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mRemovableStorageAndroidObb:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemovableStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mRemovableStorage:Ljava/io/File;

    return-object v0
.end method
