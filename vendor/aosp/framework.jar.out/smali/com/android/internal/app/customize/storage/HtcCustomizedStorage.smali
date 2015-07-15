.class public Lcom/android/internal/app/customize/storage/HtcCustomizedStorage;
.super Ljava/lang/Object;
.source "HtcCustomizedStorage.java"


# static fields
.field private static final CUSTOMIZATION_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/"

.field private static final DEBUG_LOCALE:Z

.field private static final TAG:Ljava/lang/String; = "HtcCustomizedStorage"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/app/customize/storage/HtcCustomizedStorage;->DEBUG_LOCALE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binaryArrayToBundle([B)Landroid/os/Bundle;
    .locals 4
    .param p0, "blob"    # [B

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 106
    .local v1, "parcel":Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 109
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 113
    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/customize/storage/customize/HtcCustomizedData;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryName"    # Ljava/lang/String;
    .param p2, "moduleName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 43
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 47
    :cond_0
    const-string v10, "The context, categoryName and moduleName must be not null. \n"

    .line 48
    .local v10, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "categoryName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "moduleName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    .end local v10    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://customization_settings/SettingTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 62
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 63
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_3

    .line 64
    sget-boolean v3, Lcom/android/internal/app/customize/storage/HtcCustomizedStorage;->DEBUG_LOCALE:Z

    if-eqz v3, :cond_2

    const-string v3, "HtcCustomizedStorage"

    const-string v4, "cursor == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    new-instance v3, Lcom/android/internal/app/customize/storage/customize/HtcCustomizedData;

    invoke-direct {v3, v2}, Lcom/android/internal/app/customize/storage/customize/HtcCustomizedData;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    .line 88
    :goto_0
    return-object v2

    .line 70
    :cond_3
    const-string/jumbo v3, "value"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 71
    .local v8, "columnIndex":I
    const/4 v3, -0x1

    if-ne v8, v3, :cond_5

    .line 72
    sget-boolean v3, Lcom/android/internal/app/customize/storage/HtcCustomizedStorage;->DEBUG_LOCALE:Z

    if-eqz v3, :cond_4

    const-string v3, "HtcCustomizedStorage"

    const-string v4, "columnIndex == -1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_4
    new-instance v3, Lcom/android/internal/app/customize/storage/customize/HtcCustomizedData;

    invoke-direct {v3, v2}, Lcom/android/internal/app/customize/storage/customize/HtcCustomizedData;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    goto :goto_0

    .line 77
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 78
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 79
    sget-boolean v3, Lcom/android/internal/app/customize/storage/HtcCustomizedStorage;->DEBUG_LOCALE:Z

    if-eqz v3, :cond_6

    const-string v3, "HtcCustomizedStorage"

    const-string v4, "cursor.isAfterLast()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 81
    new-instance v3, Lcom/android/internal/app/customize/storage/customize/HtcCustomizedData;

    invoke-direct {v3, v2}, Lcom/android/internal/app/customize/storage/customize/HtcCustomizedData;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    goto :goto_0

    .line 84
    :cond_7
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 85
    .local v6, "blob":[B
    invoke-static {v6}, Lcom/android/internal/app/customize/storage/HtcCustomizedStorage;->binaryArrayToBundle([B)Landroid/os/Bundle;

    move-result-object v7

    .line 86
    .local v7, "bundle":Landroid/os/Bundle;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 87
    sget-boolean v2, Lcom/android/internal/app/customize/storage/HtcCustomizedStorage;->DEBUG_LOCALE:Z

    if-eqz v2, :cond_8

    const-string v2, "HtcCustomizedStorage"

    const-string v3, "HtcCustomizedData(bundle)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_8
    new-instance v2, Lcom/android/internal/app/customize/storage/customize/HtcCustomizedData;

    invoke-direct {v2, v7}, Lcom/android/internal/app/customize/storage/customize/HtcCustomizedData;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method
