.class public Lcom/htc/camera/CameraConfigFileReader;
.super Ljava/lang/Object;
.source "CameraConfigFileReader.java"


# static fields
.field private static m_AllVideoResolutions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_DefaultResolutions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_DefaultVideoResolution:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static m_DriverSupportedIsoRawValue:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_DriverSupportedIsoValue:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_DriverSupportedResolutions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_DriverSupportedShutterSpeedList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_DriverSupportedShutterSpeedMarkerList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_ParseDriverSupportedResolutionList:Z

.field private static m_VideoResolutions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/camera/CameraConfigFileReader;->m_ParseDriverSupportedResolutionList:Z

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DefaultResolutions:Ljava/util/Hashtable;

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_VideoResolutions:Ljava/util/Hashtable;

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_AllVideoResolutions:Ljava/util/Hashtable;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedResolutions:Ljava/util/Hashtable;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedIsoValue:Ljava/util/Hashtable;

    .line 50
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedIsoRawValue:Ljava/util/Hashtable;

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedShutterSpeedList:Ljava/util/Hashtable;

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedShutterSpeedMarkerList:Ljava/util/Hashtable;

    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DefaultVideoResolution:Ljava/util/Hashtable;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    sget-object v3, Lcom/htc/camera/CameraConfigFileReader;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v4, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v3, Lcom/htc/camera/CameraType;->Main3D:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DefaultResolutions:Ljava/util/Hashtable;

    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    sget-object v2, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedResolutions:Ljava/util/Hashtable;

    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedResolutions:Ljava/util/Hashtable;

    sget-object v2, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    sget-object v2, Lcom/htc/camera/CameraConfigFileReader;->m_VideoResolutions:Ljava/util/Hashtable;

    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_VideoResolutions:Ljava/util/Hashtable;

    sget-object v2, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    sget-object v2, Lcom/htc/camera/CameraConfigFileReader;->m_AllVideoResolutions:Ljava/util/Hashtable;

    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_AllVideoResolutions:Ljava/util/Hashtable;

    sget-object v2, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {}, Lcom/htc/camera/CameraConfigFileReader;->readConfigFile()V

    .line 166
    return-void
.end method

