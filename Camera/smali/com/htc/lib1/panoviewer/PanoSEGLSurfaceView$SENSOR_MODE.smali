.class final enum Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;
.super Ljava/lang/Enum;
.source "PanoSEGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

.field public static final enum GYROSCOPE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

.field public static final enum NONE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

.field public static final enum UNDEFINED:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    new-instance v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    const-string v1, "GYROSCOPE"

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->GYROSCOPE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    new-instance v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->NONE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    new-instance v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v4}, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->UNDEFINED:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    sget-object v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->GYROSCOPE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->NONE:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->UNDEFINED:Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->$VALUES:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;
    .locals 1

    .prologue
    .line 175
    const-class v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    return-object v0
.end method

.method public static values()[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->$VALUES:[Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    invoke-virtual {v0}, [Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/lib1/panoviewer/PanoSEGLSurfaceView$SENSOR_MODE;

    return-object v0
.end method
