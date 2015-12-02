.class synthetic Lcom/htc/camera/viewfinder/GLViewFinder$54;
.super Ljava/lang/Object;
.source "GLViewFinder.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$CameraStartMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$PhotoSizeMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$viewfinder$GLViewFinder$AnimationState:[I

.field static final synthetic $SwitchMap$com$htc$camera$viewfinder$GLViewFinder$PreviewRenderingMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3106
    invoke-static {}, Lcom/htc/camera/CameraStartMode;->values()[Lcom/htc/camera/CameraStartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    sget-object v1, Lcom/htc/camera/CameraStartMode;->ContactsPhoto:Lcom/htc/camera/CameraStartMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraStartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    sget-object v1, Lcom/htc/camera/CameraStartMode;->SquarePhoto:Lcom/htc/camera/CameraStartMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraStartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    .line 2190
    :goto_1
    invoke-static {}, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->values()[Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$viewfinder$GLViewFinder$AnimationState:[I

    :try_start_2
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$viewfinder$GLViewFinder$AnimationState:[I

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->Waiting:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    invoke-virtual {v1}, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$viewfinder$GLViewFinder$AnimationState:[I

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->FadingOut:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    invoke-virtual {v1}, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    .line 1741
    :goto_3
    invoke-static {}, Lcom/htc/camera/PhotoSizeMode;->values()[Lcom/htc/camera/PhotoSizeMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    :try_start_4
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v1}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Square:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v1}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    .line 1559
    :goto_5
    invoke-static {}, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->values()[Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$viewfinder$GLViewFinder$PreviewRenderingMode:[I

    :try_start_6
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$viewfinder$GLViewFinder$PreviewRenderingMode:[I

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->DirectOutput:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    invoke-virtual {v1}, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$54;->$SwitchMap$com$htc$camera$viewfinder$GLViewFinder$PreviewRenderingMode:[I

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->OpenGL:Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;

    invoke-virtual {v1}, Lcom/htc/camera/viewfinder/GLViewFinder$PreviewRenderingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    .line 1741
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    .line 2190
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    .line 3106
    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