.method public static getAllVideoResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_AllVideoResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getDefaultVideoResolution(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Resolution;
    .locals 1

    .prologue
    .line 802
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DefaultVideoResolution:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    return-object v0
.end method

.method public static getPhotoResolutions(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DefaultResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getResolutionTable()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 780
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DefaultResolutions:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static getSupportedIsoRawValues(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 826
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedIsoRawValue:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getSupportedIsoValues(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 818
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedIsoValue:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getSupportedShutterSpeedMarkerValues(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedShutterSpeedMarkerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getSupportedShutterSpeedValues(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 834
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedShutterSpeedList:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getVideoResolutionTable()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 794
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_VideoResolutions:Ljava/util/Hashtable;

    return-object v0
.end method

.method private static isFrontCamera2M()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v2, "/sys/android_camera2/sensor"

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 175
    :cond_0
    const-string v0, "CameraConfigFileReader"

    const-string v2, "Front sensor file does not exist !"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 199
    :cond_1
    :goto_0
    return v0

    .line 180
    :cond_2
    const/4 v3, 0x0

    .line 182
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v4, 0x1

    invoke-direct {v2, v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 187
    :try_start_3
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 190
    const-string v2, "2.1M"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 193
    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_1
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string v2, "CameraConfigFileReader"

    const-string v3, "fail to judge sensor type"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 199
    goto :goto_0

    .line 187
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static isMainCameraOVSensor()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v2, "/sys/android_camera2/sensor"

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 209
    :cond_0
    const-string v0, "CameraConfigFileReader"

    const-string v2, "Main sensor file does not exist !"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 234
    :cond_1
    :goto_0
    return v0

    .line 214
    :cond_2
    const/4 v3, 0x0

    .line 216
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v4, 0x1

    invoke-direct {v2, v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 222
    :try_start_3
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 225
    const-string v2, "ov"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 228
    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_1
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string v2, "CameraConfigFileReader"

    const-string v3, "Fail to check sensor type"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 234
    goto :goto_0

    .line 222
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static isResolutionEquals(Lcom/htc/camera/Resolution;II)Z
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 770
    const/4 v0, 0x1

    .line 771
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseDefaultVideoResolutionString(Ljava/util/StringTokenizer;Lcom/htc/camera/CameraType;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 683
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 685
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 686
    const-string v1, "CameraConfigFileReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default video resolution : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 690
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 691
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 692
    const-string v0, "CameraConfigFileReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x0

    .line 696
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isVGA2ndCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/camera/Resolution;->Video_VGA:Lcom/htc/camera/Resolution;

    invoke-static {v4, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 697
    sget-object v0, Lcom/htc/camera/Resolution;->Video_VGA:Lcom/htc/camera/Resolution;

    .line 699
    :cond_0
    sget-object v4, Lcom/htc/camera/Resolution;->Video_1080p:Lcom/htc/camera/Resolution;

    invoke-static {v4, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/htc/camera/Resolution;->Video_1080p_Online:Lcom/htc/camera/Resolution;

    invoke-static {v4, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 700
    :cond_1
    sget-object v0, Lcom/htc/camera/Resolution;->Video_1080p:Lcom/htc/camera/Resolution;

    .line 720
    :cond_2
    :goto_0
    sget-object v1, Lcom/htc/camera/CameraConfigFileReader;->m_DefaultVideoResolution:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_3
    return-void

    .line 701
    :cond_4
    sget-object v4, Lcom/htc/camera/Resolution;->Video_720p:Lcom/htc/camera/Resolution;

    invoke-static {v4, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 702
    sget-object v0, Lcom/htc/camera/Resolution;->Video_720p:Lcom/htc/camera/Resolution;

    goto :goto_0

    .line 703
    :cond_5
    sget-object v4, Lcom/htc/camera/Resolution;->Video_QVGA:Lcom/htc/camera/Resolution;

    invoke-static {v4, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 704
    sget-object v0, Lcom/htc/camera/Resolution;->Video_QVGA:Lcom/htc/camera/Resolution;

    goto :goto_0

    .line 705
    :cond_6
    sget-object v4, Lcom/htc/camera/Resolution;->Video_QCIF:Lcom/htc/camera/Resolution;

    invoke-static {v4, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 706
    sget-object v0, Lcom/htc/camera/Resolution;->Video_QCIF:Lcom/htc/camera/Resolution;

    goto :goto_0

    .line 707
    :cond_7
    sget-object v4, Lcom/htc/camera/Resolution;->Video_QHD:Lcom/htc/camera/Resolution;

    invoke-static {v4, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 709
    sget-object v1, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    sget-object v2, Lcom/htc/camera/ScreenResolution;->QHD:Lcom/htc/camera/ScreenResolution;

    if-ne v1, v2, :cond_2

    .line 710
    sget-object v0, Lcom/htc/camera/Resolution;->Video_QHD:Lcom/htc/camera/Resolution;

    goto :goto_0

    .line 712
    :cond_8
    sget-object v4, Lcom/htc/camera/Resolution;->Video_WVGA:Lcom/htc/camera/Resolution;

    invoke-static {v4, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 714
    sget-object v1, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    sget-object v2, Lcom/htc/camera/ScreenResolution;->WVGA:Lcom/htc/camera/ScreenResolution;

    if-ne v1, v2, :cond_2

    .line 715
    sget-object v0, Lcom/htc/camera/Resolution;->Video_WVGA:Lcom/htc/camera/Resolution;

    goto :goto_0

    .line 718
    :cond_9
    new-instance v0, Lcom/htc/camera/Resolution;

    const-string v5, ""

    sget-object v6, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(IIIILjava/lang/String;Lcom/htc/camera/CameraMode;)V

    goto :goto_0
.end method

.method private static parseIsoString(Ljava/util/StringTokenizer;Lcom/htc/camera/CameraType;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 425
    if-nez p1, :cond_1

    .line 427
    const-string v0, "CameraConfigFileReader"

    const-string v1, "fail to parseIsoString, type is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_0
    return-void

    .line 432
    :cond_1
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedIsoValue:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 433
    sget-object v1, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedIsoRawValue:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 435
    if-nez v0, :cond_2

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    sget-object v1, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedIsoValue:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    sget-object v2, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedIsoRawValue:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 448
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    :cond_3
    new-instance v2, Lcom/htc/camera/d;

    invoke-direct {v2, v5}, Lcom/htc/camera/d;-><init>(Lcom/htc/camera/CameraConfigFileReader$1;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 456
    new-instance v2, Lcom/htc/camera/d;

    invoke-direct {v2, v5}, Lcom/htc/camera/d;-><init>(Lcom/htc/camera/CameraConfigFileReader$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 459
    const/4 v1, 0x0

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 461
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 462
    const-string v2, "CameraConfigFileReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseIsoString() - Iso : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static parseResolutionString(Ljava/util/StringTokenizer;Lcom/htc/camera/CameraType;Lcom/htc/camera/PhotoSizeMode;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 471
    if-nez p1, :cond_1

    .line 473
    const-string v0, "CameraConfigFileReader"

    const-string v1, "fail to parseResolutionString, type is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 537
    :try_start_0
    const-string v0, "CameraConfigFileReader"

    const-string v3, "parseResolutionString() - The description name cannot be found. Reset descriptionId."

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v8

    .line 542
    :goto_1
    new-instance v0, Lcom/htc/camera/Resolution;

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/Resolution;-><init>(IIIILjava/lang/String;Lcom/htc/camera/CameraMode;Lcom/htc/camera/PhotoSizeMode;)V

    .line 546
    sget-object v1, Lcom/htc/camera/CameraConfigFileReader;->m_DefaultResolutions:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 547
    if-eqz v1, :cond_2

    .line 548
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 484
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 485
    const-string v1, "CameraConfigFileReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolution : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 489
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 490
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 491
    const-string v0, "CameraConfigFileReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    if-eqz p2, :cond_3

    .line 497
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v0, "PHOTO_"

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "resolution_photo_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 499
    sget-object v3, Lcom/htc/camera/CameraConfigFileReader$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    invoke-virtual {p2}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 523
    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 525
    const-string v3, "CameraConfigFileReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolutionName is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v3, "_description"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    const-class v3, Lcom/htc/camera/R$string;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 533
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto/16 :goto_1

    .line 502
    :pswitch_0
    :try_start_2
    sget-object v3, Lcom/htc/camera/CameraConfigFileReader$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    sget-object v4, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget-object v4, v4, Lcom/htc/camera/ScreenResolution;->aspectRatio:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v4}, Lcom/htc/camera/AspectRatio;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_3

    .line 505
    :pswitch_1
    const-string v3, "16_9_"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    const-string v3, "16_9_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 599
    :catch_1
    move-exception v0

    .line 601
    const-string v1, "CameraConfigFileReader"

    const-string v2, "Failed to parse resolution"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 509
    :pswitch_2
    :try_start_3
    const-string v3, "5_3_"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const-string v3, "5_3_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 515
    :pswitch_3
    const-string v3, "4_3_"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v3, "4_3_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 519
    :pswitch_4
    const-string v3, "1_1_"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    const-string v3, "1_1_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 550
    :cond_2
    const-string v0, "CameraConfigFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultResolutionList for type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 555
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 559
    const-string v0, "CameraConfigFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportedResolution is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 563
    if-eqz v0, :cond_4

    .line 564
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 566
    :cond_4
    const-string v0, "CameraConfigFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "driverSupportedResolutionsList for type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 572
    :cond_5
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DefaultResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 573
    if-eqz v0, :cond_0

    .line 575
    new-instance v1, Lcom/htc/camera/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/camera/e;-><init>(Lcom/htc/camera/CameraConfigFileReader$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 576
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    move v3, v8

    .line 577
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 579
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    .line 580
    iget-object v2, v1, Lcom/htc/camera/Resolution;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/Resolution$Category;

    .line 581
    if-nez v2, :cond_6

    .line 582
    sget-object v2, Lcom/htc/camera/Resolution$Category;->Large:Lcom/htc/camera/Resolution$Category;

    .line 583
    :cond_6
    new-instance v5, Lcom/htc/camera/Resolution;

    invoke-direct {v5, v1, v2}, Lcom/htc/camera/Resolution;-><init>(Lcom/htc/camera/Resolution;Lcom/htc/camera/Resolution$Category;)V

    .line 584
    invoke-static {v5}, Lcom/htc/camera/Resolution;->addResolutionToResolutionStorage(Lcom/htc/camera/Resolution;)V

    .line 585
    invoke-interface {v0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v1, Lcom/htc/camera/CameraConfigFileReader$1;->$SwitchMap$com$htc$camera$Resolution$Category:[I

    invoke-virtual {v2}, Lcom/htc/camera/Resolution$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 592
    sget-object v1, Lcom/htc/camera/Resolution$Category;->Small:Lcom/htc/camera/Resolution$Category;

    .line 595
    :goto_5
    iget-object v2, v5, Lcom/htc/camera/Resolution;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v4, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 589
    :pswitch_5
    sget-object v1, Lcom/htc/camera/Resolution$Category;->Medium:Lcom/htc/camera/Resolution$Category;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 499
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 502
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 586
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method private static parseShutterSpeedString(Ljava/util/StringTokenizer;Lcom/htc/camera/CameraType;Z)V
    .locals 5

    .prologue
    .line 730
    if-nez p1, :cond_1

    .line 732
    const-string v0, "CameraConfigFileReader"

    const-string v1, "fail to parseShutterString, type is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_0
    return-void

    .line 738
    :cond_1
    if-eqz p2, :cond_3

    .line 739
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedShutterSpeedMarkerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 743
    :goto_0
    if-nez v0, :cond_2

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 747
    if-eqz p2, :cond_4

    .line 748
    sget-object v1, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedShutterSpeedMarkerList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 755
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 741
    :cond_3
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedShutterSpeedList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 750
    :cond_4
    sget-object v1, Lcom/htc/camera/CameraConfigFileReader;->m_DriverSupportedShutterSpeedList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 761
    :cond_5
    new-instance v1, Lcom/htc/camera/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/camera/f;-><init>(Lcom/htc/camera/CameraConfigFileReader$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 763
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 764
    const-string v2, "CameraConfigFileReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseShutterSpeedString() - Shutter : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static parseVideoResolutionString(Ljava/util/StringTokenizer;Lcom/htc/camera/CameraType;)V
    .locals 9

    .prologue
    .line 613
    if-nez p1, :cond_0

    .line 615
    const-string v0, "CameraConfigFileReader"

    const-string v1, "fail to parseVideoResolutionString, type is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_0
    return-void

    .line 618
    :cond_0
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_VideoResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    .line 619
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_AllVideoResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 620
    if-nez v7, :cond_1

    .line 622
    const-string v0, "CameraConfigFileReader"

    const-string v1, "fail to parseVideoResolutionString, m_VideoDefaultResolutions.get(type) is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 631
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 633
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 634
    const-string v1, "CameraConfigFileReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video resolution : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 638
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 639
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 640
    const-string v0, "CameraConfigFileReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isVGA2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/camera/Resolution;->Video_VGA:Lcom/htc/camera/Resolution;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    sget-object v0, Lcom/htc/camera/Resolution;->Video_VGA:Lcom/htc/camera/Resolution;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_2
    sget-object v0, Lcom/htc/camera/Resolution;->Video_1080p:Lcom/htc/camera/Resolution;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/htc/camera/Resolution;->Video_1080p_Online:Lcom/htc/camera/Resolution;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 646
    :cond_3
    sget-object v0, Lcom/htc/camera/Resolution;->Video_1080p:Lcom/htc/camera/Resolution;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_4
    :goto_2
    new-instance v0, Lcom/htc/camera/Resolution;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    sget-object v6, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(IIIILjava/lang/String;Lcom/htc/camera/CameraMode;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 672
    :catch_0
    move-exception v0

    .line 674
    const-string v1, "CameraConfigFileReader"

    const-string v2, "Failed to parse resolution"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 647
    :cond_5
    :try_start_1
    sget-object v0, Lcom/htc/camera/Resolution;->Video_720p:Lcom/htc/camera/Resolution;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 648
    sget-object v0, Lcom/htc/camera/Resolution;->Video_720p:Lcom/htc/camera/Resolution;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 649
    :cond_6
    sget-object v0, Lcom/htc/camera/Resolution;->Video_QVGA:Lcom/htc/camera/Resolution;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 650
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader;->m_VideoResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v3, Lcom/htc/camera/Resolution;->Video_QVGA:Lcom/htc/camera/Resolution;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 651
    :cond_7
    sget-object v0, Lcom/htc/camera/Resolution;->Video_QCIF:Lcom/htc/camera/Resolution;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 653
    sget-object v0, Lcom/htc/camera/Resolution;->Video_QCIF:Lcom/htc/camera/Resolution;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 655
    :cond_8
    sget-object v0, Lcom/htc/camera/Resolution;->Video_QHD:Lcom/htc/camera/Resolution;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 657
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    sget-object v3, Lcom/htc/camera/ScreenResolution;->QHD:Lcom/htc/camera/ScreenResolution;

    if-ne v0, v3, :cond_4

    .line 658
    sget-object v0, Lcom/htc/camera/Resolution;->Video_QHD:Lcom/htc/camera/Resolution;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 660
    :cond_9
    sget-object v0, Lcom/htc/camera/Resolution;->Video_WVGA:Lcom/htc/camera/Resolution;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/CameraConfigFileReader;->isResolutionEquals(Lcom/htc/camera/Resolution;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 662
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    sget-object v3, Lcom/htc/camera/ScreenResolution;->WVGA:Lcom/htc/camera/ScreenResolution;

    if-ne v0, v3, :cond_4

    .line 663
    sget-object v0, Lcom/htc/camera/Resolution;->Video_WVGA:Lcom/htc/camera/Resolution;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 670
    :cond_a
    new-instance v0, Lcom/htc/camera/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/camera/e;-><init>(Lcom/htc/camera/CameraConfigFileReader$1;)V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static readConfigFile()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 243
    const/4 v2, 0x0

    .line 244
    const-string v0, "CameraConfigFileReader.ReadConfigFile.Start"

    invoke-static {v0}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v5

    .line 246
    :try_start_0
    invoke-static {}, Lcom/htc/camera/CameraConfigFileReader;->isFrontCamera2M()Z

    move-result v0

    .line 247
    invoke-static {}, Lcom/htc/camera/CameraConfigFileReader;->isMainCameraOVSensor()Z

    move-result v3

    .line 249
    if-eqz v3, :cond_5

    .line 251
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/res_ctrl_ov.conf"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 254
    :cond_0
    const-string v0, "CameraConfigFileReader"

    const-string v3, "readConfigFile() - Use regular file"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/res_ctrl.conf"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 278
    :cond_1
    const-string v0, "CameraConfigFileReader"

    const-string v3, "CONFIG_FILE does not exist !"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    if-eqz v1, :cond_2

    .line 410
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 416
    :cond_2
    :goto_1
    return-void

    .line 258
    :cond_3
    :try_start_2
    const-string v3, "CameraConfigFileReader"

    const-string v4, "readConfigFile() - Use ov file"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    :goto_2
    :try_start_3
    const-string v2, "CameraConfigFileReader"

    const-string v3, "fail to readConfigFile"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 409
    if-eqz v1, :cond_4

    .line 410
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 415
    :cond_4
    :goto_3
    const-string v0, "CameraConfigFileReader.ReadConfigFile.End"

    invoke-static {v5, v0}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :cond_5
    if-eqz v0, :cond_9

    .line 262
    :try_start_5
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/res_ctrl2.conf"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 265
    :cond_6
    const-string v0, "CameraConfigFileReader"

    const-string v3, "readConfigFile() - Use regular file"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/res_ctrl.conf"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 409
    :goto_4
    if-eqz v2, :cond_7

    .line 410
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 408
    :cond_7
    :goto_5
    throw v0

    .line 269
    :cond_8
    :try_start_7
    const-string v3, "CameraConfigFileReader"

    const-string v4, "readConfigFile() - Use 2nd ctrl file"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_9
    const-string v0, "CameraConfigFileReader"

    const-string v3, "readConfigFile() - Use regular file"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/res_ctrl.conf"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_a
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v0, 0x800

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 285
    :cond_b
    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 287
    const-string v0, "CameraConfigFileReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "str is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    .line 293
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, ","

    invoke-direct {v6, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v4, "M="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 296
    sget-boolean v3, Lcom/htc/camera/CameraConfigFileReader;->m_ParseDriverSupportedResolutionList:Z

    if-eqz v3, :cond_b

    .line 298
    const-string v3, "CameraConfigFileReader"

    const-string v4, "Driver support list : Main camera"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    move-object v4, v3

    move-object v3, v1

    .line 390
    :goto_7
    sget-object v7, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    if-ne v0, v7, :cond_1c

    .line 391
    invoke-static {v6, v4, v3}, Lcom/htc/camera/CameraConfigFileReader;->parseResolutionString(Ljava/util/StringTokenizer;Lcom/htc/camera/CameraType;Lcom/htc/camera/PhotoSizeMode;)V

    goto :goto_6

    .line 405
    :catch_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    .line 301
    :cond_c
    const-string v4, "F="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 303
    sget-boolean v3, Lcom/htc/camera/CameraConfigFileReader;->m_ParseDriverSupportedResolutionList:Z

    if-eqz v3, :cond_b

    .line 305
    const-string v3, "CameraConfigFileReader"

    const-string v4, "Driver support list : Front camera"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v3, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    move-object v4, v3

    move-object v3, v1

    goto :goto_7

    .line 308
    :cond_d
    const-string v4, "M_REGULAR="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 310
    const-string v3, "CameraConfigFileReader"

    const-string v4, "Main camera : Regular"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v4, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    .line 312
    sget-object v3, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    goto :goto_7

    .line 314
    :cond_e
    const-string v4, "M_WIDE="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 316
    const-string v3, "CameraConfigFileReader"

    const-string v4, "Main camera : Wide"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v4, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    .line 318
    sget-object v3, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    goto :goto_7

    .line 320
    :cond_f
    const-string v4, "M_SQUARE="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 322
    const-string v3, "CameraConfigFileReader"

    const-string v4, "Main camera : Square"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v4, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    .line 324
    sget-object v3, Lcom/htc/camera/PhotoSizeMode;->Square:Lcom/htc/camera/PhotoSizeMode;

    goto :goto_7

    .line 326
    :cond_10
    const-string v4, "F_REGULAR="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 328
    const-string v3, "CameraConfigFileReader"

    const-string v4, "Front camera : Regular"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v4, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    .line 330
    sget-object v3, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    goto :goto_7

    .line 332
    :cond_11
    const-string v4, "F_WIDE="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 334
    const-string v3, "CameraConfigFileReader"

    const-string v4, "Front camera : Wide"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v4, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    .line 336
    sget-object v3, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    goto/16 :goto_7

    .line 338
    :cond_12
    const-string v4, "F_SQUARE="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 340
    const-string v3, "CameraConfigFileReader"

    const-string v4, "Front camera : Square"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v4, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    .line 342
    sget-object v3, Lcom/htc/camera/PhotoSizeMode;->Square:Lcom/htc/camera/PhotoSizeMode;

    goto/16 :goto_7

    .line 344
    :cond_13
    const-string v4, "M_ISO="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 346
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->ISO:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    .line 347
    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_7

    .line 349
    :cond_14
    const-string v4, "F_ISO="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 351
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->ISO:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    .line 352
    sget-object v3, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_7

    .line 354
    :cond_15
    const-string v4, "M_VIDEO="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 356
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->VIDEO_RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    .line 357
    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_7

    .line 359
    :cond_16
    const-string v4, "M_VIDEO_DEFAULT="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 361
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->DEFAULT_VIDEO_RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    .line 362
    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_7

    .line 364
    :cond_17
    const-string v4, "F_VIDEO="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 366
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->VIDEO_RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    .line 367
    sget-object v3, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_7

    .line 369
    :cond_18
    const-string v4, "F_VIDEO_DEFAULT="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 371
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->DEFAULT_VIDEO_RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    .line 372
    sget-object v3, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_7

    .line 374
    :cond_19
    const-string v4, "M_SHUTTER_SPEED="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 376
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->SHUTTER_SPEED:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    .line 377
    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_7

    .line 379
    :cond_1a
    const-string v4, "M_SHUTTER_SPEED_MARKER="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 381
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->SHUTTER_SPEED_MARKER:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    .line 382
    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_7

    .line 386
    :cond_1b
    const-string v3, "CameraConfigFileReader"

    const-string v4, "Illegal header of config file!"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_7

    .line 392
    :cond_1c
    sget-object v3, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->ISO:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    if-ne v0, v3, :cond_1d

    .line 393
    invoke-static {v6, v4}, Lcom/htc/camera/CameraConfigFileReader;->parseIsoString(Ljava/util/StringTokenizer;Lcom/htc/camera/CameraType;)V

    goto/16 :goto_6

    .line 408
    :catchall_1
    move-exception v0

    goto/16 :goto_4

    .line 394
    :cond_1d
    sget-object v3, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->VIDEO_RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    if-ne v0, v3, :cond_1e

    .line 395
    invoke-static {v6, v4}, Lcom/htc/camera/CameraConfigFileReader;->parseVideoResolutionString(Ljava/util/StringTokenizer;Lcom/htc/camera/CameraType;)V

    goto/16 :goto_6

    .line 396
    :cond_1e
    sget-object v3, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->DEFAULT_VIDEO_RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    if-ne v0, v3, :cond_1f

    .line 397
    invoke-static {v6, v4}, Lcom/htc/camera/CameraConfigFileReader;->parseDefaultVideoResolutionString(Ljava/util/StringTokenizer;Lcom/htc/camera/CameraType;)V

    goto/16 :goto_6

    .line 398
    :cond_1f
    sget-object v3, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->SHUTTER_SPEED:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    if-ne v0, v3, :cond_20

    .line 399
    const/4 v0, 0x0

    invoke-static {v6, v4, v0}, Lcom/htc/camera/CameraConfigFileReader;->parseShutterSpeedString(Ljava/util/StringTokenizer;Lcom/htc/camera/CameraType;Z)V

    goto/16 :goto_6

    .line 400
    :cond_20
    sget-object v3, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->SHUTTER_SPEED_MARKER:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    if-ne v0, v3, :cond_b

    .line 401
    const/4 v0, 0x1

    invoke-static {v6, v4, v0}, Lcom/htc/camera/CameraConfigFileReader;->parseShutterSpeedString(Ljava/util/StringTokenizer;Lcom/htc/camera/CameraType;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_6

    .line 411
    :catch_2
    move-exception v1

    .line 412
    const-string v2, "CameraConfigFileReader"

    const-string v3, "fail to close the reader"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 411
    :catch_3
    move-exception v0

    .line 412
    const-string v1, "CameraConfigFileReader"

    const-string v2, "fail to close the reader"

    :goto_8
    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 411
    :catch_4
    move-exception v0

    .line 412
    const-string v1, "CameraConfigFileReader"

    const-string v2, "fail to close the reader"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 409
    :cond_21
    if-eqz v2, :cond_4

    .line 410
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_3

    .line 411
    :catch_5
    move-exception v0

    .line 412
    const-string v1, "CameraConfigFileReader"

    const-string v2, "fail to close the reader"

    goto :goto_8

    .line 408
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4
.end method
