.class public final enum Lcom/htc/camera/CameraType;
.super Ljava/lang/Enum;
.source "CameraType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/CameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/CameraType;

.field public static final enum Front:Lcom/htc/camera/CameraType;

.field public static final enum Front3D:Lcom/htc/camera/CameraType;

.field public static final enum Main:Lcom/htc/camera/CameraType;

.field public static final enum Main3D:Lcom/htc/camera/CameraType;

.field private static final m_CamcorderStartOffsets:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile m_IsCamcorderStartOffsetRetrieved:Z


# instance fields
.field public final id:I

.field public final isSupported:Z

.field public final orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/htc/camera/CameraType;

    const-string v1, "Main"

    invoke-direct {v0, v1, v2, v2}, Lcom/htc/camera/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    .line 15
    new-instance v0, Lcom/htc/camera/CameraType;

    const-string v1, "Main3D"

    invoke-direct {v0, v1, v3, v4}, Lcom/htc/camera/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/CameraType;->Main3D:Lcom/htc/camera/CameraType;

    .line 16
    new-instance v0, Lcom/htc/camera/CameraType;

    const-string v1, "Front"

    invoke-direct {v0, v1, v4, v3}, Lcom/htc/camera/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    .line 17
    new-instance v0, Lcom/htc/camera/CameraType;

    const-string v1, "Front3D"

    invoke-direct {v0, v1, v5, v5}, Lcom/htc/camera/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/CameraType;->Front3D:Lcom/htc/camera/CameraType;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/CameraType;

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/CameraType;->Main3D:Lcom/htc/camera/CameraType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/CameraType;->Front3D:Lcom/htc/camera/CameraType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/CameraType;->$VALUES:[Lcom/htc/camera/CameraType;

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/CameraType;->m_CamcorderStartOffsets:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 39
    packed-switch p3, :pswitch_data_0

    .line 51
    iput v3, p0, Lcom/htc/camera/CameraType;->id:I

    .line 54
    :goto_0
    iget v3, p0, Lcom/htc/camera/CameraType;->id:I

    if-ltz v3, :cond_0

    :goto_1
    iput-boolean v0, p0, Lcom/htc/camera/CameraType;->isSupported:Z

    .line 55
    iget-boolean v0, p0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_1

    .line 56
    iget v0, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v0, p0, Lcom/htc/camera/CameraType;->orientation:I

    .line 59
    :goto_2
    return-void

    .line 42
    :pswitch_0
    invoke-static {v1, v2}, Lcom/htc/camera/CameraType;->findCameraInfo(ILandroid/hardware/Camera$CameraInfo;)I

    move-result v3

    iput v3, p0, Lcom/htc/camera/CameraType;->id:I

    goto :goto_0

    .line 45
    :pswitch_1
    invoke-static {v0, v2}, Lcom/htc/camera/CameraType;->findCameraInfo(ILandroid/hardware/Camera$CameraInfo;)I

    move-result v3

    iput v3, p0, Lcom/htc/camera/CameraType;->id:I

    goto :goto_0

    .line 48
    :pswitch_2
    iput v3, p0, Lcom/htc/camera/CameraType;->id:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 54
    goto :goto_1

    .line 58
    :cond_1
    iput v1, p0, Lcom/htc/camera/CameraType;->orientation:I

    goto :goto_2

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static findCameraInfo(ILandroid/hardware/Camera$CameraInfo;)I
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x2

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 67
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 69
    invoke-static {v0, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 70
    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, p0, :cond_0

    .line 73
    :goto_1
    return v0

    .line 67
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static declared-synchronized getCamcorderStartOffset(Lcom/htc/camera/CameraType;)J
    .locals 14

    .prologue
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    .line 81
    const-class v8, Lcom/htc/camera/CameraType;

    monitor-enter v8

    :try_start_0
    sget-boolean v0, Lcom/htc/camera/CameraType;->m_IsCamcorderStartOffsetRetrieved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    .line 87
    :try_start_1
    new-instance v5, Ljava/io/FileReader;

    const-string v0, "/system/etc/media_profiles.xml"

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v0, 0x800

    invoke-direct {v3, v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 89
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v0

    move-object v4, v0

    .line 90
    :goto_0
    if-eqz v4, :cond_3

    .line 94
    :try_start_4
    const-string v0, "[\\s]*\\<CamcorderProfiles[\\s].+"

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, " cameraId=\""

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 98
    const/16 v6, 0x22

    add-int/lit8 v7, v0, 0xb

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 99
    add-int/lit8 v0, v0, 0xb

    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 103
    const-string v6, " startOffsetMs=\""

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 104
    if-ltz v6, :cond_4

    .line 106
    const/16 v7, 0x22

    add-int/lit8 v9, v6, 0x10

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 107
    add-int/lit8 v6, v6, 0x10

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 111
    :goto_1
    const-string v9, "CameraType"

    const-string v10, "getCamcorderStartOffset() - Camera ID = "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, ", offset = "

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    sget-object v9, Lcom/htc/camera/CameraType;->m_CamcorderStartOffsets:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    :cond_0
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v0

    :goto_2
    move-object v4, v0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    :try_start_6
    const-string v6, "CameraType"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCamcorderStartOffset() - Fail to parse : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 121
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 125
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 127
    :goto_3
    :try_start_8
    const-string v5, "CameraType"

    const-string v6, "getCamcorderStartOffset() - Fail to retrieve camcorder start offset"

    invoke-static {v5, v6, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 131
    :try_start_9
    invoke-static {v3}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v4}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/camera/CameraType;->m_IsCamcorderStartOffsetRetrieved:Z

    .line 136
    :cond_1
    :goto_4
    sget-object v0, Lcom/htc/camera/CameraType;->m_CamcorderStartOffsets:Ljava/util/Hashtable;

    iget v3, p0, Lcom/htc/camera/CameraType;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 137
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-wide v0

    :goto_5
    monitor-exit v8

    return-wide v0

    .line 131
    :catchall_1
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_6
    :try_start_a
    invoke-static {v3}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v5}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 133
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/camera/CameraType;->m_IsCamcorderStartOffsetRetrieved:Z

    .line 131
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 81
    :catchall_2
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_2
    move-wide v0, v1

    .line 137
    goto :goto_5

    .line 131
    :cond_3
    :try_start_b
    invoke-static {v3}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v5}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/camera/CameraType;->m_IsCamcorderStartOffsetRetrieved:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_4

    .line 131
    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v5, v4

    goto :goto_6

    .line 125
    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    goto :goto_3

    :cond_4
    move-wide v6, v1

    goto/16 :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/htc/camera/CameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/htc/camera/CameraType;->$VALUES:[Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, [Lcom/htc/camera/CameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/CameraType;

    return-object v0
.end method


# virtual methods
.method public getCamcorderStartOffset()J
    .locals 2

    .prologue
    .line 141
    invoke-static {p0}, Lcom/htc/camera/CameraType;->getCamcorderStartOffset(Lcom/htc/camera/CameraType;)J

    move-result-wide v0

    return-wide v0
.end method

.method public is3DCamera()Z
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/htc/camera/CameraType;->Main3D:Lcom/htc/camera/CameraType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/htc/camera/CameraType;->Front3D:Lcom/htc/camera/CameraType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrontCamera()Z
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/htc/camera/CameraType;->Front3D:Lcom/htc/camera/CameraType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMainCamera()Z
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/htc/camera/CameraType;->Main3D:Lcom/htc/camera/CameraType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
