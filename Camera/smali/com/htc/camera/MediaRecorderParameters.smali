.class public Lcom/htc/camera/MediaRecorderParameters;
.super Ljava/lang/Object;
.source "MediaRecorderParameters.java"


# instance fields
.field private mAudioChannels:Ljava/lang/Integer;

.field private mAudioEncoder:Ljava/lang/Integer;

.field private mAudioEncodingBitRate:Ljava/lang/Integer;

.field private mAudioSamplingRate:Ljava/lang/Integer;

.field private mAudioSource:Ljava/lang/Integer;

.field private mCamera:Landroid/hardware/Camera;

.field private mMaxDuration:Ljava/lang/Integer;

.field private mMaxFileSize:Ljava/lang/Long;

.field private mOrientation:Ljava/lang/Integer;

.field private mOutputFile:Ljava/lang/String;

.field private mOutputFormat:Ljava/lang/Integer;

.field private mVideoEncoder:Ljava/lang/Integer;

.field private mVideoEncodingBitRate:Ljava/lang/Integer;

.field private mVideoFrameRate:Ljava/lang/Integer;

.field private mVideoSize:Lcom/htc/camera/imaging/Size;

.field private mVideoSource:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public doSetMediaRecorderParameters(Landroid/media/MediaRecorder;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mOrientation:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mOrientation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioSource:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioSource:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoSource:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoSource:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mOutputFormat:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mOutputFormat:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mOutputFile:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 59
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mOutputFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoEncodingBitRate:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 61
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoEncodingBitRate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 62
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mMaxDuration:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 63
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mMaxDuration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 64
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mMaxFileSize:Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 65
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mMaxFileSize:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 66
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoFrameRate:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 67
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoFrameRate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 68
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoSize:Lcom/htc/camera/imaging/Size;

    if-eqz v0, :cond_a

    .line 69
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v1, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoSize:Lcom/htc/camera/imaging/Size;

    iget v1, v1, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 70
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoEncoder:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 71
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoEncoder:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 72
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioEncodingBitRate:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 73
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioEncodingBitRate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 74
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioSamplingRate:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 75
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioSamplingRate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 76
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioEncoder:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 77
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioEncoder:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 78
    :cond_e
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioChannels:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 79
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioChannels:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 81
    :cond_f
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public setAudioChannels(I)V
    .locals 1

    .prologue
    .line 148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioChannels:Ljava/lang/Integer;

    .line 149
    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 1

    .prologue
    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioEncoder:Ljava/lang/Integer;

    .line 153
    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 1

    .prologue
    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioEncodingBitRate:Ljava/lang/Integer;

    .line 157
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 1

    .prologue
    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioSamplingRate:Ljava/lang/Integer;

    .line 161
    return-void
.end method

.method public setAudioSource(I)V
    .locals 1

    .prologue
    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mAudioSource:Ljava/lang/Integer;

    .line 165
    return-void
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/camera/MediaRecorderParameters;->mCamera:Landroid/hardware/Camera;

    .line 169
    return-void
.end method

.method public setMaxDuration(I)V
    .locals 1

    .prologue
    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mMaxDuration:Ljava/lang/Integer;

    .line 173
    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 1

    .prologue
    .line 176
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mMaxFileSize:Ljava/lang/Long;

    .line 177
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 1

    .prologue
    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mOrientation:Ljava/lang/Integer;

    .line 181
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/camera/MediaRecorderParameters;->mOutputFile:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setOutputFormat(I)V
    .locals 1

    .prologue
    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mOutputFormat:Ljava/lang/Integer;

    .line 189
    return-void
.end method

.method public setVideoEncoder(I)V
    .locals 1

    .prologue
    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoEncoder:Ljava/lang/Integer;

    .line 193
    return-void
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 1

    .prologue
    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoEncodingBitRate:Ljava/lang/Integer;

    .line 197
    return-void
.end method

.method public setVideoFrameRate(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    .line 202
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 204
    iget-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 206
    aget v0, v1, v5

    mul-int/lit16 v2, p1, 0x3e8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v2, v1, v6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 208
    const-string v2, "MediaRecorderParameters"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVideoFrameRate() mVideoFrameRate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Min:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v1, v1, v6

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",resetVideoFrameRate"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 213
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoFrameRate:Ljava/lang/Integer;

    .line 214
    return-void

    .line 203
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public setVideoSize(Lcom/htc/camera/imaging/Size;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoSize:Lcom/htc/camera/imaging/Size;

    .line 218
    return-void
.end method

.method public setVideoSource(I)V
    .locals 1

    .prologue
    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/MediaRecorderParameters;->mVideoSource:Ljava/lang/Integer;

    .line 222
    return-void
.end method
