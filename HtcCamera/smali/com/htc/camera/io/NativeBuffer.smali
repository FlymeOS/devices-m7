.class public final Lcom/htc/camera/io/NativeBuffer;
.super Ljava/lang/Object;
.source "NativeBuffer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 12
    invoke-static {}, Lcom/htc/camera/CameraNativeLibrary;->initialize()V

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synchronized native declared-synchronized add([B)J
.end method

.method public static synchronized native declared-synchronized clear()V
.end method

.method public static synchronized native declared-synchronized get(JZ)[B
.end method

.method public static synchronized native declared-synchronized getSize()J
.end method

.method public static synchronized native declared-synchronized remove(J)V
.end method
