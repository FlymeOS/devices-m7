.class public Lcom/htc/camera/CameraController$SettingInfo;
.super Ljava/lang/Object;
.source "CameraController.java"


# instance fields
.field private current_value:I

.field private default_value:I

.field private max_value:I

.field private min_value:I

.field private step:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2234
    iput v1, p0, Lcom/htc/camera/CameraController$SettingInfo;->min_value:I

    .line 2236
    iput v1, p0, Lcom/htc/camera/CameraController$SettingInfo;->max_value:I

    .line 2238
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/CameraController$SettingInfo;->step:F

    .line 2240
    iput v1, p0, Lcom/htc/camera/CameraController$SettingInfo;->default_value:I

    .line 2242
    iput v1, p0, Lcom/htc/camera/CameraController$SettingInfo;->current_value:I

    .line 2247
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 2254
    iget v0, p0, Lcom/htc/camera/CameraController$SettingInfo;->max_value:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 2250
    iget v0, p0, Lcom/htc/camera/CameraController$SettingInfo;->min_value:I

    return v0
.end method

.method public setCurrent(I)V
    .locals 0

    .prologue
    .line 2286
    iput p1, p0, Lcom/htc/camera/CameraController$SettingInfo;->current_value:I

    .line 2287
    return-void
.end method

.method public setDefault(I)V
    .locals 0

    .prologue
    .line 2282
    iput p1, p0, Lcom/htc/camera/CameraController$SettingInfo;->default_value:I

    .line 2283
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .prologue
    .line 2274
    iput p1, p0, Lcom/htc/camera/CameraController$SettingInfo;->max_value:I

    .line 2275
    return-void
.end method

.method public setMin(I)V
    .locals 0

    .prologue
    .line 2270
    iput p1, p0, Lcom/htc/camera/CameraController$SettingInfo;->min_value:I

    .line 2271
    return-void
.end method

.method public setStep(F)V
    .locals 0

    .prologue
    .line 2278
    iput p1, p0, Lcom/htc/camera/CameraController$SettingInfo;->step:F

    .line 2279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/camera/CameraController$SettingInfo;->min_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/camera/CameraController$SettingInfo;->max_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", step: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/camera/CameraController$SettingInfo;->step:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/camera/CameraController$SettingInfo;->default_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/camera/CameraController$SettingInfo;->current_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2295
    return-object v0
.end method
