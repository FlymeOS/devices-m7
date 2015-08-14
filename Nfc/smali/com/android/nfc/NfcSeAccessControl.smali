.class public Lcom/android/nfc/NfcSeAccessControl;
.super Ljava/lang/Object;
.source "NfcSeAccessControl.java"


# static fields
.field static final DBG:Z = true

.field public static final NFCSE_ACCESS_PATH:Ljava/lang/String; = "/etc/nfcse_access.xml"

.field static final TAG:Ljava/lang/String; = "NfcSeAccess"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDebugPrintSignature:Z

.field final mNfcSeAccess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/nfc/NfcSeAccessControl;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    .line 69
    invoke-virtual {p0}, Lcom/android/nfc/NfcSeAccessControl;->parseNfcSeAccess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcSeAccessControl;->mDebugPrintSignature:Z

    .line 70
    return-void
.end method


# virtual methods
.method public check(ILjava/lang/String;)Z
    .locals 13
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v10, "NfcSeAccess"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "check "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    monitor-enter p0

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "access":Z
    const/4 v5, 0x0

    .line 84
    .local v5, "packageFound":Z
    :try_start_0
    iget-object v10, p0, Lcom/android/nfc/NfcSeAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 85
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "pkgs":[Ljava/lang/String;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v9, v1, v3

    .line 87
    .local v9, "uidPkg":Ljava/lang/String;
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 88
    const/4 v5, 0x1

    .line 90
    iget-object v10, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 91
    .local v2, "cached":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    monitor-exit p0

    .line 121
    .end local v2    # "cached":Ljava/lang/Boolean;
    .end local v9    # "uidPkg":Ljava/lang/String;
    :goto_1
    return v10

    .line 96
    .restart local v2    # "cached":Ljava/lang/Boolean;
    .restart local v9    # "uidPkg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/nfc/NfcSeAccessControl;->checkPackageNfcSeAccess(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 97
    const/4 v0, 0x1

    .line 105
    .end local v2    # "cached":Ljava/lang/Boolean;
    .end local v9    # "uidPkg":Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_2

    .line 106
    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "pkgs1":[Ljava/lang/String;
    move-object v1, v7

    array-length v4, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v9, v1, v3

    .line 108
    .restart local v9    # "uidPkg":Ljava/lang/String;
    const-string v10, "com.nxp.nfceeapi.service"

    invoke-virtual {v10, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_5

    .line 109
    invoke-virtual {p0, p2}, Lcom/android/nfc/NfcSeAccessControl;->checkPackageNfcSeAccess(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 110
    const/4 v0, 0x1

    .line 116
    .end local v7    # "pkgs1":[Ljava/lang/String;
    .end local v9    # "uidPkg":Ljava/lang/String;
    :cond_2
    const-string v10, "NfcSeAccess"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Access for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " IS "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz v5, :cond_3

    .line 119
    iget-object v10, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_3
    monitor-exit p0

    move v10, v0

    goto :goto_1

    .line 86
    .restart local v9    # "uidPkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 107
    .restart local v7    # "pkgs1":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 122
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pkgs":[Ljava/lang/String;
    .end local v7    # "pkgs1":[Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "uidPkg":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public check(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 133
    .local v0, "access":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 134
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/nfc/NfcSeAccessControl;->checkPackageNfcSeAccess(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit p0

    return v1

    .line 138
    .end local v0    # "access":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkPackageNfcSeAccess(Ljava/lang/String;)Z
    .locals 14
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v11, p0, Lcom/android/nfc/NfcSeAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 154
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/16 v11, 0x40

    :try_start_0
    invoke-virtual {v9, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 155
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v11, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v11, :cond_0

    .line 156
    const/4 v11, 0x0

    .line 192
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v11

    .line 159
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v10, v0, v3

    .line 160
    .local v10, "s":Landroid/content/pm/Signature;
    if-nez v10, :cond_2

    .line 159
    .end local v3    # "i$":I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1

    .line 163
    :cond_2
    iget-object v11, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 164
    .local v8, "packages":[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 167
    array-length v11, v8

    if-nez v11, :cond_3

    .line 169
    const-string v11, "NfcSeAccess"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Granted NFCSE access to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (wildcard)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v11, 0x1

    goto :goto_0

    .line 172
    :cond_3
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 173
    .local v7, "p":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 175
    const-string v11, "NfcSeAccess"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Granted access to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (explicit)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v11, 0x1

    goto :goto_0

    .line 172
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 181
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "p":Ljava/lang/String;
    .end local v8    # "packages":[Ljava/lang/String;
    .end local v10    # "s":Landroid/content/pm/Signature;
    .restart local v3    # "i$":I
    :cond_5
    iget-boolean v11, p0, Lcom/android/nfc/NfcSeAccessControl;->mDebugPrintSignature:Z

    if-eqz v11, :cond_8

    .line 182
    const-string v11, "NfcSeAccess"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "denied NFCSE access for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " with signature:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_7

    aget-object v10, v0, v2

    .line 184
    .restart local v10    # "s":Landroid/content/pm/Signature;
    if-eqz v10, :cond_6

    .line 185
    const-string v11, "NfcSeAccess"

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 189
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "len$":I
    .end local v10    # "s":Landroid/content/pm/Signature;
    :catch_0
    move-exception v11

    .line 192
    :cond_7
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .restart local v3    # "i$":I
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_8
    move v2, v3

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 293
    const-string v9, "mNfcSeAccess="

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    iget-object v9, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/Signature;

    .line 295
    .local v7, "s":Landroid/content/pm/Signature;
    const-string v9, "\t%s ["

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p2, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 296
    iget-object v9, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 297
    .local v6, "ps":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 298
    .local v5, "p":Ljava/lang/String;
    const-string v9, "%s, "

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {p2, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 300
    .end local v5    # "p":Ljava/lang/String;
    :cond_0
    const-string v9, "]"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "ps":[Ljava/lang/String;
    .end local v7    # "s":Landroid/content/pm/Signature;
    :cond_1
    monitor-enter p0

    .line 303
    :try_start_0
    const-string v9, "mNfcSeUidCache="

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    iget-object v9, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 305
    .local v8, "uid":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 306
    .local v1, "b":Ljava/lang/Boolean;
    const-string v9, "\t%d %s\n"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-virtual {p2, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_2

    .line 308
    .end local v1    # "b":Ljava/lang/Boolean;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v8    # "uid":Ljava/lang/Integer;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    return-void
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 144
    monitor-exit p0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method parseNfcSeAccess()Z
    .locals 17

    .prologue
    .line 203
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v14

    const-string v15, "/etc/nfcse_access.xml"

    invoke-direct {v5, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .local v5, "file":Ljava/io/File;
    const/4 v10, 0x0

    .line 205
    .local v10, "reader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 207
    .local v1, "debug":Z
    :try_start_0
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    .end local v10    # "reader":Ljava/io/FileReader;
    .local v11, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 209
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 210
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 213
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v8, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 215
    .local v12, "signature":Landroid/content/pm/Signature;
    const-string v14, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 217
    :cond_0
    :goto_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 218
    .local v3, "event":I
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, "tag":Ljava/lang/String;
    const/4 v14, 0x2

    if-ne v3, v14, :cond_5

    const-string v14, "signer"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 220
    const/4 v12, 0x0

    .line 221
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 222
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    if-ge v6, v14, :cond_1

    .line 223
    const-string v14, "android:signature"

    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 224
    new-instance v12, Landroid/content/pm/Signature;

    .end local v12    # "signature":Landroid/content/pm/Signature;
    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 228
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    :cond_1
    if-nez v12, :cond_4

    .line 229
    const-string v14, "NfcSeAccess"

    const-string v15, "signer tag is missing android:signature attribute, igorning"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 273
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "i":I
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v10, v11

    .line 274
    .end local v11    # "reader":Ljava/io/FileReader;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_2
    :try_start_2
    const-string v14, "NfcSeAccess"

    const-string v15, "failed to load NFCSE access list"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 282
    if-eqz v10, :cond_2

    .line 284
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 288
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_3
    const-string v14, "NfcSeAccess"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "read "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " signature(s) for NFCSE access"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v1

    .line 222
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "i":I
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 232
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 233
    const-string v14, "NfcSeAccess"

    const-string v15, "duplicate signature, ignoring"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v12, 0x0

    .line 235
    goto/16 :goto_0

    .line 237
    .end local v6    # "i":I
    :cond_5
    const/4 v14, 0x3

    if-ne v3, v14, :cond_7

    const-string v14, "signer"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 238
    if-nez v12, :cond_6

    .line 239
    const-string v14, "NfcSeAccess"

    const-string v15, "mis-matched signer tag"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 276
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v10, v11

    .line 277
    .end local v11    # "reader":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_4
    :try_start_5
    const-string v14, "NfcSeAccess"

    const-string v15, "could not find /etc/nfcse_access.xml, no NFCSE access allowed"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 282
    if-eqz v10, :cond_2

    .line 284
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 285
    :catch_2
    move-exception v14

    goto :goto_3

    .line 242
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v15, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 278
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    :catch_3
    move-exception v2

    move-object v10, v11

    .line 279
    .end local v11    # "reader":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/IOException;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_5
    :try_start_8
    const-string v14, "NfcSeAccess"

    const-string v15, "Failed to load NFCSE access list"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 282
    if-eqz v10, :cond_2

    .line 284
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_3

    .line 285
    :catch_4
    move-exception v14

    goto/16 :goto_3

    .line 244
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_7
    const/4 v14, 0x2

    if-ne v3, v14, :cond_e

    :try_start_a
    const-string v14, "package"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 245
    if-nez v12, :cond_9

    .line 246
    const-string v14, "NfcSeAccess"

    const-string v15, "ignoring unnested packge tag"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 282
    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v14

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_6
    if-eqz v10, :cond_8

    .line 284
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 285
    :cond_8
    :goto_7
    throw v14

    .line 249
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    .line 250
    .local v7, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_8
    :try_start_c
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    if-ge v6, v14, :cond_a

    .line 251
    const-string v14, "android:name"

    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 252
    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 256
    :cond_a
    if-nez v7, :cond_c

    .line 257
    const-string v14, "NfcSeAccess"

    const-string v15, "package missing android:name, ignoring signer group"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v12, 0x0

    .line 259
    goto/16 :goto_0

    .line 250
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 262
    :cond_c
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 263
    const-string v14, "NfcSeAccess"

    const-string v15, "duplicate package name in signer group, ignoring"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 266
    :cond_d
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 267
    .end local v6    # "i":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_e
    const/4 v14, 0x2

    if-ne v3, v14, :cond_f

    const-string v14, "debug"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v14

    if-eqz v14, :cond_f

    .line 268
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 269
    :cond_f
    const/4 v14, 0x1

    if-ne v3, v14, :cond_0

    .line 282
    if-eqz v11, :cond_10

    .line 284
    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    move-object v10, v11

    .line 285
    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v11    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v14

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto/16 :goto_3

    .end local v3    # "event":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "signature":Landroid/content/pm/Signature;
    .end local v13    # "tag":Ljava/lang/String;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v14

    goto/16 :goto_3

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v15

    goto :goto_7

    .line 282
    :catchall_1
    move-exception v14

    goto :goto_6

    .line 278
    :catch_8
    move-exception v2

    goto/16 :goto_5

    .line 276
    :catch_9
    move-exception v2

    goto/16 :goto_4

    .line 273
    :catch_a
    move-exception v2

    goto/16 :goto_2

    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "event":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "reader":Ljava/io/FileReader;
    .restart local v12    # "signature":Landroid/content/pm/Signature;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_10
    move-object v10, v11

    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto/16 :goto_3
.end method
